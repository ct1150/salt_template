{% if not grains['init'] or grains['init'] == 0 %}
include:
  - init.dns
  - init.yum
  - init.pkg
  - init.time
  - init.ssh
  - init.firewall
  - init.sysctl
init:
  grains.present:
    - value: 1
{% endif %}
