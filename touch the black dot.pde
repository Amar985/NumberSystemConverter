int score = 0;
float x = 100;
float y = 100;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  ellipse(x, y, 50, 50);
  fill(0);
  text("Score: " + score, 10, 20);
}

void mousePressed() {
  if (dist(mouseX, mouseY, x, y) < 25) {
    score++;
    x = random(width);
    y = random(height);
  }
}
