ssh-set:
  cmd.run:
    - name: sed -i -e "s/#UseDNS yes/UseDNS no/" -i -e 's/GSSAPIAuthentication yes/GSSAPIAuthentication no/' /etc/ssh/sshd_config
