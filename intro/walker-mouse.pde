class Walker{
  int x;
  int y;

  Walker(){
    x = width/2;
    y = height/2;
  }

  void display(){
    stroke(0);
    point(x, y);
  }

  void step(){
    float r = random(1);
    if(r < 0.5){
      if (x > mouseX) {
        x--;
      } else {
        x++;
      }
      if(y > mouseY){
        y--;
      } else{
        y++;
      }
    } else if (r < 0.625){
      x++;
    } else if (r < 0.75){
      x--;
    } else if (r < 0.865){
      y++;
    } else {
      y--;
    }
  }

}


void setup(){
  size(600, 600);
  w = new Walker();
  background(255);
}

void draw(){
  w.step();
  w.display();
}