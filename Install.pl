#!/usr/bin/perl
use File::Copy;
if (!eval "use English; 1"){
  die("English ist nicht vorhanden!\n");
}
use English;
print "English... Vorhanden!\n";


if (!eval "use Net::FTP; 1"){
  die("Net::FTP ist nicht vorhanden!\n");
}
print "Net::FTP... Vorhanden!\n";


if($OSNAME != "windows"){
  if(!$UID){                              # Don't kill me, it's short'
    die("Script muss als Root ausgeführt werden!\n");
  }
}
if(!-e "$INC[0]/Sec"){
  mkdir("$INC[0]/Sec");
}
copy("Sec/CFTP.pm","$INC[0]/Sec/CFTP.pm");



