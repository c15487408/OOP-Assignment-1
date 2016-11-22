

void setup()
{
  size(800, 800);
  background(0);
  frameRate(100);
  
}
int fcount = frameCount;

void draw()
{
  loadScreen();
  //drawSquares();
  println(frameCount);
}
void loadScreen()
{
  if (frameCount<300)
  {
  background(0);
    textSize(32);
     fill(255);
    text("LOADING...",320, height *0.5); 
   

    pushMatrix();
    translate(width*0.5, height *0.5);
    rotate(frameCount / 20.0);
     
    fill(255, 0, 0);
    ellipse(120, 100, 60, 60); 
    popMatrix();
  } 
}