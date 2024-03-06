# Puppet Script that corrects an error in a file

$file_edit = '/var/www/html/wp-settings.php'

# Line where we change the line of code

exec { 'replace_line':
command => "sed -i 's/phpp/php/g' ${file_edit}",
path    => ['/bin', '/usr/bin'],
}
