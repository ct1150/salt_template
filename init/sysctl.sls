/etc/sysctl.conf:
  file.managed:
    - source: salt://init/file/sysctl.conf
    - user: root
    - group: root
    - mode: 644
