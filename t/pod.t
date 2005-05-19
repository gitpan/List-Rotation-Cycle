#!/usr/bin/perl
# $Id: pod.t,v 1.4 2005/05/19 09:46:25 pelagic Exp pelagic $
use strict;

use Test::More;
eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;
all_pod_files_ok();
