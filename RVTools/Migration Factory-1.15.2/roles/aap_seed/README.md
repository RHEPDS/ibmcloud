<!-- STATIC CONTENT START
Use this section for adding additional content to the README
This will not be overwritten by Docsible -->
# 📃 Role overview


<!-- STATIC CONTENT END -->
<!-- Everything below will be overwritten by Docsible -->
<!-- DOCSIBLE START -->
## aap_seed

```
Role belongs to infra/openshift_virtualization_migration
Namespace - infra
Collection - openshift_virtualization_migration
```

Description: Populates an Ansible Automation Platform instance.

| Field                | Value           |
|--------------------- |-----------------|
| Readme update        | 18/03/2025 |






### Defaults

**These are static variables with lower priority**

#### File: defaults/main.yml

| Var          | Type         | Value       |Choices    |Required    | Title       |
|--------------|--------------|-------------|-------------|-------------|-------------|
| [aap_seed_secure_logging](defaults/main.yml#L2)   | str   | `{{ secure_logging ¦ default(true) }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_migration_hub](defaults/main.yml#L3)   | list   | `[]` |  n/a  |   n/a  |  n/a |
| [aap_seed_aap_namespace](defaults/main.yml#L4)   | str   | `{{ aap_namespace }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_aap_channel](defaults/main.yml#L5)   | str   | `{{ aap_channel }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_aap_instance_name](defaults/main.yml#L6)   | str   | `{{ aap_instance_name }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_aap_org_name](defaults/main.yml#L7)   | str   | `{{ aap_org_name }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_controller_username](defaults/main.yml#L8)   | str   | `{{ controller_username ¦ default(aap_username) ¦ default(lookup('ansible.builtin.env', 'CONTROLLER_USERNAME')) }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_controller_password](defaults/main.yml#L9)   | str   | `{{ controller_password ¦ default(aap_password) ¦ default(lookup('ansible.builtin.env', 'CONTROLLER_PASSWORD')) }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_controller_hostname](defaults/main.yml#L10)   | str   | `{{ controller_hostname ¦ default(aap_hostname) ¦ default(lookup('ansible.builtin.env', 'CONTROLLER_HOSTNAME')) }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_controller_validate_certs](defaults/main.yml#L11)   | str   | `{{ controller_validate_certs ¦ default(aap_validate_certs) ¦ default(lookup('ansible.builtin.env', 'CONTROLLER_VERIFY_SSL')) }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_cac_collection](defaults/main.yml#L12)   | str   | `{{ 'infra.controller_configuration' if aap_version is defined and aap_version is version('2.5', '<') else 'infra.aap_configuration' }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_controller_organizations_var](defaults/main.yml#L13)   | str   | `{{ 'controller_organizations' if aap_version is defined and aap_version is version('2.5', '<') else 'aap_organizations' }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_controller_configuration_async_retries](defaults/main.yml#L16)   | int   | `60` |  n/a  |   n/a  |  n/a |
| [aap_seed_controller_dependency_check](defaults/main.yml#L17)   | bool   | `False` |  n/a  |   n/a  |  n/a |
| [aap_seed_aap_inventory](defaults/main.yml#L20)   | str   | `openshift_virtualization_migration` |  n/a  |   n/a  |  n/a |
| [aap_seed_aap_version](defaults/main.yml#L21)   | str   | `{{ aap_version ¦ default(2.5) }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_aap_execution_environment](defaults/main.yml#L22)   | str   | `{{ aap_execution_environment }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_aap_execution_environment_image](defaults/main.yml#L23)   | str   | `{{ aap_execution_environment_image }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_aap_project](defaults/main.yml#L24)   | str   | `{{ aap_project }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_aap_project_branch](defaults/main.yml#L25)   | str   | `{{ aap_project_branch }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_aap_project_repo](defaults/main.yml#L26)   | str   | `{{ aap_project_repo }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_automation_hub_certified_url](defaults/main.yml#L27)   | str   | `{{ automation_hub_certified_url }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_automation_hub_certified_auth_url](defaults/main.yml#L28)   | str   | `{{ automation_hub_certified_auth_url }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_automation_hub_certified_token](defaults/main.yml#L29)   | str   | `{{ automation_hub_certified_token }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_automation_hub_validated_url](defaults/main.yml#L30)   | str   | `{{ automation_hub_validated_url }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_automation_hub_validated_auth_url](defaults/main.yml#L31)   | str   | `{{ automation_hub_validated_auth_url }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_automation_hub_validated_token](defaults/main.yml#L32)   | str   | `{{ automation_hub_validated_token }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_git_username](defaults/main.yml#L34)   | str   | `{{ (git_username is defined) ¦ ansible.builtin.ternary(git_username, '') }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_git_password](defaults/main.yml#L35)   | str   | `{{ (git_password is defined) ¦ ansible.builtin.ternary(git_password, '') }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_git_ssh_private_key](defaults/main.yml#L36)   | str   | `{{ (git_ssh_private_key is defined) ¦ ansible.builtin.ternary(git_ssh_private_key, '') }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_git_ssh_key_passphrase](defaults/main.yml#L37)   | str   | `{{ (git_ssh_key_passphrase is defined) ¦ ansible.builtin.ternary(git_ssh_key_passphrase, '') }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_vmware_host](defaults/main.yml#L40)   | str   | `{{ vmware_host }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_vmware_user](defaults/main.yml#L41)   | str   | `{{ vmware_user }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_vmware_password](defaults/main.yml#L42)   | str   | `{{ vmware_password }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_vmware_validate_certs](defaults/main.yml#L43)   | str   | `{{ vmware_validate_certs }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_vmware_cacert](defaults/main.yml#L44)   | str   | `{{ vmware_cacert }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_vmware_context_path](defaults/main.yml#L45)   | str   | `{{ vmware_context_path }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_container_host](defaults/main.yml#L46)   | str   | `{{ container_host }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_container_password](defaults/main.yml#L47)   | str   | `{{ container_password }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_container_username](defaults/main.yml#L48)   | str   | `{{ container_username }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_container_verify_ssl](defaults/main.yml#L49)   | str   | `{{ container_verify_ssl ¦ default(false) }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_aap_job_template_extra_vars](defaults/main.yml#L50)   | str   | `{{ aap_job_template_extra_vars ¦ default('{}') }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_migration_targets](defaults/main.yml#L51)   | str   | `{{ migration_targets ¦ default([]) }}` |  n/a  |   n/a  |  n/a |
| [aap_seed_operator_management_hub](defaults/main.yml#L54)   | list   | `['acm', 'oadp', 'far', 'nho']` |  n/a  |   n/a  |  n/a |
| [aap_seed_operator_management_spoke](defaults/main.yml#L61)   | list   | `['mtv', 'cnv', 'oadp', 'far', 'nmstate', 'nho']` |  n/a  |   n/a  |  n/a |
| [aap_seed_controller_credentials](defaults/main.yml#L69)   | list   | `[{'name': 'Red Hat Automation Hub Certified', 'description': 'Red Hat Automation Hub Certified Credential', 'organization': '{{ aap_seed_aap_org_name }}', 'credential_type': 'Ansible Galaxy/Automation Hub API Token', 'inputs': {'url': '{{ aap_seed_automation_hub_certified_url }}', 'auth_url': '{{ aap_seed_automation_hub_certified_auth_url }}', 'token': '{{ aap_seed_automation_hub_certified_token }}'}}, {'name': 'Red Hat Automation Hub Validated', 'description': 'Red Hat Automation Hub Validated Credential', 'organization': '{{ aap_seed_aap_org_name }}', 'credential_type': 'Ansible Galaxy/Automation Hub API Token', 'inputs': {'url': '{{ aap_seed_automation_hub_validated_url }}', 'auth_url': '{{ aap_seed_automation_hub_validated_auth_url }}', 'token': '{{ aap_seed_automation_hub_validated_token }}'}}, {'name': 'Quay', 'description': 'Quay credential', 'organization': '{{ aap_seed_aap_org_name }}', 'credential_type': 'Container Registry', 'inputs': {'host': '{{ aap_seed_container_host }}', 'password': '{{ aap_seed_container_password }}', 'username': '{{ aap_seed_container_username }}', 'verify_ssl': '{{ aap_seed_container_verify_ssl }}'}}]` |  n/a  |   n/a  |  n/a |
| [aap_seed_controller_credential_types](defaults/main.yml#L96)   | list   | `[{'name': 'openshift_virtualization_migration_cac', 'description': 'OpenShift Virtualization Migration Config-as-Code Data structure', 'organization': '{{ aap_seed_aap_org_name }}', 'kind': 'cloud', 'inputs': {'fields': [{'id': 'aap_version', 'type': 'string', 'label': 'AAP Version'}, {'id': 'aap_instance_name', 'type': 'string', 'label': 'AAP Instance Name'}, {'id': 'aap_execution_environment', 'type': 'string', 'label': 'AAP Execution Environment'}, {'id': 'aap_org_name', 'type': 'string', 'label': 'AAP Org Name'}, {'id': 'aap_namespace', 'type': 'string', 'label': 'AAP Namespace'}, {'id': 'aap_project', 'type': 'string', 'label': 'AAP Project Name'}, {'id': 'aap_inventory', 'type': 'string', 'label': 'AAP Inventory'}, {'id': 'aap_job_template_extra_vars', 'type': 'string', 'label': 'Job Template Extra Variables', 'secret': True}, {'id': 'migration_targets', 'type': 'string', 'label': 'Migration Targets', 'multiline': True, 'secret': True}], 'required': ['aap_version', 'aap_instance_name', 'aap_execution_environment', 'aap_org_name', 'aap_project', 'aap_inventory']}, 'injectors': {'extra_vars': {'aap_version': '{% raw %}{  { aap_version }}{% endraw %}', 'aap_instance_name': '{% raw %}{  { aap_instance_name }}{% endraw %}', 'aap_execution_environment': '{% raw %}{  { aap_execution_environment }}{% endraw %}', 'aap_org_name': '{% raw %}{  { aap_org_name }}{% endraw %}', 'aap_project': '{% raw %}{  { aap_project }}{% endraw %}', 'aap_inventory': '{% raw %}{  { aap_inventory }}{% endraw %}', 'aap_namespace': '{% raw %}{  { aap_namespace }}{% endraw %}', 'aap_job_template_extra_vars': '{% raw %}{  { aap_job_template_extra_vars }}{% endraw %}', 'provided_migration_targets': '{% raw %}{  { migration_targets }}{% endraw %}'}}}, {'name': 'VMware Migration Target', 'description': 'Migration Target for VMware', 'organization': '{{ aap_seed_aap_org_name }}', 'kind': 'cloud', 'inputs': {'fields': [{'id': 'name', 'type': 'string', 'label': 'Target Name'}, {'id': 'host', 'type': 'string', 'label': 'VCenter Host'}, {'id': 'username', 'type': 'string', 'label': 'Username'}, {'id': 'password', 'type': 'string', 'label': 'Password', 'secret': True}, {'id': 'insecure_ssl', 'type': 'boolean', 'label': 'Skip Validate VMware Certificate Verification'}, {'id': 'cacert', 'type': 'string', 'label': 'VMware CA Certificate', 'multiline': True}, {'id': 'context_path', 'type': 'string', 'label': 'VMware Context Path'}, {'id': 'credentials_secret_ref', 'type': 'string', 'label': 'Credentials Secret Reference'}, {'id': 'vddk_init_image', 'type': 'string', 'label': 'VDDK Init Image'}, {'id': 'vddk_init_image_username', 'type': 'string', 'label': 'VDDK Init Image Username'}, {'id': 'vddk_init_image_password', 'type': 'string', 'label': 'VDDK Init Image Password', 'secret': True}, {'id': 'vddk_init_image_credentials_secret', 'type': 'string', 'label': 'VDDK Init Image Credentials Secret'}, {'id': 'provider_name', 'type': 'string', 'label': 'Provider source'}], 'required': ['name', 'host', 'provider_name']}, 'injectors': {'extra_vars': {'vmware_target_name': '{% raw %}{  { name }}{% endraw %}', 'vmware_insecure_ssl': '{% raw %}{  { insecure_ssl }}{% endraw %}', 'vmware_cacert': '{% raw %}{  { cacert }}{% endraw %}', 'vmware_context_path': '{% raw %}{  { context_path }}{% endraw %}', 'vmware_credentials_secret_ref': '{% raw %}{  { credentials_secret_ref }}{% endraw %}', 'vmware_vddk_init_image': '{% raw %}{  { vddk_init_image }}{% endraw %}', 'vmware_vddk_init_image_username': '{% raw %}{  { vddk_init_image_username }}{% endraw %}', 'vmware_vddk_init_image_password': '{% raw %}{  { vddk_init_image_password }}{% endraw %}', 'vmware_vddk_init_image_credentials_secret': '{% raw %}{  { vddk_init_image_credentials_secret }}{% endraw %}', 'provider': '{% raw %}{  { provider_name }}{% endraw %}'}, 'env': {'VMWARE_HOST': '{% raw %}{  { host }}{% endraw %}', 'VMWARE_USER': '{% raw %}{  { username }}{% endraw %}', 'VMWARE_PASSWORD': '{% raw %}{  { password }}{% endraw %}'}}}, {'name': 'Ovirt Migration Target', 'description': 'Migration Target for Ovirt', 'organization': '{{ aap_seed_aap_org_name }}', 'kind': 'cloud', 'inputs': {'fields': [{'id': 'name', 'type': 'string', 'label': 'Target Name'}, {'id': 'host', 'type': 'string', 'label': 'Ovirt Host'}, {'id': 'username', 'type': 'string', 'label': 'Username'}, {'id': 'password', 'type': 'string', 'label': 'Password', 'secret': True}, {'id': 'insecure_ssl', 'type': 'boolean', 'label': 'Skip Validate Ovirt Certificate Verification'}, {'id': 'cacert', 'type': 'string', 'label': 'Ovirt CA Certificate', 'multiline': True}, {'id': 'context_path', 'type': 'string', 'label': 'Ovirt Context Path'}, {'id': 'credentials_secret_ref', 'type': 'string', 'label': 'Credentials Secret Reference'}, {'id': 'provider_name', 'type': 'string', 'label': 'Provider source'}], 'required': ['name', 'host', 'provider_name']}, 'injectors': {'extra_vars': {'ovirt_target_name': '{% raw %}{  { name }}{% endraw %}', 'ovirt_insecure_ssl': '{% raw %}{  { insecure_ssl }}{% endraw %}', 'ovirt_cacert': '{% raw %}{  { cacert }}{% endraw %}', 'ovirt_context_path': '{% raw %}{  { context_path }}{% endraw %}', 'ovirt_credentials_secret_ref': '{% raw %}{  { credentials_secret_ref }}{% endraw %}', 'provider': '{% raw %}{  { provider_name }}{% endraw %}'}, 'env': {'OVIRT_HOST': '{% raw %}{  { host }}{% endraw %}', 'OVIRT_USER': '{% raw %}{  { username }}{% endraw %}', 'OVIRT_PASSWORD': '{% raw %}{  { password }}{% endraw %}'}}}]` |  n/a  |   n/a  |  n/a |
| [aap_seed_controller_organizations](defaults/main.yml#L270)   | list   | `[{'name': '{{ aap_seed_aap_org_name }}', 'galaxy_credentials': ['Red Hat Automation Hub Certified', 'Red Hat Automation Hub Validated', 'Ansible Galaxy']}]` |  n/a  |   n/a  |  n/a |
| [aap_seed_controller_projects](defaults/main.yml#L276)   | list   | `[{'name': '{{ aap_seed_aap_project }}', 'organization': '{{ aap_seed_aap_org_name }}', 'scm_branch': '{{ aap_seed_aap_project_branch }}', 'scm_clean': 'no', 'scm_delete_on_update': 'no', 'scm_type': 'git', 'scm_update_on_launch': 'yes', 'scm_url': '{{ aap_seed_aap_project_repo }}', 'credential': 'GitLab', 'local_path': 'infra/openshift_virtualization_migration'}]` |  n/a  |   n/a  |  n/a |
| [aap_seed_controller_execution_environments](defaults/main.yml#L287)   | list   | `[{'name': '{{ aap_seed_aap_execution_environment }}', 'image': '{{ aap_seed_aap_execution_environment_image }}', 'pull': 'always', 'credential': 'Quay'}]` |  n/a  |   n/a  |  n/a |
| [aap_seed_controller_inventories](defaults/main.yml#L292)   | list   | `[{'name': '{{ aap_seed_aap_inventory }}', 'organization': '{{ aap_seed_aap_org_name }}'}]` |  n/a  |   n/a  |  n/a |
| [aap_seed_controller_hosts](defaults/main.yml#L295)   | list   | `[{'name': 'localhost', 'inventory': '{{ aap_seed_aap_inventory }}', 'variables': {'ansible_connection': 'local', 'ansible_python_interpreter': '{  { ansible_playbook_python }}'}}]` |  n/a  |   n/a  |  n/a |
| [aap_seed_controller_templates](defaults/main.yml#L301)   | list   | `[{'name': 'OpenShift Virtualization Migration - Migrate', 'organization': '{{ aap_seed_aap_org_name }}', 'project': '{{ aap_seed_aap_project }}', 'job_type': 'run', 'ask_variables_on_launch': True, 'extra_vars': '{{ aap_seed_aap_job_template_extra_vars }}', 'playbook': 'playbooks/mtv_migrate.yml', 'inventory': '{{ aap_seed_aap_inventory }}', 'execution_environment': '{{ aap_seed_aap_execution_environment }}', 'ask_credential_on_launch': True}]` |  n/a  |   n/a  |  n/a |
| [aap_seed_controller_workflow_launch_jobs](defaults/main.yml#L316)   | NoneType   | `None` |  n/a  |   n/a  |  n/a |





### Tasks


#### File: tasks/_build_credentials.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| _build_credentials ¦ Create migration factory api token for {{ _mf_host }} | ansible.builtin.include_role | True |
| _build_credentials ¦ Set openshift_api_key var on {{ _mf_host }} | ansible.builtin.set_fact | True |
| _build_credentials ¦ Build migration targets | ansible.builtin.set_fact | True |
| _build_credentials ¦ Build Migration Factory CaC Credential for {{ _mf_host }} | ansible.builtin.set_fact | True |
| _build_credentials ¦ Build kubeconfig for {{ _mf_host }} | ansible.builtin.set_fact | False |

#### File: tasks/_build_job_templates.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| _build_job_templates ¦ Build list of operators to install | block | False |
| _build_job_templates ¦ Clear operator list | ansible.builtin.set_fact | False |
| _build_job_templates ¦ Add hub operators | ansible.builtin.set_fact | True |
| _build_job_templates ¦ Add spoke operators | ansible.builtin.set_fact | True |
| _build_job_templates ¦ Build Operator Job Template | ansible.builtin.set_fact | False |
| _build_job_templates ¦ Build MTV Job Templates | ansible.builtin.include_tasks | True |

#### File: tasks/_mtv_job_templates.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| _mtv_job_templates ¦ Configure VMWare MTV Job Template | ansible.builtin.set_fact | True |
| _mtv_job_templates ¦ Configure Ovirt MTV Job Template | ansible.builtin.set_fact | True |

#### File: tasks/_mtv_workflow_job_templates.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| _mtv_workflow_job_templates ¦ Build MTV Target Workflows for {{ _mf_host }} | ansible.builtin.set_fact | False |
| _mtv_workflow_job_templates ¦ Get list of MTV Target workflow names | ansible.builtin.set_fact | False |
| _mtv_workflow_job_templates ¦ Build MTV workflow | ansible.builtin.set_fact | False |

#### File: tasks/credentials.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| credentials ¦ Set credentials variable | ansible.builtin.set_fact | False |
| credentials ¦ Build AAP Credential | ansible.builtin.set_fact | False |
| credentials ¦ Build Git Credential | ansible.builtin.set_fact | False |
| credentials ¦ Build Migration Target Credentials | ansible.builtin.set_fact | True |
| credentials ¦ Build required credentials | ansible.builtin.include_tasks | False |

#### File: tasks/job_templates.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| job_templates ¦ Set templates variable | ansible.builtin.set_fact | False |
| job_templates ¦ Build Operator Install Job Templates | ansible.builtin.include_tasks | False |

#### File: tasks/main.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| Set controller_configuration vars | ansible.builtin.set_fact | False |
| Build Credentials | ansible.builtin.include_tasks | False |
| Build Job Templates | ansible.builtin.include_tasks | False |
| Build Workflows | ansible.builtin.include_tasks | False |
| Wait for API to become available | ansible.builtin.uri | False |
| Call dispatch role | ansible.builtin.include_role | False |

#### File: tasks/workflows.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| workflows ¦ Set workflow variables | ansible.builtin.set_fact | False |
| workflows ¦ Build Operator Workflows | ansible.builtin.set_fact | False |
| workflows ¦ Build MTV Target Workflows | ansible.builtin.include_tasks | False |
| workflows ¦ Build MTV Worklfow | ansible.builtin.set_fact | False |
| workflows ¦ Build Migration Factory Worklfow | ansible.builtin.set_fact | False |







## Author Information
Matthew Taylor

#### License

GPL-3.0-only

#### Minimum Ansible Version

2.15.0

#### Platforms

No platforms specified.
<!-- DOCSIBLE END -->