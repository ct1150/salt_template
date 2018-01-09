selinux-set:
  cmd.run:
    - names:
      - sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config
      - setenforce 0

firewall-set:
{% if grains['osmajorrelease'] == 7 %}
  cmd.run:
    - names:
      - systemctl disable firewalld.service
      - systemctl stop firewalld.service
{% endif %}
  pkg.installed:
    - name: iptables-services
  service.running:
    - name: iptables
    - enable: True
    - watch:
      - file: /etc/sysconfig/iptables
  file.managed:
    - source: salt://init/file/iptables
    - name: /etc/sysconfig/iptables
    - user: root
    - group: root
    - mode: 644
    - watch:
      - pkg: iptables-services
  
