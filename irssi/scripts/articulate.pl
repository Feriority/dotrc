use strict;
use Irssi;
use vars qw($VERSION %IRSSI);

# Dev. info ^_^
$VERSION = "0.3";
%IRSSI = (
	authors     => "Michael Driscoll",
	contact     => 'mbdriscoll@rescomp.berkeley.edu',
	name        => "Articulate",
	description => "Remove emoticons and replaces them with real words",
	license     => "Copyright Michael Driscoll",
	url         => "http://www.oed.com",
	changed     => "Mon Jun 22 19:17:15 PST 2003"
);

sub strip_emoticons {
	my ($server, $data, $nick, $mask, $target) = @_;
	
	# Translate emoticons
	$data =~ s/\:-?\)/[I am happy]/g; 
	$data =~ s/\:-?\(/[I am sad]/g;
	$data =~ s/\^\_\^/[I am giddy]/g;
	$data =~ s/\;-?\)/[I am winking at you]/g;
	$data =~ s/\:-?S/[I have a squiggly mouth]/g;
	$data =~ s/\:-?(0|O)/[Look at my uvula]/g;
	$data =~ s/\:(\\|\||\/[^\/])/[I have a flat mouth]/g;
	$data =~ s/(>|<)(\.|_)(>|<)/[I'm getting an uh-oh feeling]/g;
	$data =~ s/-_-/[I'm constipated]/g;
	$data =~ s/XD/[I'm a dead cyclops]/g;
	$data =~ s/\:D/[Check out my braces]/g;
	$data =~ s/T\.?T/[I'm crying because I have T's for eyes]/g;	
	$data =~ s/Q\.?Q/[I'm crying because I have Q's for eyes]/g;
	$data =~ s/(O\.o|o\.O)/[Help! I have a swollen eye]/g;
	$data =~ s/\:-?P/[My tongue is numb]/g;
	Irssi::signal_continue($server, $data, $nick, $mask, $target);
}

# Hook me up
Irssi::signal_add('message public', 'strip_emoticons');
Irssi::settings_add_str('lookandfeel', 'colored_channels', '');
