docker-key:
  file.append:
  - name: /etc/apt/sources.list.d/docker.list
  - text: deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu focal stable