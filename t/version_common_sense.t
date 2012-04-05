use strict;
use Test::More;
use Module::Metadata;

my $installed = eval {
    require common::sense;
    1;
};

if ( !$installed ) {
    plan skip_all => 'common::sense isnt installed';
    exit;
}

plan tests => 2;

my $meta = Module::Metadata->new_from_module("common::sense");
is $meta->name(), 'common::sense';
is $meta->version(), $common::sense::VERSION;


