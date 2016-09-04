Ansible docker role for Debian
==============================

[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-HanXHX.docker-blue.svg)](https://galaxy.ansible.com/HanXHX/docker/) [![Build Status](https://travis-ci.org/HanXHX/ansible-docker.svg?branch=master)](https://travis-ci.org/HanXHX/ansible-docker)

Install and configure systems to pass docker commands on Debian based systems.

Requirements
------------

- PIP (Python)
- Debian jessie backports repository (if you want docker from Debian packages)

Role Variables
--------------

- `docker_upstream`: (boolean) Install Docker from upstream respository (default is true)

Dependencies
------------

None

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: HanXHX.docker }

License
-------

MIT

Author Information
------------------

- Twitter: [@hanxhx_](https://twitter.com/hanxhx_)
