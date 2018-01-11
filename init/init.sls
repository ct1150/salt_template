{% if grains.get('osinit') and grains['osinit']==1 %}
{% else %}
include:
  - init.dns
  - init.yum
  - init.pkg
  - init.time
  - init.ssh
  - init.firewall
  - init.sysctl
osinit:
  grains.present:
    - value: 1
{% endif %}
