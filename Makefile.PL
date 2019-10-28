use ExtUtils::MakeMaker;
use strict;
use warnings;

# Call 'perldoc ExtUtils::MakeMaker' for details of how to influence
# the contents of the Makefile that is written.

my %WriteMakefileArgs = (
    NAME                => 'Perl::RT2Github',
    VERSION_FROM        => 'lib/Perl/RT2Github.pm',
    AUTHOR              => 'James E Keenan (jkeenan@cpan.org)',
    ABSTRACT            => 'Given RT ticket number, find corresponding Github issue',
    INSTALLDIRS         => ($] < 5.011 ? 'perl' : 'site'),
    PREREQ_PM           => {
        'Test::Simple' => 0.44,
        'LWP::UserAgent' => 0,
    },
    ( eval { ExtUtils::MakeMaker->VERSION(6.46) } ? () : ( META_MERGE => {
        'meta-spec' => { version => 2 },
        dynamic_config => 1,
        resources => {
            homepage => 'http://thenceforward.net/perl/modules/Perl-RT2Github/',
            repository => {
                url => 'https://github.com/jkeenan/perl-rt2github.git',
                web => 'https://github.com/jkeenan/perl-rt2github',
                type => 'git',
            },
            bugtracker => {
                web => 'https://rt.cpan.org/Public/Dist/Display.html?Name=Perl-RT2Github',
            },
        },
    })),
);

WriteMakefile(%WriteMakefileArgs);
