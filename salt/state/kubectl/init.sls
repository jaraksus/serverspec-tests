include:
- side-dep.apt-transport-https

kubectl-repo:
  pkgrepo.managed:
  - name: deb https://apt.kubernetes.io/ kubernetes-xenial main
  - file: /etc/apt/sources.list.d/kubernetes.list
  - key_url: https://packages.cloud.google.com/apt/doc/apt-key.gpg

kubectl-pkg:
  pkg.installed:
  - pkgs:
    - kubectl
  - require:
    - apt-transport-https
    - kubectl-repo