yumset:
  cmd.run:
    - names: 
      - wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-{{ grains['osmajorrelease'] }}.repo
      - wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-{{ grains['osmajorrelease'] }}.repo 
