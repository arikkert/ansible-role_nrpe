Role Name : role_nrpe
=========

have *nrpe* installed and configured

Galaxy : yes

Requirements
------------

CentOS 7 or higher   
Repos *powertools* and *epel-testing* are available   

Role Variables
--------------

*nagios*: the host that runs nagios that connects to this NRPE. defaults to *nagios*

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

    - hosts: host01
      roles:
         - arikkert.nrpe

Example of a script that uses this role : https://github.com/arikkert/ansible-dockerhost

License
-------

BSD

Author Information
------------------

    ARK-ICT
    Andre Rikkert de Koe - ICT
