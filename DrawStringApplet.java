import java.applet.Applet;
import java.awt.Graphics;

public class DrawStringApplet extends Applet
{
 String n1,n2,n3,n4,n5,n6,n7,n8,n9;
 public void init()
 {
 n1 = getParameter("Line1");
 n2 = getParameter("Line2");
 n3 = getParameter("Line3");
 n4 = getParameter("Line4");
 n5 = getParameter("Line5");
 n6 = getParameter("Line6");
 n7 = getParameter("Line7");
 n8 = getParameter("Line8");
 n9 = getParameter("Line9");
 }

public void paint(Graphics g)
 {
 g.drawString( n1, 10,100);
 g.drawString( n2, 10,110);
 g.drawString( n3, 10,120);
 g.drawString( n4, 10,130);
 g.drawString( n5, 10,140);
 g.drawString( n6, 10,150);
 g.drawString( n7, 10,160);
 g.drawString( n8, 10,170);
 g.drawString( n9, 10,180);
 }
 }


