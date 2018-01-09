timezone:
  cmd.run:
    - name: ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ntp:
  file.managed:
    - source: salt://init/file/ntp.conf
    - name: /etc/ntp.conf
    - user: root
    - group: root
    - mode: 644
  service.running:
    - enable: True
    - name: ntpd
    - watch:
      - file: /etc/ntp.conf

