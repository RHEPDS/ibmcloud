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

# Build container image
$PODMAN build -t $IMAGE_NAME .

# Ensure container doesnt already exist
$PODMAN ps -a | grep $IMAGE_NAME && $PODMAN rm $IMAGE_NAME

# Start container
$PODMAN run --rm -p 8888:8888 -v $(pwd)/data:/app/data:z --name $IMAGE_NAME localhost/$IMAGE_NAME
