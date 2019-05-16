#!/usr/bin/perl -w
#********************************
# Input User Choice & Pass parameters to the Applet
# (by Hanh Pham)
#********************************
 
use CGI qw( :standard );
 
my $q = new CGI;
 
# READ the LogIn Data from the ENVIRONMENT VARIABLES
# ......................................................................
my $answer = $q->param("answer") ||error($q, "No value entered.");
my $answer2 = $q->param("answer2") ||error($q, "No value entered.");
my $answer3 = $q->param("answer3") ||error($q, "No value entered.");
my $name = $q->param("UserName") ||error($q, "No name entered.");
my $color = $q->param("color") ||error($q, "No color entered.");
my $icon = $q->param("icon") ||error($q, "No icon selected.");
 
# PRODUCE a Reply HTM file
#....................................
 
print $q->header("text/html");
if ($answer eq "Graphics")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hi <font color=$color>$name</font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="what type of language is LOGO?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="Happy to hear that you selected $answer as your interest!">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="So why is LOGO a $answer language?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="Most interesting fact from $answer2 ?">
<PARAM name="Line10" value="Answer: $answer3">
<PARAM name="Line11" value="">
<PARAM name="Line12" value="Great! All the Best">
</APPLET>
</HTML>
End_Success
}
 
if ($answer eq "OOP")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hi <font color=$color>$name</font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="what type of language is LOGO?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value=" you selected $answer ">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="So why is LOGO a $answer language?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="Question:choose one of the image formats?">
<PARAM name="Line10" value="Answer: $answer3">
<PARAM name="Line11" value="">
<PARAM name="Line12" value="Great! All the Best">
</APPLET>
</HTML>
 
End_Success
} 
if ($answer eq "Functional")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hi <font color=$color>$name</font> <img src="$icon">, 
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question:what type of language is LOGO?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="you selected $answer">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question:So why is LOGO a $answer language?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="Question:choose one of $answer2 to learn">
<PARAM name="Line10" value="Answer: $answer3">
<PARAM name="Line11" value="">
<PARAM name="Line12" value="Great! All the Best">
</APPLET>
</HTML>
End_Success
}