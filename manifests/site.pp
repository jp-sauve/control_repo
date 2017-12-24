node default {
  file {'/root/README':
    ensure => file,
    content => 'This is a readme',
    owner => 'root',
  }
  file {'/root/testfile.txt':
    ensure => file,
    content => 'test content',
  }
}
