use Test::More tests => 4;
use Number::Natural::SetTheory qw/number_to_set/;

is_deeply(
	number_to_set(0),
	[],
	'Empty set is zero',
	);
	
is_deeply(
	number_to_set(1),
	[[]],
	'Set containing empty set is one',
	);
	
is_deeply(
	number_to_set(2),
	[[],[[]]],
	'Set containing zero and one is two',
	);

is_deeply(
	number_to_set(3),
	[[], [[]], [[],[[]]]],
	'Set containing zero, one and two is three',
	);