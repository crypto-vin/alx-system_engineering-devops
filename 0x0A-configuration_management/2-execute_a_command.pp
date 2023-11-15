# execute_command.pp

exec { 'killmenow_process':
  command     => 'pkill -f killmenow',
  refreshonly => true,
}


