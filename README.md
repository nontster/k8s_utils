# k8s_utils
Export all Kubernetes resources ion cluster to yaml separated in each namespace.

## check docker container log size
find /var/lib/docker/containers -type f -name "*.log" | xargs du -sh

## never prompt the current user for a password when that user uses sudo run this command
sudo echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/dont-prompt-$USER-for-sudo-password
