docker-repo:
  cmd.run:
  - name: curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
  - creates: /usr/share/keyrings/docker-archive-keyring.gpg