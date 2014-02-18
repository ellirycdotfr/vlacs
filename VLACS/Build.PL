use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'VLACS',
    license             => 'perl',
    dist_author         => 'Cyrille Hombecq <cyrille.hombecq@gmail.com>',
    dist_version_from   => 'lib/VLACS.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'VLACS-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
