Role purpose
============

have *nrpe* installed and configured

Galaxy : yes

Requirements
------------

RedHat compatible 7 or higher, CentOS, Almalinux, Rockylinux.
Tested on CentOS 7/8 and Almalinux 9
Debian/Ubuntu.
Tested on Debian 12 and Ubuntu 22.04
Repos *powertools* and *epel-testing* are available for Centos 8

Role Variables
--------------

- *nagios*: the host that runs nagios that connects to this NRPE. defaults to *nagios*
- *sestatus*: SElinux mode, defaults to *Enforcing*. Only applicable for RedHat OS family

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

    - hosts: host01
      roles:
         - arikkert.nrpe
           vars:
             sestatus: Permissive

Example of a script that uses this role : https://github.com/arikkert/ansible-dockerhost

License
-------

BSD

Author Information
------------------

    ARK-ICT
    Andre Rikkert de Koe - ICT
