//시작하는 클래스, show 변수 핵심


class start
{
  int show;
  float x,y;
  
  start() {
    show=0;
    x=width/2;
    y=height/2;

  }

  
  void display() {
    if(show==0) { //show가 초기 값일 때는 첫 번째 화면을
     
      background(#FCF5CF);

      
      PImage photo;
      photo = loadImage("20zerry.png");
      image(photo,135,25);
      
      
      //Title
      textAlign(CENTER);
      textSize(60);
      fill(#7D7A66);
      text("Avoid poison and eat food ", width/2+3, height/2+166);
      fill(#FDEB83);
      text("Avoid poison and eat food", width/2, height/2+163);
      
      //start button
      fill(#FDEB83);
      noStroke();
      rect(250, 680, 200, 100, 20);
      
      //start
      fill(255,255,255);
      textSize(60);
      text("Play",350,747);
      if(mousePressed && (mouseX>250 && mouseX<450) && (mouseY>680 && mouseY<780)) {
        show=1; //play 버튼을 누르면 시작을
      }
    }
  }
}
