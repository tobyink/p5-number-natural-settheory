use Test::More tests => 6;
use Number::Natural::SetTheory qw/set_to_number/;

is(
	set_to_number([]),
	0,
	'Empty set is zero',
	);
	
ok(
	!defined set_to_number(['x']),
	'Random arrayref is not zero',
	);
	
is(
	set_to_number([[]]),
	1,
	'Set containing empty set is one',
	);
	
is(
	set_to_number([[],[[]]]),
	2,
	'Set containing zero and one is two',
	);

is(
	set_to_number([[], [[]], [[],[[]]]]),
	3,
	'Set containing zero, one and two is three',
	);

is(
	set_to_number([[[]], [], [[],[[]]]]),
	3,
	'Order does not matter - I',
	);

