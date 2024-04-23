# comment
file_line {'Turn off pass auth':
  ensure => present,
  line   => 'PasswordAuthentication no',
  path   => '/etc/ssh/ssh_config',

}

file_line {'Declare identity file':
  ensure => present,
  line   => 'IdentifyFile ~/.ssh/school',
  path   => '/etc/ssh/ssh_config',
}


