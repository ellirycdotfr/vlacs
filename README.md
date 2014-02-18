vlacs
Very Lite ACS

It's a Very Lite TR069 ACS 

write in perl, using Mojolicious

Installation 
- Mojolicious
sudo -s 'curl -L cpanmin.us | perl - Mojolicious'

module perl necessaire : 
Switch (a installer depuis le cpan, va être enlever de la distribution standard de perl)

use Sys::Syslog;
use warnings;
use strict;
use NetAddr::IP;
use Data::Dumper;
use Sys::Syslog;
use Mojolicious::Lite;