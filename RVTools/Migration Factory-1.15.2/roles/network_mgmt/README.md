<!-- STATIC CONTENT START
Use this section for adding additional content to the README
This will not be overwritten by Docsible -->
# 📃 Role overview


<!-- STATIC CONTENT END -->
<!-- Everything below will be overwritten by Docsible -->
<!-- DOCSIBLE START -->
## network_mgmt

```
Role belongs to infra/openshift_virtualization_migration
Namespace - infra
Collection - openshift_virtualization_migration
```

Description: Management of network related components.

| Field                | Value           |
|--------------------- |-----------------|
| Readme update        | 18/03/2025 |






### Defaults

**These are static variables with lower priority**

#### File: defaults/main.yml

| Var          | Type         | Value       |Choices    |Required    | Title       |
|--------------|--------------|-------------|-------------|-------------|-------------|
| [network_mgmt_openshift_node_network_ports](defaults/main.yml#L2)   | list   | `[]` |  n/a  |   n/a  |  n/a |
| [network_mgmt_port_is_existing_bond](defaults/main.yml#L3)   | bool   | `False` |  n/a  |   n/a  |  n/a |
| [network_mgmt_vcenter_dvswitch](defaults/main.yml#L5)   | str   | `` |  n/a  |   n/a  |  n/a |
| [network_mgmt_vcenter_datacenter](defaults/main.yml#L6)   | str   | `` |  n/a  |   n/a  |  n/a |
| [network_mgmt_openshift_network_bridge_mode](defaults/main.yml#L8)   | str   | `linux-bridge` |  n/a  |   n/a  |  n/a |
| [network_mgmt_use_default_ovn_bridge](defaults/main.yml#L9)   | bool   | `False` |  n/a  |   n/a  |  n/a |
| [network_mgmt_openshift_network_bond_mode](defaults/main.yml#L15)   | str   | `802.3ad` |  n/a  |   n/a  |  n/a |
| [network_mgmt_openshift_network_supported_bond_modes](defaults/main.yml#L17)   | list   | `['802.3ad', 'active-backup', 'balance-xor']` |  n/a  |   n/a  |  n/a |
| [network_mgmt_nncp_max_unavailable](defaults/main.yml#L21)   | int   | `3` |  n/a  |   n/a  |  n/a |
| [network_mgmt_nncp_nodeselector](defaults/main.yml#L25)   | dict   | `{'node-role.kubernetes.io/worker': ''}` |  n/a  |   n/a  |  n/a |
| [network_mgmt_nncp_name_prefix](defaults/main.yml#L27)   | str   | `vs-` |  n/a  |   n/a  |  n/a |
| [network_mgmt_nad_namespace](defaults/main.yml#L28)   | str   | `default` |  n/a  |   n/a  |  n/a |
| [network_mgmt_nad_name_prefix](defaults/main.yml#L32)   | str   | `net-` |  n/a  |   n/a  |  n/a |
| [network_mgmt_manual_bond_name](defaults/main.yml#L34)   | str   | `` |  n/a  |   n/a  |  n/a |
| [network_mgmt_manual_bridge_name](defaults/main.yml#L35)   | str   | `vm-bridge` |  n/a  |   n/a  |  n/a |
| [network_mgmt_manual_localnet_name](defaults/main.yml#L36)   | str   | `` |  n/a  |   n/a  |  n/a |
| [network_mgmt_manual_nad_list](defaults/main.yml#L37)   | list   | `[]` |  n/a  |   n/a  |  n/a |





### Tasks


#### File: tasks/automatic.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| automatic ¦ Validate required variables | ansible.builtin.assert | False |
| automatic ¦ Validate supported bonding mode | ansible.builtin.assert | True |
| automatic ¦ Include tasks from gather_networks.yml | ansible.builtin.include_tasks | False |
| automatic ¦ Set the switches and portgroups to migrate | ansible.builtin.set_fact | False |
| automatic ¦ Include tasks from create_nncp.yml | ansible.builtin.include_tasks | False |
| automatic ¦ Include tasks from create_nad.yml | ansible.builtin.include_tasks | False |

#### File: tasks/create_nad.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| create_nad ¦ "DEBUG nad Template" | ansible.builtin.debug | True |
| create_nad ¦ Apply NetworkAttachmentDefinitions | redhat.openshift.k8s | True |

#### File: tasks/create_nncp.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| create_nncp ¦ DEBUG nncp Template | ansible.builtin.debug | True |
| create_nncp ¦ Apply NodeNetworkConfigurationPolicy | redhat.openshift.k8s | True |

#### File: tasks/gather_networks.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| gather_networks ¦ Gather all registered dvswitch | community.vmware.vmware_dvswitch_info | False |
| gather_networks ¦ Get info for all dVSwitch Port Groups | community.vmware.vmware_dvs_portgroup_info | False |

#### File: tasks/main.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| Use automatic mode | ansible.builtin.include_tasks | True |
| Use manual mode | ansible.builtin.include_tasks | True |

#### File: tasks/manual.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| manual ¦ Validate network_mgmt_manual_nad_list | ansible.builtin.assert | False |
| manual ¦ Validate supported bonding mode if also creating bond | ansible.builtin.assert | True |
| manual ¦ Validate ovs-bridge mode | ansible.builtin.assert | True |
| manual ¦ Validate linux-bridge | ansible.builtin.assert | False |
| manual ¦ Apply NodeNetworkConfigurationPolicy | redhat.openshift.k8s | True |
| manual ¦ Validate access port | ansible.builtin.assert | True |
| manual ¦ Validate trunk ports | ansible.builtin.assert | True |
| manual ¦ Apply NetworkAttachmentDefinitions | redhat.openshift.k8s | False |




## Playbook

```yml
---
- name: Test
  hosts: localhost
  remote_user: root
  roles:
    - network_mgmt
...

```


## Author Information
Kyle Button

#### License

GPL-3.0-only

#### Minimum Ansible Version

2.15.0

#### Platforms

No platforms specified.
<!-- DOCSIBLE END -->