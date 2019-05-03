size(900, 500);
background(140, 210, 255, 170);

noStroke();
colorMode(HSB, 255);
fill(40, 255, 255);
quad(200, 250, 180, 300, 200, 375, 220, 300);

colorMode(RGB, 255);
fill(#40AA90);
triangle(475, 75, 550, 200, 625, 75);
fill(#40DDDD);
triangle(485, 80, 550, 190, 615, 80);

noFill();
stroke(#000000);
bezier(550, 195, 450, 200, 650, 400, 350, 450);
bezier(200, 368, 180, 375, 250, 425, 190, 450);
