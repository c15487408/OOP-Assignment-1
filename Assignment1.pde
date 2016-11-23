

void setup()
{
  size(1200, 800);
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
    text("STARTING SYSTEM...",407, height *0.5); 
   

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
  } 
  
} 

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
    
  default:
    exit();
    break;
  } 
} 
void keyPressedForStateMenu() {
  
  switch(key) {
  case '1':
    state = stateNews;
    break;
  case '2':
    state = stateStatus;
    break;
      case '3':
    state = stateAttack;
    break;
    
  case 'x':
  case 'X':
    // quit
    exit();
    break;
  default:
    
    break;
  }
} 
void keyPressedForStateNews() {
 
  switch(key) {
  default:
    state = stateMenu;
    break;
  } 
 
}
void keyPressedForstateStatus() {
  
  switch(key) {
  default:
    state = stateMenu;
    break;
  } 
  
} 

void keyPressedForstateAttack() {

  switch(key) { //anykey
  default:
    state = stateMenu;
    break;
  } 
  
} 



void showMenu() {
  background(0);
  fill(90,205,255);
  textSize(28);
  text(" Hello sir. Please use numbers to Navigate the menu.", 90, 150, 4);
  textSize(14);
  text("Press 1 News ", 150, 200);
  text("Press 2 Stats ", 150, 220);
  text("Press 3 See Attack ", 150, 240);
  
  
  text("Press q to quit ", 150, 280);
  
} 


void showMenu() {
  background(0);
  fill(90,205,255);
  textSize(28);
  text(" Hello sir. Please use numbers to Navigate the menu.", 90, 100, 3);
  textSize(14);
  text("Press 1 News ", 100, 200);
  text("Press 2 Stats ", 100, 220);
  text("Press 3 See Attack ", 100, 240);
  
  
  text("Press x to quit ", 100, 280);
  
} 

void handleStateNews() {
  background(255, 204, 0);
  fill(0);
  textSize(32);
  text(" News ", 150, 100, 3);

 
} 