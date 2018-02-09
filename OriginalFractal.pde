Stars[] sky = new Stars[250];

public void setup()
{
  size(815,700);
  background(15);
  stroke(15);
  for (int i=0; i<sky.length; i++)
    sky[i] = new Stars();
  for (int i=0; i<sky.length; i++)
    sky[i].show();
  stroke(0);
  translate(310,420);
  rotate(-PI/2);
  stairs(94,0,0,0,0,80,90);
  
}

public void draw()
{
}

public void stairs(int scales, int myx, int myy, int startx, int starty, int sizex, int sizey)
{
  if (scales == 0)
  {
    rotate(PI/36);
    arc(startx+myx, starty+myy, sizex, sizey, 0, PI);
    line(startx+myx-sizex/2, starty+myy, startx+myx+sizex/2, starty+myy);
  }
  else 
  {
    //stairs(scales-1, myx+2,myy+2, startx, starty, sizex+5, sizey+5);
    rotate(PI/38);
    arc(startx+myx, starty+myy, sizex, sizey, 0, PI);
    line(startx+myx-sizex/2, starty+myy, startx+myx+sizex/2, starty+myy);
    stairs(scales-1, myx+2,myy+2, startx, starty, sizex+5, sizey+5);

  }
}

class Stars 
{
  private int myX, myY, myRadius;
  public Stars()
  {
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
    myRadius = (int)(Math.random()*5)+3;
  }
  public void show()
  {
    ellipse(myX,myY,myRadius,myRadius);
  } 
}