class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCpkTTcABUPzhsmwTPMHYq0B2dgYVK9tmhxgA4mh66vbeX+EV70hcLuMGFf4E89fM0UXoc4R7wP9Re9hVJikq8wAgLezrsu/yb+IRw3P6biqjkiuZEyV35h3ZreHgYJgFfi9Xw0B32npwm74KOwpzVdzbpxeCotMHDW269nF2sF/RtvCw/rH8ca5RoGmnuVzLgtM19HcWp+3IYbgENXxFNNQkfaAHwK/tUx8a9thrnhca59hFUjSliwp1NrJQaT2WEll2yUSSMSov9KpM31HMO2ynjZvdvzyNxf67ipCHPaRrmq6znUMGU1V9PQgm432DdA36JcdiUFhbZ/3GgrCTBb',
  }
}
