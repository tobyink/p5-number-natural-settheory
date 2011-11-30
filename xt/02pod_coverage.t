use Test::More;
use Test::Pod::Coverage;

my @modules = qw(Number::Natural::SetTheory);
pod_coverage_ok($_, "$_ is covered")
	foreach @modules;
done_testing(scalar @modules);

