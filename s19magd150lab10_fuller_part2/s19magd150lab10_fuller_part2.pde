PImage texture;
PShape shape;
float u, v, uO, vO, cameraZ, cameraX, cameraY, fov;

void setup() {
  size(500, 500, P3D);
  texture = loadImage("texture.png");
  shape = loadShape("star.obj");
  background(0);
  textureMode(NORMAL);
  textureWrap(REPEAT);
  u = 1;
  v = 1;
  fov = PI/3.0;
  cameraX = width/2.0;
  cameraY = height/2.0;
  cameraZ = (height/2.0) / tan(fov/2.0);
}

void draw(){
  background(0);
  ambientLight(100, 100, 188);
  directionalLight(188, 100, 100, -1, -1, -1);
  directionalLight(188, 100, 100, 1, 1, 1);

  perspective(fov, float(width)/float(height), 
             cameraZ/10.0, cameraZ*10.0);
             
  camera(cameraX, cameraY, cameraZ, 
    width/2.0, height/2.0, 0, 
    0, 1, 0);

//Sphere
  translate(width/4, height/2, 0);
  noStroke();
  fill(255);
  PShape sphere = createShape(SPHERE, 75);
  sphere.setTexture(texture);
  shape(sphere);

//Box
  translate(width/4, 0, 0);
  PShape cube = createShape(BOX, 75, 75, 50);
  cube.setTexture(texture);
  shape(cube);
  

//3D Mesh
  pushMatrix();
  
  translate(0, -(height/4), 0);
  scale(50);
  
  beginShape();
  texture(texture);
  vertex(-1, -1, 1, uO, vO);
  vertex(1, -1, 1, uO + u, vO);
  vertex(1, 1, 1, uO + u, vO +v);
  vertex(-1, 1, 1, uO, vO + v);  
  endShape(CLOSE);
  
  popMatrix();

//Loaded PShape
  translate(width/4, 0, 0);
  scale(7);
  rotateZ(PI/2);
  rotateX(PI/2);
  shape.setTexture(texture);
  shape(shape);
  
}

void mouseReleased(){
  if (mouseButton == LEFT) {
    cameraX = cameraX + 30;
    cameraZ = cameraZ + 10;
  }else{
    cameraX = cameraX - 30;
    cameraZ = cameraZ - 10;
  }
}
