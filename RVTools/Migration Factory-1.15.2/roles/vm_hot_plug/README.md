<!-- STATIC CONTENT START
Use this section for adding additional content to the README
This will not be overwritten by Docsible -->
# 📃 Role overview


<!-- STATIC CONTENT END -->
<!-- Everything below will be overwritten by Docsible -->
<!-- DOCSIBLE START -->
## vm_hot_plug

```
Role belongs to infra/openshift_virtualization_migration
Namespace - infra
Collection - openshift_virtualization_migration
```

Description: Hot Plug Virtual Machine resources.

| Field                | Value           |
|--------------------- |-----------------|
| Readme update        | 18/03/2025 |






### Defaults

**These are static variables with lower priority**

#### File: defaults/main.yml

| Var          | Type         | Value       |Choices    |Required    | Title       |
|--------------|--------------|-------------|-------------|-------------|-------------|
| [vm_hot_plug_request](defaults/main.yml#L4)   | list   | `[]` |  n/a  |   n/a  |  n/a |
| [vm_hot_plug_openshift_host](defaults/main.yml#L18)   | str   | `{{ openshift_host }}` |  n/a  |   n/a  |  n/a |
| [vm_hot_plug_api_key](defaults/main.yml#L19)   | str   | `{{ openshift_api_key }}` |  n/a  |   n/a  |  n/a |
| [vm_hot_plug_openshift_verify_ssl](defaults/main.yml#L20)   | str   | `{{ openshift_verify_ssl }}` |  n/a  |   n/a  |  n/a |
| [vm_hot_plug_kubevirt_api_version](defaults/main.yml#L21)   | str   | `kubevirt.io/v1` |  n/a  |   n/a  |  n/a |





### Tasks


#### File: tasks/_compute.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| _compute ¦ Processing Compute Change | ansible.builtin.set_fact | True |

#### File: tasks/_process_vm.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| _process_vm ¦ Initialize VM Patch Variable | ansible.builtin.set_fact | False |
| _process_vm ¦ Process Compute Hot Plug | ansible.builtin.include_tasks | True |
| _process_vm ¦ Update VirtualMachine | redhat.openshift_virtualization.kubevirt_vm | True |
| _process_vm ¦ Query VM for Updated Configuration | kubernetes.core.k8s_info | False |
| _process_vm ¦ Restart the machine | block | True |
| _process_vm ¦ Restart the VirtualMachine | ansible.builtin.include_role | False |
| _process_vm ¦ Verify the VirtualMachine restarted | ansible.builtin.include_role | False |

#### File: tasks/main.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| Initialize Variables | ansible.builtin.set_fact | False |
| Invoke Collect VM Role | ansible.builtin.include_role | False |
| Process Hot Plug VM | ansible.builtin.include_tasks | False |




## Playbook

```yml
---
- name: Test
  hosts: localhost
  remote_user: root
  roles:
    - vm_hot_plug
...

```


## Author Information
Andrew Block

#### License

GPL-3.0-only

#### Minimum Ansible Version

2.15.0

#### Platforms

No platforms specified.
<!-- DOCSIBLE END -->