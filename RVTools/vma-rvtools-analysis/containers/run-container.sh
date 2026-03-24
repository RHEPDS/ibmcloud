#/bin/bash

IMAGE_NAME=rvtools-virt-analysis

if [[ $(uname) == 'Linux' ]]; then
    if [[ -x /usr/bin/podman ]]; then
        PODMAN=/usr/bin/podman

    else
        echo "Install podman to continue"
        exit

    fi

elif [[ $(uname) == 'Darwin' ]]; then
    if [[ -x /usr/local/bin/podman ]]; then
        PODMAN=/usr/local/bin/podman

    elif [[ -x /opt/podman/bin/podman ]]; then
        PODMAN=/opt/podman/bin/podman

    else
        echo "Install podman to continue"
        exit

    fi

else
  echo "Unsupported OS"
  exit

fi


if [ $# -eq 0 ]; then
    echo "Available builds:"
    for f in Containerfile*; do
        type="${f#*-}"
        echo -e "\t* ${type:-full}"
    done
    read -p "Which type are you building? : " ans
    cfile="Containerfile-${ans}"
  elif [[ "${1}" =~ "Containerfile-" ]]; then
    cfile="${1}"
  else
    cfile="Containerfile-${1}"
fi


if [ ! -f "${cfile:-unset}" ]; then
    echo "Cannot find Containerfile '${cfile}'"
    exit 2
fi

IMAGE_NAME="${IMAGE_NAME}-${cfile/Containerfile-/}"
cd ..
# Build container image
$PODMAN build -t ${IMAGE_NAME} -f containers/${cfile} .

# Ensure container doesnt already exist
${PODMAN} ps -a | grep ${IMAGE_NAME} && ${PODMAN} stop ${IMAGE_NAME} && ${PODMAN} rm ${IMAGE_NAME}

# Start container
$PODMAN run --rm -p 8888:8888 -v $(pwd)/data:/app/data:z --name ${IMAGE_NAME} localhost/${IMAGE_NAME}
