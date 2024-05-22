class mouse {
  int gameover;
  float x, y, w, s, xx, yy;
  mouse(float x1, float y1, float x2, float y2, float ss) { //초기값 설정
    x = x1; y = y1; xx = x2; yy = y2; s = ss;
    gameover = 0;
  }
  
  void update() { //벗어나지 못하게 하는 함수
    x = mouseX;
    y = mouseY;
    if (x+5>width) x-=10;
    if (x-10<0) x+=10;
    if (y+10>height) y-=10;
    if(y-10<height) y+=10;
  }
  
  void collide(image1 hh) { //이미지를 만났을 때
    float dx = x-hh.xx;
    float dy = y-hh.yy;
    if ((dx*dx+dy*dy < ((50+s/2)*(50+s/2))) && gameover==0) { //범위를 벗어나지 않고, 종료가 안 되었다면
      score++; //스코어 1 증가
      hh.yy+=1000; //그 먹은 이미지를 다시 위로 보내서 내려오게 함
      if (score == 10) { s+=7;}
      else if (score ==20) { s+=7;}
      else if (score == 30) {s+=7;}
      else if (score == 40) {s+=7;}
      else if (score == 50) {s+=7;}
      else if (score == 60) {s+=7;}
      else if (score == 70) {s+=7;}
      else if (score == 80) {s+=7;}
      //s+=5;//같은 위치에서 내려오지 않게 임의로 설정 + mouse 크기
    }
  }
  
  void collide(poison bb) { //독을 만났으면 종료시킴
    float dx = x-bb.xx;
    float dy = y-bb.yy;
    if (dx*dx + dy*dy < ((50+s/2)*(50+s/2))) gameover=1; 
  }
  
  void display() {
    noStroke();
      //ear
      
    fill(#F2A7BB);
    stroke(#050304);
    circle(x-15-s/5,y-27-s/6,30+s/6);
    circle(x+15+s/5,y-27-s/6,30+s/6);
    
    //face
    noStroke();
    fill(#D98F07);
    stroke(#050304);
    circle(x,y,60+s);
    
    //mouth - BLACK
    fill(#050304);
    stroke(#050304);
    ellipse(x,y+10+s/6,30+s/2,25+s/3*1.25);
    
    //mouse - PINK
    noStroke();
    fill(#F2A7BB);
    ellipse(x,y+15+s/6,25+s/2,20+s/3*1.25);
    
    //eye
    fill(#050304);
    stroke(#050304);
    circle(x-12-s/5,y-10-s/6,10+s/6);
    circle(x+12+s/5,y-10-s/6,10+s/6);
  

  }
}
