minikube:
  pkg.installed:
  - sources:
    - minikube: https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
  - require:
    - docker-pkg