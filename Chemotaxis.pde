Bacteria [] taxi;
Bacteria [] bus;
int x = 0;
int y = 0;
int oneX = 500;
int oneY = 500;
void setup()   
{     
  background(255); 
  size(1000, 1000);
  taxi = new Bacteria[50];
  for (int i = 0; i < taxi.length; i++)
  {
    taxi[i] = new Bacteria();
  }
  bus = new Bacteria[50];
  for (int j = 0; j < bus.length; j++)
  {
    bus[j] = new Bacteria();
  }
}   
void draw()   
{    
  for (int i = 0; i <  bus.length; i++)
  {
    taxi[i].show();
    taxi[i].move();
  }
  for (int j = 0; j <  bus.length; j++)
  {
    bus[j].show2();
    bus[j].move();
  }
}  



class Bacteria    
{     
  int myX, myY, meX, meY, myColor;   
  Bacteria()
  {
    meX = oneX;
    meY = oneY;
    myX = x;
    myY = y;
    myColor = color((int)(Math.random()*156)+50, (int)(Math.random()*156)+50, (int)(Math.random()*156)+50);
  }
  void show()
  {

    fill(myColor);
    ellipse(myX, myY, 20, 20);
  }
  void show2()
  {
     fill(myColor);
    ellipse(meX, meY, 20, 20);
  }
  
  void move()
  {

    myX = myX + (int)(Math.random()*5);
    myY = myY + (int)(Math.random()*3)+1;
  }

   void move2()
  {

    meX = meX + (int)(Math.random()*-5);
    meY = meY + (int)(Math.random()*3)+1;
  }

}  