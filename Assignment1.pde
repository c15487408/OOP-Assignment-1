

void setup()
{
  size(800, 800);
  background(0);
  frameRate(100);
  
    smooth();
  font = createFont("SegoeUI-BoldItalic-48.vlw", 14);
  textFont(font);
  

}




final int stateMenu = 0;
final int stateNews = 1;
final int stateVitals = 2;
int state = stateMenu;
//
// font
PFont font;







void draw()
{
  loadScreen();
  
}
void loadScreen()
{
  if (frameCount<300)
  {

    textSize(38);
     fill(255);
    text("STARTING SYSTEM...",220, height *0.5); 
   

    pushMatrix();
    translate(width*0.5, height *0.5);
    rotate(frameCount / 20.0);
     
    fill(255, 0, 0);
    ellipse(200, 180, 60, 60); 
    popMatrix();
  } 
    else
  {
    mainPage();
  }
}
void mainPage(){
}