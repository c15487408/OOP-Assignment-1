

void setup()
{
  size(800, 800);
  background(0);
  frameRate(100);
  
    smooth();
  font = createFont("SegoeUI-BoldItalic-48.vlw", 14);
  textFont(font);
  
  loading= loadImage("loading.jpg");
}



//MENU OPTIONS
final int stateMenu = 0;
final int stateNews = 1;
final int stateStatus = 2;
final int stateAttack = 3;
int state = stateMenu;
//
// font
PFont font;
PImage loading;








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
// the main routine. It handels the states.
  // runs again and again
  switch (state) {
  case stateMenu:
    showMenu();
    break;
  case stateNews:
    handleStateNews();
    break;
  case stateStatus:
    handlestateStatus();
    break;
      case stateAttack:
    handlestateAttack();
    break;
    
  default:
    exit();
    break;
  } // switch
  //
} // func
// ----------------------------------------------------------------
// keyboard functions

void keyPressed() {
  // keyboard. Also different depending on the state.
  switch (state) {
  case stateMenu:
    keyPressedForStateMenu();
    break;
  case stateNews:
    keyPressedForStateNews();
    break;
  case stateAttack:
    keyPressedForstateStatus();
    break;
      case stateStatus:
    keyPressedForstateAttack();
    break;
  }
}