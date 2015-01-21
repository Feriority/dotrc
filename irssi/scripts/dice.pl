# dice / A RP Dice Simulator
#

use strict;
use vars qw($VERSION %IRSSI);

use Irssi qw(command_bind signal_add signal_continue);
use Games::Dice 'roll_array';
$VERSION = '0.0.1';
%IRSSI = (
	authors			=> 'Feriority',
	name			=> 'dice',
	description		=> 'A Dice Simulator',
	license			=> 'GNU GPL Version 2 or later',
);

sub own_question {
	my ($server, $msg, $nick, $address, $target) = @_;
	question($server, $msg, $nick, $address, $target);
}

sub public_question {
	my ($server, $msg, $nick, $address, $target) = @_;
	question($server, $msg, $nick, $address, $target);
}

sub question($server, $msg, $nick, $address, $target) {
	my ($server, $msg, $nick, $address, $target) = @_;
    signal_continue($server, $msg, $nick, $address, $target);
    my $clean_msg = $msg;
    $clean_msg  =~ s/\x03\d?\d?(,\d?\d?)?|\x02|\x1f|\x16|\x06|\x07//g;
	$_ = $clean_msg;
	
	if (!/^!roll/i) { return 0; }

    if (/^!roll (\d+d\d+)(([+\-*\/b])(\d+))?/i) {
        my $dice = $1;
        my @dice = roll_array($dice);
        my $total = 0;
        for ( @dice ) { $total += $_;}

        my $modifier = $3;
        my $modification = $4;
        if ($modifier eq '+') { $total += $modification; }
        if ($modifier eq '-') { $total -= $modification; }
        if ($modifier eq '*') { $total *= $modification; }
        if ($modifier eq '/') { $total /= $modification; }
        if ($modifier eq 'b') {
            my @sorted_results = sort { $b cmp $a } @dice;
            my @best_n = splice @sorted_results, 0, $modification;
            $total = 0;
            for ( @best_n ) { $total += $_;}
        }

        my $dice_string = join ', ', @dice;
        my $dice_result = "[$dice_string], for a total of $total.";

        $server->command('msg '.$target.' '.$nick.' rolls '.$dice.' and gets '.$dice_result);
    }
    return 0;
}				

signal_add("message public", "public_question");
signal_add("message own_public", "own_question");
