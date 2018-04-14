# docker-ansible

This repo contains:

- a Dockerfile for building a Docker image containing Ansible from a CentOS 7
  base image
- a shell script for launching a container with access to the resources Ansible
  needs to perform a deployment

# Usage

Execute `ansible.sh` from the directory that contains your playbooks. The script
will launch a Docker container that mounts the playbook directory at the root of
the container's filesystem. The container will also mount your `.ssh` directory
so that it can connect to your deployment targets.
