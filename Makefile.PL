# $Id: Makefile.PL,v 1.2 2004/10/27 22:08:01 pelagic Exp $
use ExtUtils::MakeMaker;

eval "use Test::Manifest";

unless( $@ )
	{
	* ExtUtils::MM_Any::test_via_harness = sub
		{
		my($self, $perl, $tests) = @_;
		
		return qq|\t$perl "-MTest::Manifest" | .
			qq|"-e" "run_t_manifest(\$(TEST_VERBOSE), '\$(INST_LIB)', | .
			qq|'\$(INST_ARCHLIB)')"\n|;
		}
	}

WriteMakefile(
	'NAME'          => 'List::Rotation::Cycle',
	'VERSION_FROM'  => 'Cycle.pm',
 
	'PREREQ_PM'		=> {
		'Test::More'       => '0',
    },
    
	'MAN3PODS'      => {
    	'Cycle.pm'  => '$(INST_MAN3DIR)/List::Rotation::Cycle.3',
    	},

	'clean' => { FILES => 'List-Rotation-Cycle-*' },
);

