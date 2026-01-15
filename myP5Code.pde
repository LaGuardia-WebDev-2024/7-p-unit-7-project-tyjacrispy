//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here

var Nose = 50

var BallUp = 200

var BallDown = 200

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);

 


fill(137,207,240)
  ellipse(265,350,60,100); //left leg
  ellipse(335,350,60,100); //right leg


  fill(255,0,0)
  ellipse (240,385,100,40); //left foot
ellipse (360,385,100,40); //right foot


ellipse(250,225,100,40); //left arm
ellipse(350,225,100,40); //right arm

fill(255,255,255)
ellipse(210,225,40,40); //left hand
ellipse(395,225,40,40); //right hand

fill (255,255,0)
  ellipse(300,275,100,175); //clown body

fill(255,255,255)
ellipse(300,150,150,150); //head



fill(0,0,0)
ellipse(265,125,35,35); //left eye black
ellipse(335,125,35,35); //right eye black


fill(255,255,0)
ellipse(265,125,25,25); //left eye yellow
ellipse(335,125,25,25); //right eye yellow

fill(255,0,255)
ellipse(210,BallUp,20,20); //purple ball
fill(255,105,180)
ellipse(395,BallDown,20,20); //pink ball

fill(255,0,0)
ellipse(300,175,Nose,Nose); //Nose




  if(mousePressed){showXYPositions();
  Nose = Nose+2
  }

  if(keyPressed){
      if(key == 't' || key == 'T'){
      BallDown += 2;
      }
      if(key == 't' || key == 'T'){
      BallUp -= 2;
      }
  }


 if(keyPressed){
      if(key == 'f' || key == 'F'){
      BallDown -= 2;
      }
      if(key == 'f' || key == 'F'){
      BallUp += 2;
      }
  }

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}

void keyPressed(){
  if(key == 'c' || key == 'C'){
   BallDown += 2;
  }

  if(key == 'r' || key == 'R'){
    fillR = random(100,255);
    fillG = 0;
    fillB = 0;
  }

  if(key == 'g' || key == 'G'){
    fillR = 0;
    fillG = random(100,255);
    fillB = 0;
  }
}
