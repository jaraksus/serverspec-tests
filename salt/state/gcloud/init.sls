include:
  - side-dep.apt-transport-https
  - side-dep.gnupg
  - side-dep.ca-certificates

gcloud-repo:
  pkgrepo.managed:
  - name: deb https://packages.cloud.google.com/apt cloud-sdk main
  - file: /etc/apt/sources.list.d/google-cloud-sdk.list
  - key_url: https://packages.cloud.google.com/apt/doc/apt-key.gpg

gcloud-pkg:
  pkg.installed:
  - pkgs:
    - google-cloud-sdk
  - require:
    - apt-transport-https
    - gcloud-repo
    - ca-certificates
    - gnupg