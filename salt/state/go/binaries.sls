go-binaries1:
  cmd.run: 
  - name: wget https://golang.org/dl/go1.15.9.linux-amd64.tar.gz
  - creates: /root/go1.15.9.linux-amd64.tar.gz

go-binaries2:
  cmd.run:
  - name: tar -C /usr/local -xzf go1.15.9.linux-amd64.tar.gz
  - creates: /usr/local/go/
  - require:
    - go-binaries1
