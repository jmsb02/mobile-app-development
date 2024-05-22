//image -> 랜덤으로 이미지를 추출해주는 함수

class image1 extends parent {
  image1()
  {
    super();
    float rdn = random(1,20);
    if ((rdn>=1)&(rdn<2)) {img = loadImage("1chicken.png");}
    else if ((rdn>=2)&(rdn<3)) {img = loadImage("2blacktea.png");}  
    else if ((rdn>=3)&(rdn<4)) {img = loadImage("3Cake.png");}  
    else if ((rdn>=4)&(rdn<5)) {img = loadImage("4pizza.png");}   
    else if ((rdn>=5)&(rdn<6)) {img = loadImage("5fried.png");}
    else if ((rdn>=6)&(rdn<7)) {img = loadImage("6soup.png");}
    else if ((rdn>=7)&(rdn<8)) {img = loadImage("7bacon.png");}
    else if ((rdn>=8)&(rdn<9)) {img = loadImage("8Cheese.png");}
    else if ((rdn>=9)&(rdn<10)) {img = loadImage("9skewers.png");}
    else if ((rdn>=10)&(rdn<11)) {img = loadImage("10meat.png");}
    else if ((rdn>=11)&(rdn<12)) {img = loadImage("11cookie.png");}
    else if ((rdn>=12)&(rdn<13)) {img = loadImage("12cupcake.png");}
    else if ((rdn>=13)&(rdn<14)) {img = loadImage("13Sandwich.png");}
    else if ((rdn>=14)&(rdn<15)) {img = loadImage("14apple.png");}
    else if ((rdn>=15)&(rdn<16)) {img = loadImage("15pear.png");}
    else if ((rdn>=16)&(rdn<17)) {img = loadImage("16bread.png");}
    else if ((rdn>=17)&(rdn<18)) {img = loadImage("17grapes.png");}
    else if ((rdn>=18)&(rdn<19)) {img = loadImage("18banana.png");}
    else if ((rdn>=19)&(rdn<20)) {img = loadImage("19watermelon.png");}
  }
}
