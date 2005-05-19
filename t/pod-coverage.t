#!/usr/bin/perl
#$Id: pod-coverage.t,v 1.4 2005/05/19 09:46:25 pelagic Exp pelagic $
use strict;

use Test::More;
eval "use Test::Pod::Coverage 0.08";
plan skip_all => "Test::Pod::Coverage 0.08 required for testing POD coverage" if $@;
all_pod_coverage_ok();
