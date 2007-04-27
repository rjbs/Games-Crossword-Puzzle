
use strict;
use warnings;

# cell.across
# cell.down
# cell.number
# cell.value
# cell.guess

package Games::Crossword::Puzzle::Cell;

use Carp ();

sub new {
  my ($class, $arg) = @_;

  my $data = {
    map { $_ => $arg->{$_} } qw(across down number value guess)
  };

  bless $data => $class;
}

sub across { $_[0]->{across} }
sub down   { $_[0]->{down} }
sub number { $_[0]->{number} }
sub value  { $_[0]->{value} }
sub guess  { $_[0]->{guess} }

1;
