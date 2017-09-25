Bacteria taxi;
void setup()   
{     
  //initialize bacteria variables here   
  size(300, 300);
  background(0);
}   
void draw()   
{    
  taxi = new Bacteria();
  taxi.show();
  taxi.move();
}  
class Bacteria    
{     
  int myX, myY, myColor;   
  Bacteria()
  {
    myX = 150;
    myY = 150;
  }

  void move()
  {
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }

  void show()
  {
    ellipse(myX, myY, 50, 50);
  }
}  