#!/usr/bin/perl

system("chmod 644 *");
chop($list = `file *`);
@all = split(/\n/, $list);
foreach $item (@all) {
 ($filename, $info) = split(/: /, $item, 2);
 if ($info eq "data") {
   unlink($filename);
 }
 if ($info =~ /with very long lines/) {
   unlink($filename);
 
 if ($info =~ /raw G3/) {
   unlink($filename);
 }
 if ($info =~ /JPEG/) {
  $nf = $filename . ".jpg";
  rename($filename, $nf);
 }
 if ($info =~ /GIF/) {
  $nf = $filename . ".gif";
  rename($filename, $nf);
 }
 if ($info =~ /MPEG/) {
  $nf = $filename . ".mpg";
  rename($filename, $nf);
 }
 if ($info =~ /PNG/) {
  $nf = $filename . ".png";
  rename($filename, $nf);
 }
 if ($info =~ /Flash/) {
  $nf = $filename . ".flv";
  rename($filename, $nf);
 }
}
