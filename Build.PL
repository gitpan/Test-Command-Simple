use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Test::Command::Simple',
    license             => 'perl',
    dist_author         => q{Darin McBride <dmcbride@cpan.org>},
    dist_version_from   => 'lib/Test/Command/Simple.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'Test-Command-Simple-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
