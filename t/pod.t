# $Id: pod.t,v 0.2 2004/10/27 22:12:05 pelagic Exp $
use Test::More;

eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;
all_pod_files_ok();
