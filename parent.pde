//주로 사용하는 속도, move, display 등을 몰아 넣은 함수
class parent {
    float xx,yy,w,speed;
        
    PImage img;
    
    parent() {
      xx = random(width);
      yy = random(height);
      speed = random(5,8);
      w=60;
    };

    
    //falling
    void move() {
      yy += speed;
      if(yy>height) yy = -300;
    }
    
    void display() {
      image(img, xx, yy, w, w);
    }
}
