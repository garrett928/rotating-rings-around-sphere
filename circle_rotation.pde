import damkjer.ocd.*;

//draw a circle1 on the screen and rotate it 
PShape circle1;
PShape circle2;
PShape circle3;
PShape center;
int angle = 0;

static float xCenter = 250;
static float yCenter = 200;
static float zCenter = 0;
static float eyeX = 300.0;
static float eyeY = 300.0;
static float eyeZ = 1000.0;
Camera cam;
void setup() {
  size(600, 600, P3D);
  background(200);
  ellipseMode(CENTER);
  translate(300, 300);


  cam = new Camera(this, 
    0, 0, 700, 0, 0, 0);

  circle1 = createShape(ELLIPSE, 0, 0, 300, 300);
  circle1.setFill(false);
  circle1.setStroke(true);

  circle2 = createShape(ELLIPSE, 0, 0, 290, 290);
  circle2.setFill(false);
  circle2.setStroke(true);

  circle3 = createShape(ELLIPSE, 0, 0, 280, 280);
  circle3.setFill(false);
  circle3.setStroke(true);
}
//(x – h)2 + (y – k)2 = r2, h,k = center point 
void draw() {
  //eyeY= 50;
  translate(300, 300);
  if (keyPressed) {
    if (key == 'd') {
      cam.circle(radians(10));
    }
    if (key == 'a') {
      cam.circle(radians(-7));
    }
  }

  cam.feed();

  int ranX = floor(random(2.5, 7)/2);
  int ranY = floor(random(2.5, 7)/2);
  int ranZ = floor(random(2.5, 7)/2);

  background(200);

  noStroke();
  lights();
  fill(color(0, 0, 200));
  sphere(50);  

  translate(-165, 0);
  sphere(10);

  translate(330, 0);
  sphere(10);

  translate(-165, 0);
  
  shape(circle1, 0, 0);
  circle1.rotateX(radians(ranX));
  circle1.rotateY(radians(ranY));
  circle1.rotateZ(radians(ranZ));

  ranX = floor(random(2.5, 7)/2);
  ranY = floor(random(2.5, 7)/2);
  ranZ = floor(random(2.5, 7)/2);

  shape(circle2, 0, 0);
  circle2.rotateX(radians(ranX)/2);
  circle2.rotateY(radians(ranY)/2);
  circle2.rotateZ(radians(ranY)/2);

  ranX = floor(random(2.5, 7));
  ranY = floor(random(2.5, 7));
  ranZ = floor(random(2.5, 7));

  shape(circle3, 0, 0);
  circle3.rotateX(radians(ranX));
  circle3.rotateY(radians(ranY));
  circle3.rotateZ(radians(ranY));
}