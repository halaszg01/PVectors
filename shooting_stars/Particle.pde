class Particle
{
  PVector pos;
  color c;
  PVector dir;

  Particle()
  {
    pos= new PVector(random(width),(random(height)));
    c= color(255, 255, 255);
    dir = new PVector(2, 0);
  }

  void Render()
  {
    fill(c);
    ellipse(pos.x, pos.y, 10, 10);
  }
  void Update()
  {
   PVector mouse=new PVector (-1000,800); 
  dir=mouse.sub(pos);
  dir.normalize();
  pos.add(dir);
  noStroke();
  fill(c);
    pos.add(dir);
    dir.add(0, .08);
    if (pos.y>height||pos.x<0)
    {
      pos = new PVector(random(500,3000),random(-400,0));
      dir= new PVector(random(-2, 2), random(-5, -1));
    }
  }  
  Particle(float posX, float posY)
  {
    pos= new PVector(posX, posY);
    c=color(255, 255, 255);
    dir = new PVector(random(-2, 2), random(-5, -1));
  }
}