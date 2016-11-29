

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

//VARIABLES FOR ASTROID GAME IN ATTACK STATE
//initialise score variable
int score;
int astroidSize = 20;
  boolean shoot = false;
  
  //Initialise youFailed variable
 int youFailed = 0;
 
 //int startGame;
  int getRandomX()
  
  
 // int score;
  {
    return int(random(600));
  }
  
  int[] astroid1 = { getRandomX(), getRandomX(), getRandomX(), getRandomX(), getRandomX(),getRandomX(),getRandomX(),getRandomX(),getRandomX(),getRandomX(),getRandomX() };
  int[] astroid2 = { 0, 0, 0, 0, 0, 0, 0,0, 0, 0,  };


//Pie chart
int a1 = int(random(250,295));
int a2 = int(random(300,350));
int a3= int(random(290,330));
int a4= int(random(340,350));

int[] angle1 = { a1};
int[] angle2 = { a2 };
int[] angle3 = { a3 };
int[] angle4 = { a4 };



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
    background(0);
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

        textSize(25);
     fill(255);
    text("WORLD NEWS",180, 200); 
     textSize(20);
     fill(255);
    text("Press 1",180, 230); 

    pushMatrix();
    translate(width*0.2, height *0.25);
    rotate(frameCount / 30.0);
     
    fill(255, 0, 0);
    ellipse(140, 110, 60, 60); 
    popMatrix();
    
     textSize(25);
     fill(255);
    text("STATUS",180, 600); 
     textSize(20);
     fill(255);
    text("Press 2",180, 630); 

    pushMatrix();
    translate(width*0.2, height *0.75);
    rotate(frameCount / 32.0);
     
    fill(255, 0, 0);
    ellipse(140, 110, 60, 60); 
    popMatrix();
    
    pushMatrix();
translate(width*0.75,height*0.3);
rotate(frameCount / 32.0);
triangle(-200, 200, 0, -200, 200, 200); 
popMatrix();
         textSize(18);
     fill(255);
    text("ATTACK MODE",820, 265); 
     textSize(19);
     fill(255);
    text("Press 3",840, 280); 

  


  
} 


 

void handleStateNews() {
  background(255);
  fill(90,205,255);
  textSize(32);
  text(" News ", 150, 100, 3);
   
  


 
} 
void pieChart(float diameter, int[] data) {
  float lastAngle = 0;
  for (int i = 0; i < data.length; i++) {
    float gray = map(i, 0, data.length, 0, 255);
    fill(gray);
    arc(200, 200, diameter- 25, diameter-25, lastAngle, lastAngle+radians(angle1[i]));
    lastAngle += radians(angle1[i]);
    
  }
}
void pieChart2(float diameter, int[] data) {
  float lastAngle = 0;
  for (int i = 0; i < data.length; i++) {
    float gray = map(i, 0, data.length, 0, 255);
    fill(gray);
    arc(200, 600, diameter- 25, diameter-25, lastAngle, lastAngle+radians(angle2[i]));
    lastAngle += radians(angle2[i]);
    
  }
}
void pieChart3(float diameter, int[] data) {
  float lastAngle = 0;
  for (int i = 0; i < data.length; i++) {
    float gray = map(i, 0, data.length, 0, 255);
    fill(gray);
    arc(900, 600, diameter- 25, diameter-25, lastAngle, lastAngle+radians(angle3[i]));
    lastAngle += radians(angle3[i]);
    
  }
}
void pieChart4(float diameter, int[] data) {
  float lastAngle = 0;
  for (int i = 0; i < data.length; i++) {
    float gray = map(i, 0, data.length, 0, 255);
    fill(gray);
    arc(900, 200, diameter- 25, diameter-25, lastAngle, lastAngle+radians(angle4[i]));
    lastAngle += radians(angle4[i]);
    
  }
}
void handlestateStatus() {
  background(255,0, 0);
  pieChart(300, angle1);
  pieChart2(300, angle2);
  pieChart3(300, angle3);
  pieChart4(300, angle4);

        textSize(19);
     fill(255);
    text("Feul",180, 220); 
    

 
  


  
} 
void handlestateAttack() {
 background (0);
    fill(255);
    strokeWeight(2);
    stroke (0,0,160);
    fill(0, 162, 232);
    triangle(mouseX-8, 780, mouseX+8, 780, mouseX, 765);
    // display score
    fill(255);
    text(score, 20,20);
    if(shoot)
    {
      Gun(mouseX);
      shoot = false;
    }
  
     astroidAttack();
     gameOver();  
  }
  
  

 
  void mousePressed()
  {
    shoot = true;
  }
  
  void astroidAttack()
  {  
    strokeWeight(2);
    stroke(255, 203, 26); 
    fill (255,0,0); 
    
    for (int i=0; i<5; i++)
    {
      ellipse(astroid1[i], astroid2[i]++, astroidSize, astroidSize);
    }
  }

void Gun(int shotX)
  {
    boolean strike = false;
    for (int i = 0; i < 5; i++)
    {
      if((shotX >= (astroid1[i]-astroidSize/2)) && (shotX <= (astroid1[i]+astroidSize/2))) {
        strike = true;
        line(mouseX, 565, mouseX, astroid2[i]);
        ellipse(astroid1[i], astroid2[i],
                astroidSize+25, astroidSize+25);
        astroid1[i] = getRandomX();
        astroid2[i] = 0;


// update score
        score++;
      }    
    }
  
    if(strike == false)
    {
      line(mouseX, 565, mouseX, 0);
    }  
  
  }
    void gameOver()
  {
    for (int i=0; i< 5; i++)
    {
      if(astroid2[i]==800)
      {

    
        fill(color(255,0,0));
     fill(255, 0, 0);
    textAlign(CENTER);
    text("ASTROID HIT CITY!", width/2, height/2);
    text("Amount of Astroids hit:   "+ score, width/2, height/2 + 50);
    text("Get more next time!", width/2, height/2 + 70);
      
     noLoop();  

  
       }
      }
    }