public void setup()
{
  size(800,800);
}
public void draw()
{
  background(0);
  int x = 0;
  int y = 800;
  int len = 800;
  sierpinski(x, y, len);
}

public void sierpinski(int x, int y, int len) 
{
  if (len < 5){
    fill(255);
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
