# -*- perl -*-

# t/001_load.t - check module loading and create testing directory

use Test::More tests => 2;

BEGIN { use_ok( 'Perl::RT2Github' ); }

my $object = Perl::RT2Github->new ();
isa_ok ($object, 'Perl::RT2Github');


