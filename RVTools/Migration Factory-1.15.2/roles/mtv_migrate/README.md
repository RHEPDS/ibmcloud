<!-- STATIC CONTENT START
Use this section for adding additional content to the README
This will not be overwritten by Docsible -->
# 📃 Role overview


<!-- STATIC CONTENT END -->
<!-- Everything below will be overwritten by Docsible -->
<!-- DOCSIBLE START -->
## mtv_migrate

```
Role belongs to infra/openshift_virtualization_migration
Namespace - infra
Collection - openshift_virtualization_migration
```

Description: Migration of Virtual Machines from Source to Destination.

| Field                | Value           |
|--------------------- |-----------------|
| Readme update        | 18/03/2025 |




<details>
<summary><b>🧩 Argument Specifications in meta/argument_specs</b></summary>

#### Key: main
**Description**: MTV Migrate - Migrate VMs at scale


  - **mtv_migrate_default_namespace**
    - **Required**: false
    - **Type**: str
    - **Default**: openshift-mtv
    - **Description**: The default namespace to use if not specified
  
  
  

  - **mtv_migrate_migration_request**
    - **Required**: True
    - **Type**: dict
    - **Default**: none
    - **Description**: This is a dictionary with details of a migration plan to create and / or run
  
  
  
    

    - **mtv_namespace**
      - **Required**: false
      - **Type**: str
      - **Default**: openshift-mtv
      - **Description**: The namespace MTV is deployed in
  
  
  

    - **source_type**
      - **Required**: false
      - **Type**: str
      - **Default**: vsphere
      - **Description**: Source MTV Provider
  
  
  

    - **source**
      - **Required**: false
      - **Type**: str
      - **Default**: vmware
      - **Description**: Source containing VMs
  
  
  

    - **source_namespace**
      - **Required**: false
      - **Type**: str
      - **Default**: openshift-mtv
      - **Description**: Namespace the source provider is located
  
  
  

    - **destination**
      - **Required**: false
      - **Type**: str
      - **Default**: host
      - **Description**: Name of target to migrate VMs to
  
  
  

    - **destination_namespace**
      - **Required**: false
      - **Type**: str
      - **Default**: openshift-mtv
      - **Description**: Namespace the MTV destination provider is located
  
  
  

    - **destination_type**
      - **Required**: false
      - **Type**: str
      - **Default**: openshift
      - **Description**: Destination provider type
  
  
  

    - **vms_per_plan**
      - **Required**: false
      - **Type**: int
      - **Default**: 10
      - **Description**: Number of VMs to split into multiple plans
  
  
  

    - **split_plans**
      - **Required**: false
      - **Type**: bool
      - **Default**: False
      - **Description**: Determines whether to split into multiple plans
  
  
  

    - **plan_overrides**
      - **Required**: false
      - **Type**: dict
      - **Default**: none
      - **Description**: Config to apply at the plan level
  
  
  

    - **vm_overrides**
      - **Required**: false
      - **Type**: dict
      - **Default**: none
      - **Description**: Config to apply at to each VM
  
  
  

    - **target_namespace**
      - **Required**: false
      - **Type**: str
      - **Default**: openshift-mtv
      - **Description**: Namespace to create VMs in
  
  
  

    - **dry_run**
      - **Required**: false
      - **Type**: bool
      - **Default**: False
      - **Description**: Build the plans without applying them
  
  
  

    - **network_map**
      - **Required**: false
      - **Type**: str
      - **Default**: vmware-host
      - **Description**: Name of the network map to use
  
  
  

    - **network_map_namespace**
      - **Required**: false
      - **Type**: str
      - **Default**: openshift-mtv
      - **Description**: Namespace containing the network map
  
  
  

    - **storage_map**
      - **Required**: false
      - **Type**: str
      - **Default**: vmware-host
      - **Description**: Name of the storage map
  
  
  

    - **storage_map_namespace**
      - **Required**: false
      - **Type**: str
      - **Default**: openshift-mtv
      - **Description**: Namespace containing the storage map
  
  
  

    - **start_migration**
      - **Required**: false
      - **Type**: bool
      - **Default**: False
      - **Description**: Create migration resources for the created plan
  
  
  

    - **verify_plans_ready**
      - **Required**: false
      - **Type**: bool
      - **Default**: False
      - **Description**: Verify the plan is in a ready state
  
  
  

    - **verify_migrations_complete**
      - **Required**: false
      - **Type**: bool
      - **Default**: False
      - **Description**: Waits for migrations to complete
  
  
  

    - **plan_name**
      - **Required**: false
      - **Type**: str
      - **Default**: source_name-target_name-yyyyMMdd-HHmm
      - **Description**: Name of the migration plan
  
  
  

    - **vms**
      - **Required**: false
      - **Type**: list
      - **Default**: none
      - **Description**: Explicit list of VMs to migrate
  
  
  

    - **folders**
      - **Required**: false
      - **Type**: list
      - **Default**: none
      - **Description**: Explicit list of folders to migrate
  
  
  


  

  - **mtv_migrate_plan_base_name_annotation**
    - **Required**: false
    - **Type**: str
    - **Default**: infra.openshift-virtualization-migration/plan-name
    - **Description**: Label assigned to the MTV plan name
  
  
  

  - **mtv_migrate_default_source_type**
    - **Required**: false
    - **Type**: str
    - **Default**: vsphere
    - **Description**: Default source type for migrations
  
  
  

  - **mtv_migrate_default_source_target**
    - **Required**: false
    - **Type**: str
    - **Default**: vmware
    - **Description**: Default source target for migration
  
  
  

  - **mtv_migrate_default_destination_type**
    - **Required**: false
    - **Type**: str
    - **Default**: openshift
    - **Description**: Default destination type for migrations
  
  
  

  - **mtv_migrate_default_destination_target**
    - **Required**: false
    - **Type**: str
    - **Default**: host
    - **Description**: Default destination for migrations
  
  
  

  - **mtv_migrate_default_split_plans**
    - **Required**: false
    - **Type**: bool
    - **Default**: False
    - **Description**: Whether to split the plans into chunks of VMs
  
  
  

  - **mtv_migrate_default_vms_per_plan**
    - **Required**: false
    - **Type**: int
    - **Default**: 10
    - **Description**: The size for each chunk of VMs split out
  
  
  

  - **mtv_migrate_default_start_migration**
    - **Required**: false
    - **Type**: bool
    - **Default**: False
    - **Description**: Whether to start the migration after plan is created
  
  
  

  - **mtv_migrate_default_migrate_dry_run**
    - **Required**: false
    - **Type**: bool
    - **Default**: False
    - **Description**: Whether to perform a dry_run of plan creation
  
  
  

  - **mtv_migrate_default_verify_plans_ready**
    - **Required**: false
    - **Type**: bool
    - **Default**: False
    - **Description**: Whether to verify the plans are ready
  
  
  

  - **mtv_migrate_default_verify_migrations_complete**
    - **Required**: false
    - **Type**: bool
    - **Default**: False
    - **Description**: Whether to wait for migrations to finish
  
  
  



</details>


### Defaults

**These are static variables with lower priority**

#### File: defaults/main.yml

| Var          | Type         | Value       |Choices    |Required    | Title       |
|--------------|--------------|-------------|-------------|-------------|-------------|
| [mtv_migrate_default_namespace](defaults/main.yml#L7)   | str   | `openshift-mtv` |  n/a  |   True  |  Default MTV Namespace |
| [mtv_migrate_migration_request](defaults/main.yml#L13)   | dict   | `{}` |  n/a  |   True  |  Migration Request |
| [mtv_migrate_plan_base_name_annotation](defaults/main.yml#L53)   | str   | `infra.openshift-virtualization-migration/plan-name` |  n/a  |   True  |  MTV Migrate Annotation |
| [mtv_migrate_default_source_type](defaults/main.yml#L61)   | str   | `vsphere` |  n/a  |   True  |  MTV Default Source Type |
| [mtv_migrate_default_source_target](defaults/main.yml#L67)   | str   | `vmware` |  n/a  |   True  |  MTV Default Source Target |
| [mtv_migrate_default_source_target_namespace](defaults/main.yml#L73)   | str   | `{{ _mtv_namespace }}` |  n/a  |   True  |  MTV Default Source Namespace |
| [mtv_migrate_default_destination_type](defaults/main.yml#L79)   | str   | `openshift` |  n/a  |   True  |  MTV Default Destination Type |
| [mtv_migrate_default_destination_target](defaults/main.yml#L85)   | str   | `host` |  n/a  |   True  |  MTV Default Destination Target |
| [mtv_migrate_default_destination_target_namespace](defaults/main.yml#L91)   | str   | `{{ _mtv_namespace }}` |  n/a  |   True  |  MTV Default Target Namespace |
| [mtv_migrate_default_split_plans](defaults/main.yml#L97)   | bool   | `False` |  n/a  |   True  |  MTV Default Split Plans |
| [mtv_migrate_default_vms_per_plan](defaults/main.yml#L103)   | int   | `10` |  n/a  |   True  |  MTV Default VMs Per Plan |
| [mtv_migrate_default_start_migration](defaults/main.yml#L109)   | bool   | `False` |  n/a  |   True  |  MTV Default Start Migration |
| [mtv_migrate_default_migrate_dry_run](defaults/main.yml#L115)   | bool   | `False` |  n/a  |   True  |  MTV Default Dry Run |
| [mtv_migrate_default_verify_plans_ready](defaults/main.yml#L121)   | bool   | `False` |  n/a  |   True  |  MTV Default Verify Plans Ready |
| [mtv_migrate_default_verify_migrations_complete](defaults/main.yml#L127)   | bool   | `False` |  n/a  |   True  |  MTV Default Verify Migrations Complete |
| [mtv_migrate_default_target_namespace](defaults/main.yml#L133)   | str   | `{{ _mtv_namespace }}` |  n/a  |   True  |  MTV Default Target Namespace |
| [mtv_migrate_default_plan_base_name](defaults/main.yml#L139)   | str   | `{{ (_mtv_source_target + '-' + _mtv_destination_target) + '-' + lookup('pipe', 'date +%Y%m%d-%H%M') }}` |  n/a  |   True  |  MTV Default Plan Base Name |
| [mtv_migrate_default_network_map_name](defaults/main.yml#L147)   | str   | `{{ (_mtv_source_target + '-' + _mtv_destination_target) ¦ infra.openshift_virtualization_migration.rfc1123 }}` |  n/a  |   True  |  MTV Default Network Map Name |
| [mtv_migrate_default_network_map_namespace](defaults/main.yml#L153)   | str   | `{{ _mtv_namespace }}` |  n/a  |   True  |  MTV Default Network Map Namespace |
| [mtv_migrate_default_storage_map_name](defaults/main.yml#L159)   | str   | `{{ (_mtv_source_target + '-' + _mtv_destination_target) ¦ infra.openshift_virtualization_migration.rfc1123 }}` |  n/a  |   True  |  MTV Default Storage Map Name |
| [mtv_migrate_default_storage_map_namespace](defaults/main.yml#L165)   | str   | `{{ _mtv_namespace }}` |  n/a  |   True  |  MTV Default Storage Map Namespace |
<summary><b>🖇️ Full descriptions for vars in defaults/main.yml</b></summary>
<br>
<b>mtv_migrate_default_namespace:</b> The default namespace to use if not specified
<br>
<b>mtv_migrate_plan_base_name_annotation:</b> Label assigned to the MTV plan name
<br>
<br>





### Tasks


#### File: tasks/_migrations.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| _migrations ¦ Template Migrations | ansible.builtin.set_fact | False |
| _migrations ¦ Create Migrations | redhat.openshift.k8s | False |
| _migrations ¦ Wait for Migrations | block | True |
| _migrations ¦ Check on Migrations | kubernetes.core.k8s_info | False |

#### File: tasks/_plans.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| _plans ¦ Set Plan Base Name | ansible.builtin.set_fact | False |
| _plans ¦ Retrieve Configured providers | ansible.builtin.include_role | False |
| _plans ¦ Verify Source Provider | ansible.builtin.assert | False |
| _plans ¦ Verify Destination Providers | ansible.builtin.assert | False |
| _plans ¦ Retrieve StorageMaps | kubernetes.core.k8s_info | False |
| _plans ¦ Verify StorageMap | ansible.builtin.assert | False |
| _plans ¦ Retrieve NetworkMap | kubernetes.core.k8s_info | False |
| _plans ¦ Verify NetworkMap | ansible.builtin.assert | False |
| _plans ¦ Process Plan Skeleton | ansible.builtin.set_fact | False |
| _plans ¦ Get Inventory vms | ansible.builtin.include_role | False |
| _plans ¦ Manage specified folders | block | True |
| _plans ¦ Get Inventory folders | ansible.builtin.include_role | False |
| _plans ¦ Manage specified Folders | ansible.builtin.include_tasks | False |
| _plans ¦ Manage specified VM's | ansible.builtin.include_tasks | True |
| _plans ¦ Flatten VM's to Migrate | ansible.builtin.set_fact | False |
| _plans ¦ Verify Plan has VMs | ansible.builtin.assert | False |
| _plans ¦ Process Plans | ansible.builtin.include_tasks | False |
| _plans ¦ Create and Verify Plans | block | True |
| _plans ¦ Create Plans | redhat.openshift.k8s | False |
| _plans ¦ Verify Plans Ready | kubernetes.core.k8s_info | True |
| _plans ¦ Set Created Plans to Migrate | ansible.builtin.set_fact | True |
| _plans ¦ Display Plans (Dry Run) | ansible.builtin.debug | True |

#### File: tasks/_process_folder.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| _process_folder ¦ Initialize Folder Variables | ansible.builtin.set_fact | False |
| _process_folder ¦ Verify Name or ID or Path specified for Folder | ansible.builtin.assert | False |
| _process_folder ¦ Locate Folder by name | ansible.builtin.set_fact | True |
| _process_folder ¦ Locate Folder by id | ansible.builtin.set_fact | True |
| _process_folder ¦ Locate VM by path | ansible.builtin.set_fact | True |
| _process_folder ¦ Verify single Folder found | ansible.builtin.assert | False |
| _process_folder ¦ Set Folder to Process | ansible.builtin.set_fact | False |
| _process_folder ¦ Check Excludes | block | True |
| _process_folder ¦ Process Folder VM's | ansible.builtin.include_tasks | True |
| _process_folder ¦ Process Subfolders | ansible.builtin.include_tasks | True |

#### File: tasks/_process_plans.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| _process_plans ¦ Set Plan Name | ansible.builtin.set_fact | False |
| _process_plans ¦ Update Plan Content | ansible.builtin.set_fact | False |
| _process_plans ¦ Add Plan | ansible.builtin.set_fact | False |

#### File: tasks/_process_vm.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| _process_vm ¦ Initialize VM Variables | ansible.builtin.set_fact | False |
| _process_vm ¦ Verify Name or ID or Path specified for VM | ansible.builtin.assert | False |
| _process_vm ¦ Locate VM by name | ansible.builtin.set_fact | True |
| _process_vm ¦ Locate VM by id | ansible.builtin.set_fact | True |
| _process_vm ¦ Locate VM by path | ansible.builtin.set_fact | True |
| _process_vm ¦ Verify single VM found | ansible.builtin.assert | False |
| _process_vm ¦ Set VM to Process | ansible.builtin.set_fact | False |
| _process_vm ¦ Add VM to Migration Dict | ansible.builtin.set_fact | True |
| _process_vm ¦ Clear VM Variables | ansible.builtin.set_fact | False |

#### File: tasks/main.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| Verify Request Provided | ansible.builtin.assert | False |
| Initialize Data Structures | ansible.builtin.set_fact | False |
| Process Request (MTV Namespace) | ansible.builtin.set_fact | False |
| Process Request (Baseline) | ansible.builtin.set_fact | False |
| Process Request (Maps) | ansible.builtin.set_fact | False |
| Verify Split Plan Value is Positive | ansible.builtin.assert | True |
| Generate Plans | ansible.builtin.include_tasks | True |
| Manage Migrations | ansible.builtin.include_tasks | True |




## Playbook

```yml
---
- name: Test play
  hosts: localhost
  remote_user: root
  roles:
    - mtv_migrate
...

```


## Author Information
Andrew Block

#### License

GPL-3.0-only

#### Minimum Ansible Version

2.15.0

#### Platforms

- **EL**: ['all']

<!-- DOCSIBLE END -->