package Foswiki::LoginManager::CwsApacheLogin;

use strict;
use warnings;
use Foswiki::LoginManager::LdapApacheLogin ();

@Foswiki::LoginManager::CwsApacheLogin::ISA = qw(
Foswiki::LoginManager::LdapApacheLogin );

sub new {
  my ($class, $session) = @_;
  my $this = bless($class->SUPER::new($session), $class);
  return $this;
}

sub getUser {
  my $self = shift;
  my $query = $self->{session}->{request};
  my $user = $query->http('HTTP_SAMACCOUNTNAME');
  return $user;
}

1;
