Bacteria [] taxi;

int x = 0;
int y = 0;

void setup()   
{     
  background(255); 
  size(500, 500);
  taxi = new Bacteria[50];
  for (int i = 0; i < taxi.length; i++)
  {
    taxi[i] = new Bacteria();
  }
}   
void draw()   
{    
  for (int i = 0; i <  taxi.length; i++)
  {
    taxi[i].show();
    taxi[i].move();
  }
}  



class Bacteria    
{     
  int myX, myY, myColor;   
  Bacteria()
  {

    myX = x;
    myY = y;
    myColor = color((int)(Math.random()*156)+50, (int)(Math.random()*156)+50, (int)(Math.random()*156)+50);
  }
  void show()
  {

    fill(myColor);
    ellipse(myX, myY, 20, 20);
  }

  void move()
  {

    myX = myX + (int)(Math.random()*5);
    myY = myY + (int)(Math.random()*3)+1;
  }
}