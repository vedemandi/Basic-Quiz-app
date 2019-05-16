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
my $answer2 = $q->param("answer2") ||error($q, "No value entered.");
my $name = $q->param("UserName") ||error($q, "No name entered.");
my $color = $q->param("color") ||error($q, "No color selected.");
my $icon = $q->param("icon") ||error($q, "No icon selected.");
 
# PRODUCE a Reply HTM file
#....................................
print $q->header("text/html");
if ($answer2 eq "Turtle")
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
<p>Question:So why is LOGO a $answer language?
<p>Answer: $answer2 
<hr>
<p>Correct again! you selected $answer !
<p>you selected $answer2 in $answer
<p>Question: Most interesting fact from $answer2 ?
<p><form action="p3.pl" method="post">
<input type="radio" value="Design" name="answer3">Working around atari games!
<p><input type="radio" value="Draw" name="answer3">Working with paint!
<p><input type="radio" value="Paint" name="answer3">It was created in 1995!
<input type="hidden" name="UserName" value="$name">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="answer2" value="$answer2">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}

if ($answer2 eq "Methods")
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
<p>Question:So why is LOGO a $answer language?
<p>Answer: $answer2 
<hr>
<p> you selected $answer !
<p>you selected $answer2 in $answer
<p>Question:Most interesting fact from $answer2 ?
<p><form action="p3.pl" method="post">
<input type="radio" value=" testing" name="answer3">Method chaining!
<p><input type="radio" value="arcus" name="answer3">Regular expressions!
<p><input type="radio" value="mag" name="answer3">Work around serialized objects!
<input type="hidden" name="UserName" value="$name">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="answer2" value="$answer2">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}

if ($answer2 eq "Objects")
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
<p>Question:So why is LOGO a $answer language?
<p>Answer: $answer2 
<hr>
<p>you selected $answer!
<p>These are the other things in $answer
<p>Question: Most interesting fact from $answer2 ?
<p><form action="p3.pl" method="post">
<input type="radio" value="data viz" name="answer3">Object mutations!
<p><input type="radio" value="tin" name="answer3">Better OOP practice!
<p><input type="radio" value="cam" name="answer3">To avoid script constraints!
<input type="hidden" name="UserName" value="$name">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="answer2" value="$answer2">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}
 
 
if ($answer2 eq "king")
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
<p>l you selected $answer2
<p>Question:choose one of the image formats?
<p><form action="p3.pl" method="post">
<input type="radio" value="png" name="answer3">PNG!
<p><input type="radio" value="gif" name="answer3">GIF!
<p><input type="radio" value="jpeg" name="answer3">JPEG!
<input type="hidden" name="UserName" value="$name">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="answer2" value="$answer2">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}

if ($answer2 eq "queen")
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
<p>Question:So why is LOGO a $answer language?
<p>Answer: $answer2 
<hr>
<p>you selected $answer !
<p>you selected $answer2 in $answer
<p>Question: choose one of the formats of $answer2 ?
<p><form action="p3.pl" method="post">
<input type="radio" value="svg" name="answer3">SVG!
<p><input type="radio" value="pdf" name="answer3">PDF
<p><input type="radio" value="eps" name="answer3">EPS
<input type="hidden" name="UserName" value="$name">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="answer2" value="$answer2">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}

if ($answer2 eq "joker")
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
<p>Question:So why is LOGO a $answer language?
<p>Answer: $answer2 
<hr>
<p>you selected $answer !
<p>you selected $answer2 in $answer
<p>Question: choose one of the formats of $answer2 ?
<p><form action="p3.pl" method="post">
<input type="radio" value="barchart" name="answer3">Bar Chart!
<p><input type="radio" value="histogram" name="answer3">Histogram!
<p><input type="radio" value="Contour plot" name="answer3">Contour plot!
<input type="hidden" name="UserName" value="$name">
<input type="hidden" name="answer" value="$answer">
#<input type="hidden" name="answer2" value="$answer2">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}

if ($answer2 eq "putty")
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
<p>you selected $answer?
<p>Question:So why is LOGO a $answer language?
<p>Cool you selected $answer2
<p><form action="p3.pl" method="post">
<input type="radio" value="arithmatic operators" name="answer3">Arithmatic Operators!
<p><input type="radio" value="assignment operators" name="answer3">Assignment Operators!
<p><input type="radio" value="logical operators" name="answer3">Logical Operators!
<input type="hidden" name="UserName" value="$name">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="answer2" value="$answer2">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}

if ($answer2 eq "client")
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
<p>you selected $answer 
<p>Question:So why is LOGO a $answer language?
<p>Cool you selected $answer2
<p>Choose one of the $answer2
<p><form action="p3.pl" method="post">
<input type="radio" value="repeat loop" name="answer3">Repeat loop
<p><input type="radio" value="for loop" name="answer3">For loop
<p><input type="radio" value="while loop" name="answer3">While loop
<input type="hidden" name="UserName" value="$name">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="answer2" value="$answer2">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}

if ($answer2 eq "host")
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
<p>you selected $answer 
<p>Question:So why is LOGO a $answer language?

<p>Cool you selected $answer2
<p>Choose one of the $answer2
<p><form action="p3.pl" method="post">
<input type="radio" value="vectors" name="answer3">Vectors!
<p><input type="radio" value="data frames" name="answer3">Data Frames!
<p><input type="radio" value="lists" name="answer3">Lists!
<input type="hidden" name="UserName" value="$name">
<input type="hidden" name="answer" value="$answer">
<input type="hidden" name="answer2" value="$answer2">
<input type="hidden" name="color" value="$color">
<input type="hidden" name="icon" value="$icon">
<p><input type="submit" value="Submit">
<p></form>
</HTML>
End_Success
}