use Test::More tests => 10;
use Number::Natural::SetTheory qw/set_is_number/;

ok(
	set_is_number([], 0),
	'Empty set is zero',
	);
	
ok(
	!set_is_number(['x'], 0),
	'Random arrayref is not zero',
	);
	
ok(
	set_is_number([[]], 1),
	'Set containing empty set is one',
	);
	
ok(
	set_is_number([[],[[]]], 2),
	'Set containing zero and one is two',
	);

ok(
	set_is_number([[], [[]], [[],[[]]]], 3),
	'Set containing zero, one and two is three',
	);

ok(
	set_is_number([[[]], [], [[],[[]]]], 3),
	'Order does not matter - I',
	);

ok(
	set_is_number([[[]], [[],[[]]], []], 3),
	'Order does not matter - II',
	);

ok(
	set_is_number([[[],[[]]], [[]], []], 3),
	'Order does not matter - III',
	);

ok(
	set_is_number([[[],[[]]], [], [[]]], 3),
	'Order does not matter - IV',
	);

ok(
	set_is_number([[], [[],[[]]], [[]]], 3),
	'Order does not matter - V',
	);

