# $Id: pod.t,v 0.1 2004/10/15 08:03:00 t096351 Exp $
use Test::More;
eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;
all_pod_files_ok();
