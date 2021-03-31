include:
- side-dep.apt-transport-https
- side-dep.gnupg
- side-dep.ca-certificates
- docker.repo
- docker.key

docker-pkg:
  pkg.installed:
  - pkgs:
    - docker-ce 
    - docker-ce-cli 
    - containerd.io
  - require:
    - apt-transport-https
    - gnupg
    - ca-certificates
    - docker-key
    - docker-repo