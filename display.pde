//display -> 전반적인 display를 설정해주는 함수

PImage photo;
PImage tomandjerry;

import processing.sound.*;
SoundFile sound;

int score = 0;
int image = 20; //image h_num
int poi = 7; //posion d_num

poison poison[] = new poison[poi]; 
image1 image1[] = new image1[image];
start start[] = new start[1];
mouse mouse[] = new mouse[1];

void reset() {
  int score = 0;
int image = 20; //image h_num
int poi = 7; //posion d_num

poison poison[] = new poison[poi]; 
image1 image1[] = new image1[image];
start start[] = new start[1];
mouse mouse[] = new mouse[1];}


void setup()
{
  fullScreen();
  size(700,900);
  sound = new SoundFile(this, "24.mp3");
  sound.play();
  for(int i=0; i<image; i++) image1[i] = new image1(); //사진 개수 초기화
  for(int i=0; i<poi; i++) poison[i] = new poison(); //독 초기화
  mouse[0] = new mouse(width/2, 4.3*height/5, 10, 10, 1); //초기 쥐
  start[0] = new start();
  photo = loadImage("22tom.png"); //끝났을 떄 나오는 사진
}

void draw()
{
  tomandjerry = loadImage("21tomAJerry_2.png");
  background(tomandjerry);
  start[0].display();
  if (start[0].show ==1) { //초기에서 play 버튼을 눌렀다면
    //score display
    textAlign(LEFT);
    fill(255);
    textSize(50);
    text("Score : " + (int)score, 50, 50); //스코어 왼 쪽 위
     
    
    //image1 display
    for(int i=0; i<image; i++) {
      image1[i].display(); 
      image1[i].move();
    }
    
    //poisn display
    for(int i=0; i<poi; i++) {
     poison[i].display();
      poison[i].move();
    }
    
    //mouse display
    mouse[0].display();
    mouse[0].update();
    
    //mouse&image1 collide
    for(int j=0; j<image;j++) mouse[0].collide(image1[j]); //그 이미지랑 충돌했을 때 score 값 계산
    
    //mouse&poisom collide
    for(int i=0; i<poi; i++) {
      mouse[0].collide(poison[i]); //poison이랑 충돌했을 때 처리해주는 함수 -> gameover
      
      if(mouse[0].gameover ==1) { //rect 초기화
        fill(125,125,125,10);
        noStroke();
        rect(0,0,1000,1000);
        //tom
        image(photo, 200, 110, 300, 300);
        
        //gameover
        textAlign(CENTER);
        textSize(100);
        fill(229,133,211);
        text("\"Game Over!\"", width/2+3, 500+3);
        fill(255,255,255);
        text("\"Game Over!\"", width/2, 500);
        
        //score
        textSize(50);
        fill(#733043);
        text("You ate " + score + " foods.", width/2, 580);
        
                
        //restart button
        fill(255,181,198);
        noStroke();  
        rect(250,620,200,100,20);
        fill(255,255,255);
        textSize(50);
        text("replay", 350, 685);
        if(mousePressed && (mouseX > 250 && mouseX<450) && (mouseY>590 && mouseY<700)) {       
          score = 0;
          mouse[0] = new mouse(width/2, 4.3*height/5, 10, 10, 1);
          start[0] = new start();
          sound.stop();
          sound = new SoundFile(this, "24.mp3");
          sound.play();
        }

        //exit button
        fill(255,181,198);
        noStroke();  
        rect(250,760,200,100,20);
        fill(255,255,255);
        textSize(50);
        text("Exit",350, 830 );
        if(mousePressed && (mouseX > 250 && mouseX<450) && (mouseY>750 && mouseY<930)) {
          exit();
        }

      }
    }
  }
}
