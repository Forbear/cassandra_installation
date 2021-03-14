- Create certificates using `create_certificates.sh`

- Run ansible-playbool cassandra_deployment.yml
    - to install cassandra `--tags check_dependencies,install`
    - to place validation shell script `--tags validate_sh`
      - tag `beta_sh` will run script
    - to place validation python script (issues) `--tags validate_py`
      - tag `beta_py` will run script

- Manual validation can be done with ssh connect to nodes.
    - python is in use on node0 by default
    - shell is in use on node1 by default

#### Output example:
Manual shell:

![shell](images/tests_manual.png)

Ansible results:

![ansible](images/tests_ansible.png)

Naming node0, node1, node2 is used in Vafrantfile.
Should be in sync with __group_vars/NAME__ for connection.
