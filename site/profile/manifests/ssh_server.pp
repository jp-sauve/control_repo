class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDAglaBj/i2QEreP7c99nlCyRBbRASjv9hm1Af6CXAiA7QFLPZfR7k2DSBgsZobo0C4HH6HYsAvcGXo4z9ey89lCxPWG49TrA4ksz9+LsHrGxW4VLwOzoSz4jGlgBQbLfGNeB74cwXSiHcCl8/UhhbShi3m5hyRhhDJj/zMqwUGiylam7Z2yd7KqHvHE4m8JIbd33kmhkJIH/zHWigCNWt/L+bg+DaQvG53NzQnOPD308G5f+TEPGpkS1KyCCGrGH+9oSMGCxfek7dqMMGeejgzte3hK0PkYgF/iC38YXTaicd4i9arBetrijTq7ja/OVZfM8EPgxzo/MkbnHLHpyM1',
  }
}
