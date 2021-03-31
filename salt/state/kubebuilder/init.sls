include:
- kubebuilder.path-env

kubebuilder-binaries1:
  cmd.run: 
  - name: curl -L https://go.kubebuilder.io/dl/2.3.1/linux/amd64 | tar -xz -C /tmp/
  - creates: /tmp/kubebuilder_2.3.1_linux_amd64
  - require:
    - go-binaries2
    - docker-pkg
    - kubectl-pkg

kubebuilder-binaries2:
  cmd.run:
  - name: sudo mv /tmp/kubebuilder_2.3.1_linux_amd64 /usr/local/kubebuilder
  - creates: /usr/local/kubebuilder/
  - require:
    - kubebuilder-binaries1