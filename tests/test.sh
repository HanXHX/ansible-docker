#!/bin/sh

# Thanks to https://servercheck.in/blog/testing-ansible-roles-travis-ci-github

DIR=$( dirname $0 )
PLAYBOOK="$DIR/test.yml"

set -ev

ansible --version

# Check syntax
ansible-playbook -i localhost, -c local --syntax-check -vv $PLAYBOOK

# Check role
ansible-playbook -i localhost, -c local --become -vv $PLAYBOOK

# Check indempotence
ansible-playbook -i localhost, -c local --become -vv $PLAYBOOK \
| grep -q 'changed=0.*failed=0' \
&& (echo 'Idempotence test: pass' && exit 0) \
|| (echo 'Idempotence test: fail' && exit 1)
