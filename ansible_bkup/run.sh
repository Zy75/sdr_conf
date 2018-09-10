#!/bin/sh

sudo ansible-playbook -i iv.ini pb.yml --ask-pass --ask-sudo-pass -vvv
