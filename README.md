- Create certificates using `create_certificates.sh`
    - set `cassandra` as password
    - change `keystore_password`, `truststore_password` in `files_to_copy/cassandra.yaml.j2` when non-standard password is used

- Run `ansible-playbook cassandra_deployment.yml` with below **tags**
    - to install cassandra `--tags check_dependencies,install`
    - to place validation shell script `--tags validate_sh`
      - tag `beta_sh` will run script
    - to place validation python script (issues) `--tags validate_py`
      - tag `beta_py` will run script
    - cassandra version can be changed in task `Ensure cassandra repo is included.`
    - there might be a problem with listning interface set in `files_to_copy/cassandra.yaml.j2`
    - `serial: 1` is set for cassandra config update to prevent instable startup

- Manual validation can be done with ssh connect to nodes.
    - python is in use on node0 by default
    - shell is in use on node1 by default

#### Output example:
Manual shell:

![shell](images/tests_manual.png)

Ansible results:

![ansible](images/tests_ansible.png)

Naming `node0`, `node1`, `node2` is used in Vafrantfile.
Should be in sync with __group_vars/NAME__ for connection.

Complete playbook recap:

![playbook_recap](images/dependencies_and_install_recap.png)
