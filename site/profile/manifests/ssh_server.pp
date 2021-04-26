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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQChoKwa4YvRUGkzolUA6EmVNxhU+Zg2mT9v6U2aWMl8k9JcvZs97qVR1+3f6t0wCnE4dLx707pwq+m+/ZT1SBJKfdM/djyf5aYSPn+5ztle+G1EHJlRePh1+vdY769q6n7HL7Pnd8cm+GrK87EIVbPS1NzBn2dH9cntn5DZ+jhCV5ETmxBD5Nr958BwoqqXOdumbdDDuZp7oKPPP79GY1DHrs9t/ppgoaO3DImU6dxtx685jR8wNqTwacXqOxS/Kk/App6FiLouVXVr+S7HeKcTlTg/ojh6OPmQgw3u25fMg81RZINl5ZW+P28pUYqvDuJtg7bGnDoKbf4AeLkmv1/j',
	}  
}
