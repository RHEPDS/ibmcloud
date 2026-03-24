<!-- STATIC CONTENT START
Use this section for adding additional content to the README
This will not be overwritten by Docsible -->
# 📃 Role overview


<!-- STATIC CONTENT END -->
<!-- Everything below will be overwritten by Docsible -->
<!-- DOCSIBLE START -->
## operator_management

```
Role belongs to infra/openshift_virtualization_migration
Namespace - infra
Collection - openshift_virtualization_migration
```

Description: Management of OpenShift Operators.

| Field                | Value           |
|--------------------- |-----------------|
| Readme update        | 18/03/2025 |






### Defaults

**These are static variables with lower priority**

#### File: defaults/main.yml

| Var          | Type         | Value       |Choices    |Required    | Title       |
|--------------|--------------|-------------|-------------|-------------|-------------|
| [operator_management_catalogsources](defaults/main.yml#L4)   | dict   | `{}` |  n/a  |   n/a  |  n/a |
| [operator_management_default_operators](defaults/main.yml#L21)   | list   | `['mtv', 'cnv', 'acm', 'oadp', 'far', 'nmstate', 'nho']` |  n/a  |   n/a  |  n/a |
| [operator_management_default_mtv](defaults/main.yml#L30)   | dict   | `{'namespace': {'metadata': {'name': 'openshift-mtv'}}, 'operatorgroup': {'metadata': {'name': 'migration'}, 'spec': {'targetNamespaces': ['openshift-mtv']}}, 'subscription': {'spec': {'name': 'mtv-operator'}}, 'extra_resources': {'forkliftcontroller': {'apiVersion': 'forklift.konveyor.io/v1beta1', 'kind': 'ForkliftController', 'metadata': {'name': 'forklift-controller', 'namespace': 'openshift-mtv'}, 'spec': {'olm_managed': True}}}}` |  n/a  |   n/a  |  n/a |
| [operator_management_default_cnv](defaults/main.yml#L53)   | dict   | `{'namespace': {'metadata': {'name': 'openshift-cnv'}}, 'operatorgroup': {'metadata': {'name': 'kubevirt-hyperconverged-group'}, 'spec': {'targetNamespaces': ['openshift-cnv']}}, 'subscription': {'metadata': {'name': 'kubevirt-hyperconverged'}}, 'extra_resources': {'hyperconverged': {'apiVersion': 'hco.kubevirt.io/v1beta1', 'kind': 'HyperConverged', 'metadata': {'name': 'kubevirt-hyperconverged', 'namespace': 'openshift-cnv'}}}}` |  n/a  |   n/a  |  n/a |
| [operator_management_default_acm](defaults/main.yml#L73)   | dict   | `{'namespace': {'metadata': {'name': 'open-cluster-management'}}, 'operatorgroup': {'metadata': {'name': 'acm-operator'}, 'spec': {'targetNamespaces': ['open-cluster-management']}}, 'subscription': {'metadata': {'name': 'acm-operator'}, 'spec': {'name': 'advanced-cluster-management'}}, 'extra_resources': {'multiclusterhub': {'apiVersion': 'operator.open-cluster-management.io/v1', 'kind': 'MultiClusterHub', 'metadata': {'name': 'multiclusterhub', 'namespace': 'open-cluster-management', 'finalizers': ['finalizer.operator.open-cluster-management.io']}, 'spec': {'availabilityConfig': 'High', 'enableClusterBackup': False}}}}` |  n/a  |   n/a  |  n/a |
| [operator_management_default_oadp](defaults/main.yml#L101)   | dict   | `{'namespace': {'metadata': {'name': 'openshift-adp'}}, 'operatorgroup': {'metadata': {'name': 'redhat-oadp-operator-group'}, 'spec': {'targetNamespaces': ['openshift-adp']}}, 'subscription': {'metadata': {'name': 'redhat-oadp-operator-subscription'}, 'spec': {'name': 'redhat-oadp-operator'}}}` |  n/a  |   n/a  |  n/a |
| [operator_management_far](defaults/main.yml#L117)   | dict   | `{'namespace': {'metadata': {'name': 'openshift-workload-availability'}}, 'operatorgroup': {'metadata': {'name': 'openshift-workload-availability-operator-group'}}, 'subscription': {'metadata': {'name': 'fence-agents-remediation'}}}` |  n/a  |   n/a  |  n/a |
| [operator_management_default_nmstate](defaults/main.yml#L128)   | dict   | `{'namespace': {'metadata': {'name': 'openshift-nmstate'}}, 'operatorgroup': {'metadata': {'name': 'nmstate-operator-group'}, 'spec': {'targetNamespaces': ['openshift-nmstate']}}, 'subscription': {'metadata': {'name': 'kubernetes-nmstate-operator'}}, 'extra_resources': {'nmstate': {'apiVersion': 'nmstate.io/v1', 'kind': 'NMState', 'metadata': {'name': 'nmstate'}}}}` |  n/a  |   n/a  |  n/a |
| [operator_management_default_nho](defaults/main.yml#L148)   | dict   | `{'namespace': {'metadata': {'name': 'openshift-workload-availability'}}, 'operatorgroup': {'metadata': {'name': 'openshift-workload-availability-operator-group'}}, 'subscription': {'metadata': {'name': 'node-healthcheck-operator'}, 'spec': {'name': 'node-healthcheck-operator'}}}` |  n/a  |   n/a  |  n/a |
| [operator_management_catalog_sources](defaults/main.yml#L161)   | list   | `[{'name': 'redhat-marketplace2', 'source_type': 'grpc', 'display_name': 'Mirror to Red Hat Marketplace', 'image_path': 'internal-registry.example.com/operator:v1', 'priority': '-300', 'icon': {'base64data': '', 'mediatype': ''}, 'publisher': 'redhat', 'address': '', 'grpc_pod_config': "nodeSelector:\n  kubernetes.io/os: linux\n  node-role.kubernetes.io/master: ''\npriorityClassName: system-cluster-critical\nsecurityContextConfig: restricted\ntolerations:\n  - effect: NoSchedule\n    key: node-role.kubernetes.io/master\n    operator: Exists\n  - effect: NoExecute\n    key: node.kubernetes.io/unreachable\n    operator: Exists\n    tolerationSeconds: 120\n  - effect: NoExecute\n    key: node.kubernetes.io/not-ready\n    operator: Exists\n    tolerationSeconds: 120\n", 'registry_poll_interval': '10m'}]` |  n/a  |   n/a  |  n/a |





### Tasks


#### File: tasks/_operator_catalog_source_item.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| _operator_catalog_source_item ¦ Set Fact: {{ _catalogsource_item.key }} | ansible.builtin.set_fact | False |
| _operator_catalog_source_item ¦ Apply Resource {{ _catalogsource_item.key }} | redhat.openshift.k8s | False |

#### File: tasks/_operator_config_item.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| _operator_config_item ¦ Retrieve Operator name | ansible.builtin.set_fact | False |
| _operator_config_item ¦ Configure Resources | ansible.builtin.include_tasks | True |
| _operator_config_item ¦ Apply Extra Resources | redhat.openshift.k8s | True |

#### File: tasks/_operator_resource_item.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| _operator_resource_item ¦ Set Fact: {{ _operator_resource_name ¦ capitalize }} | ansible.builtin.set_fact | False |
| _operator_resource_item ¦ Configure Operator Subscription | block | True |
| _operator_resource_item ¦ Verify Operator Exists | ansible.builtin.assert | False |
| _operator_resource_item ¦ Verify Operator Channel Exists | ansible.builtin.assert | True |
| _operator_resource_item ¦ Set Operator channel when not defined | ansible.builtin.set_fact | False |
| _operator_resource_item ¦ Apply Resource {{ _operator_resource_name ¦ capitalize }} | redhat.openshift.k8s | False |
| _operator_resource_item ¦ Operator Installation Management | block | True |
| _operator_resource_item ¦ Obtain Related CSV Name | ansible.builtin.set_fact | False |
| _operator_resource_item ¦ Wait until InstallPlan is created: ({{ _resource.spec.name }}) | kubernetes.core.k8s_info | False |
| _operator_resource_item ¦ Get Installed CSV: ({{ _resource.spec.name }}) | kubernetes.core.k8s_info | False |
| _operator_resource_item ¦ Wait until CSV is installed: ({{ _resource.spec.name }}) | kubernetes.core.k8s_info | False |

#### File: tasks/main.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| Obtain List of PackageManifests | kubernetes.core.k8s_info | True |
| Disable default CatalogSources | redhat.openshift.k8s | True |
| Configure CatalogSources | ansible.builtin.include_tasks | False |
| Configure Operators | ansible.builtin.include_tasks | False |

#### File: tasks/node-health-check.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| node-health-check ¦ Create node-health-check operator namespace | redhat.openshift.k8s | False |
| node-health-check ¦ Create node-health-check operator group | redhat.openshift.k8s | False |
| node-health-check ¦ Create node-health-check operator subscription | redhat.openshift.k8s | False |
| node-health-check ¦ Create Self Node Remediation subscription | redhat.openshift.k8s | False |




## Playbook

```yml
---
- name: Test
  hosts: localhost
  remote_user: root
  roles:
    - operator_management
...

```


## Author Information
Vinny Valdez

#### License

GPL-3.0-only

#### Minimum Ansible Version

2.15.0

#### Platforms

No platforms specified.
<!-- DOCSIBLE END -->