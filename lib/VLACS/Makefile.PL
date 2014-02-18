use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'VLACS',
    AUTHOR              => 'Cyrille Hombecq <cyrille.hombecq@gmail.com>',
    VERSION_FROM        => 'lib/VLACS.pm',
    ABSTRACT_FROM       => 'lib/VLACS.pm',
    EXE_FILES		=> [ 'bin/vlacs' ],
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
	'Mojolicious::Lite' => 0,
	'Sys::Syslog' => 0,
	'Data::Dumper' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'VLACS-*' },
);
