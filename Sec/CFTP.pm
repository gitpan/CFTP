package Sec::CFTP;

use Net::FTP;

# Methode zum checken ob ein FTP Account geht
sub new(){
  my $host = shift;
  my $user = shift;
  my $pass = shift;
  my $ftp = Net::FTP->new($host, Timeout => 20) or return 0;;
  if($ftp->login($user,$pass)){
    $ftp->quit;
    return 1;
  }
  else {
    return 0;
  }
}

sub anno(){
  my $host = shift;
  my $ftp = Net::FTP->new($host, Timeout => 20) or return 0;;
  if($ftp->login("anonymous",'-anonymous@')){
    $ftp->quit;
    return 1;
  }
  else {
    return 0;
  }
}
1;

=pod

=head1   NAME

     Sec::CFTP - Testet FTP Accounts

=head1   SYNOPSIS

      use Sec::CFTP;
      my $test = Sec::CFTP->new(HOST, USER, PASSWORD); 
      # returns 1 if the account is Ok

      my $anno = Sec::CFTP->anno(HOST);                
      # Is there a anonymous account? 1 if there is one


=head1   DESCRIPTION

      Prueft ob FTP-Accounts funktionieren. 

=head1  AUTHOR 

      SYN-SYN/ACK-ACK <abcabc@cpan.org>. 
      Only do legal Shit with my code!'
=cut

