PVector pos;
float runSpeed=2;
Particle P =new Particle();
Particle[] Stars = new Particle[150];
void setup()
{
  size(800, 800);
  pos = new PVector(width/2, height/2);
  for (int i=0; i<150; i++)
  {
    Stars[i] = new Particle();
  }
}
void draw()
{
  
  fill(100, 100, 100, 5);
  rect(0, 0, width, height);
  P.Render();
  P.Update();
  for (int i=0; i<100; i++)
  {
    Stars[i].Render();
    Stars[i].Update();
  
  }
  fill(255,30);
  ellipse(270,370,190,190);
  fill(255);
  ellipse(270,370,100,100);
  fill(30,30,30);
  triangle(0,300,400,800,0,800);
  fill(30,30,30);
  triangle(400,200,800,800,50,800);
  fill(30,30,30);
  triangle(200,300,500,800,-100,800);
  fill(30,30,30);
  triangle(700,200,400,800,1000,800);
  
  
}