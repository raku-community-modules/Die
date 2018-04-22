use lib 'lib';
use Test;
use Games::TauStation::DateTime;

plan 1;
isa-ok GCT, DateTime;
