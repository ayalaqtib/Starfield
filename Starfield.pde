
Particle[] my_pars = new Particle[600];

//int count = 10;

void setup()
{
  size(800, 800);
  noStroke();

  for(int i = 0; i < 80; i++){
    my_pars[i] = new oddBallParticle(400, 400);
  }

  for(int i = 80; i < my_pars.length; i++){
    my_pars[i] = new Particle(400, 400, 100);
  }
}

void draw()
{
  background(0, 0, 0);

  for(int i = 0; i < my_pars.length; i++){
    my_pars[i].move();
    my_pars[i].show();
  }
}

void mousePressed(){
  
    color c = color(
      (int)(Math.random() * 255),
      (int)(Math.random() * 255),
      (int)(Math.random() * 255)
    );
    
    
  
  for(int i = 0; i < 80; i++){
    my_pars[i] = new oddBallParticle(mouseX, mouseY);
  }
  
  for(int i = 10; i < my_pars.length; i++){
     my_pars[i] = new Particle(mouseX, mouseY, c);
   }
  
    
  for(int i = 10; i < my_pars.length; i++){
   my_pars[i] = new Particle(mouseX, mouseY, c);
    
  }

}

class Particle
{
  double myX, myY, mySpeed, myAngle;
  color myColor;

  Particle(double x, double y, color c){
    myX = x; // mouseX
    myY = y; // mouseY
    mySpeed = (double)(Math.random() * 30);
    myAngle = (double)(Math.random() * 2 * Math.PI);
    myColor = c;
  }
  void move(){
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }

  void show(){
    fill(myColor);
    ellipse((float)myX, (float)myY, 3, 3);
  }
}

class oddBallParticle extends Particle
{
  oddBallParticle(double x, double y){
    super(x, y, color(255,0,0));//calls constructor of parent class
    mySpeed = (double)(Math.random() * 30);
    myAngle = (double)(Math.random() * 2 * Math.PI);
    myColor = color(255, 0, 0);
  }

  void show(){
    fill(myColor);
    ellipse((float)myX, (float)myY, 7, 7);
  }
}
