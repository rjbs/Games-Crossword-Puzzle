use strict;
use warnings;
package Games::Crossword::Puzzle::Cell;
# ABSTRACT:  one of those little square bits with a number

use Carp ();

=method new

  my $cell = Games::Crossword::Puzzle::Cell->new(\%arg);

You probably don't mean to use this directly.

Valid arguments are:

  across - the across clue
  down   - the down clue
  number - the cell's number
  value  - the value that belongs in the cell
  guess  - the value that a user has put into the cell

In the future, this may return a singleton for The Black Cell.

=cut

sub new {
  my ($class, $arg) = @_;

  my $data = {
    map { $_ => $arg->{$_} } qw(across down number value guess)
  };

  bless $data => $class;
}

=method across

=method down

These methods return the clues for the word beginning in this cell, if any.

=cut

sub across { $_[0]->{across} }
sub down   { $_[0]->{down} }

=method number

This method returns the cell's number, if it is numbered.

=cut

sub number { $_[0]->{number} }

=method value

This returns the value that should appear in the cell.  It returns undef for
black cells.  Note that this may be more than one character, in case of a
rebus.

=cut

sub value  { $_[0]->{value} }

=method guess

This returns the value that has been filled into the cell by the user.  It
returns undef for black or empty cells.

=cut

sub guess  { $_[0]->{guess} }

1;
