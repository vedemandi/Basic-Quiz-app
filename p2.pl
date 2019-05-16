#!/usr/bin/perl -w
#********************************
# Input User Choice
# (by Hanh Pham)
#********************************
 
use CGI qw( :standard );
 
my $q = new CGI;
 
# READ the LogIn Data from the ENVIRONMENT VARIABLES
# ......................................................................
my $answer = $q->param("answer") ||error($q, "No value entered.");
my $name = $q->param("UserName") ||error($q, "No name entered.");
my $color = $q->param("color") ||error($q, "No color selected.");
my $icon = $q->param("icon") ||error($q, "No icon selected.");
 
# PRODUCE a Reply HTM file
#....................................
print $q->header("text/html");
if ($answer eq "Graphic")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hi <font color=$color>$name</font> <img src="$icon">,
<p>Question:what type of language is LOGO?
<p>Answer: $answer 
<hr>
<p>Okay thats the correct $answer !
<p>Question: So why is LOGO a $answer language?
<p><form action="p4.pl" method="post">
<input type="radio" value="Turtle" name="answer2">We work with turtle and 2-D design!
<p><input type="radio" value="Methods" name="answer2">We work with encapsulation!
<p><input type="radio" value="Objects" name="answer2">We work with objects
<input type="hidden" name="UserName" value="$name">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
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
<p>Question: what type of language is LOGO?
<p>Answer: $answer
<hr>
<p>You selected $answer 
<p>Question: So why is LOGO a $answer language?
<p><form action="p4.pl" method="post">
<input type="radio" value="king" name="answer2">We work around classes and subprograms!
<p><input type="radio" value="queen" name="answer2">We work with data structures!
<p><input type="radio" value="joker" name="answer2">LOGO was designed that way!
<input type="hidden" name="UserName" value="$name">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
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
<p>Question: what type of language is LOGO?
<p>Answer: $answer
<hr>
<p> you selected $answer
<p>Question:So why is LOGO a $answer language?
<p><form action="p4.pl" method="post">
<input type="radio" value="putty" name="answer2">We work around functions!
<p><input type="radio" value="client" name="answer2"> Its a dialect of LISP!
<p><input type="radio" value="host" name="answer2"> It works around methods and parameters!
<input type="hidden" name="UserName" value="$name">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}