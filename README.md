Role Name : role_nrpe
=========

have *nrpe* installed and configured

Requirements
------------

CentOS 7 or higher   
Repos powertools and epel-testing are available   

Role Variables
--------------

nagios: the host that runs nagios that connects to this NRPE. defaults to *nagios*

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

    - hosts: podman
      roles:
         - role_nrpe

License
-------

BSD

Author Information
------------------

    ARK-ICT
    Andre Rikkert de Koe - ICT
