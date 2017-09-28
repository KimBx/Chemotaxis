Bacteria [] taxi;
int x = 150;
int y = 150;
void setup()   
{     
  //initialize bacteria variables here   
  size(300, 300);
  taxi = new Bacteria[5];
  for (int i = 0; i < taxi.length; i++)
  {
    taxi[i] = new Bacteria();
  }
}   
void draw()   
{    
  for (int i = 0; i < taxi.length; i++)
  {
    taxi[i].show();
    taxi[i].move();
  }
  background(0, 0, 255);
  fill(255, 12, 123);
  ellipse(x, y, 20, 20);
}  
class Bacteria    
{     
  int myX, myY, myColor;   
  Bacteria()
  {

    myX = x;
    myY = y;
  }
  void show()
  {
  }
  void move()
  {

    x = x + (int)(Math.random()*3)-1;
    y = y + (int)(Math.random()*3)-1;
  }
}  