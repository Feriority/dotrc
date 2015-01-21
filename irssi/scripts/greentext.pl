use strict;
use Irssi;
use vars qw($VERSION %IRSSI);

$VERSION = "0.1.0";
%IRSSI = (
	authors			=> 'Feriority',
	name			=> 'greentext',
	description		=> '> implying greentext',
	license			=> 'GNU GPL Version 2 or later',
);

my $COLOR = "\003"."03";

sub greentext {
	my ($server, $msg, $nick, $mask, $target) = @_;
    $msg =~ s/^>/$COLOR>/;
	Irssi::signal_continue($server, $msg, $nick, $mask, $target);
}


Irssi::signal_add('message public', 'greentext');
Irssi::signal_add('message own_public', 'greentext');
