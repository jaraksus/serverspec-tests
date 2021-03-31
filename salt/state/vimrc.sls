vimrc:
  file.managed:
    - name: /etc/vim/vimrc
    - source: salt://vimrc
    - user: root
    - group: root
    - mode: 644