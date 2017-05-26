//draw a circle1 on the screen and rotate it 
PShape circle1;
PShape circle2;
PShape circle3;
PShape center;
int angle = 0;
   float  orbitRadius= 300;

static int rotation = 0;
static float xCenter = 250;
static float yCenter = 200;
static float zCenter = 0;
static float eyeX = 300.0;
static float eyeY = 300.0;
static float eyeZ = 1000.0;

void setup() {
    size(600,600, P3D);
  background(200);
  ellipseMode(CENTER);

  //camera(eyeX, eyeY, eyeZ, 300.0, 300.0, -75.0, 
  //     0.0, 1.0, 0.0);

  circle1 = createShape(ELLIPSE,0,0,300,300);
  circle1.setFill(false);
  circle1.setStroke(true);

  circle2 = createShape(ELLIPSE,0,0,290,290);
  circle2.setFill(false);
  circle2.setStroke(true);
  
  circle3 = createShape(ELLIPSE,0,0,280,280);
  circle3.setFill(false);
  circle3.setStroke(true);
  
 
 
}
 //(x – h)2 + (y – k)2 = r2, h,k = center point 
void draw() {
     //eyeY= 50;
     println("y:" + eyeY);
     println("orbit:" + orbitRadius);
     eyeX= cos(radians(rotation))*orbitRadius;
     eyeY= sin(radians(rotation))*orbitRadius;
      
    

  
   camera(eyeX, eyeY, eyeZ, xCenter, yCenter, zCenter, 
       0.0, 0, -1.0);
  
  int ranX = floor(random(2.5, 7)/2);
  int ranY = floor(random(2.5, 7)/2);
  int ranZ = floor(random(2.5, 7)/2);

  background(200);
  
  translate(300, 300);
  noStroke();
  lights();
  fill(color(0,0,200));
  sphere(50);  

    
  
  
  shape(circle1,0, 0);
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
  

  rotation ++;
}