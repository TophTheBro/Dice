void setup() {
  size(600, 600); 
  noLoop();
}

void draw() {
  int outputValue = 0;
  background(0, 255, 0);
  for (int y = 65; y < 580; y += 60) {
    for (int x = 5; x < 580; x += 60) {
      Die One = new Die(x, y);
      One.roll();
      One.display();
      outputValue += One.dots;
    }
  }
  fill(0,0,0);
  textSize(30);
  text("You Rolled " + outputValue,170,40);
}

void mousePressed(){
  redraw();
}

class Die {
  int myX, myY, dots;
  Die(int x, int y) {
    myX = x;
    myY = y;
  }
  void roll() {
    dots = (int)(Math.random() * 6) + 1;
  }
  void display() {
    fill(255, 255, 255);
    rect(myX, myY, 50, 50, 10);
    fill(0,0,0);
    if (dots == 1) {
        ellipse(myX + 25, myY + 25, 7, 7);
      } else if (dots == 2) {
        ellipse(myX + 15, myY + 15, 7, 7);
        ellipse(myX + 35, myY + 35, 7, 7);
      } else if (dots == 3) {
        ellipse(myX + 12, myY + 37, 7, 7);
        ellipse(myX + 25, myY + 25, 7, 7);
        ellipse(myX + 37, myY + 12, 7, 7);
      } else if (dots == 4) {
        ellipse(myX + 15, myY + 15, 7, 7);
        ellipse(myX + 15, myY + 35, 7, 7);
        ellipse(myX + 35, myY + 15, 7, 7);
        ellipse(myX + 35, myY + 35, 7, 7);
      } else if (dots == 5) {
        ellipse(myX + 12, myY + 12, 7, 7);
        ellipse(myX + 12, myY + 37, 7, 7);
        ellipse(myX + 37, myY + 12, 7, 7);
        ellipse(myX + 37, myY + 37, 7, 7);
        ellipse(myX + 25, myY + 25, 7, 7);
      } else {
        ellipse(myX + 12, myY + 12, 7, 7);
        ellipse(myX + 12, myY + 37, 7, 7);
        ellipse(myX + 37, myY + 12, 7, 7);
        ellipse(myX + 37, myY + 37, 7, 7);
        ellipse(myX + 12, myY + 25, 7, 7);
        ellipse(myX + 37, myY + 25, 7, 7);
      }
  }
}
