int[][] board = new int[3][3];
int turn = 1;

void setup() {
  size(400, 400);
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      board[i][j] = 0;
    }
  }
}

void draw() {
  background(255);
  strokeWeight(4);
  stroke(0);
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      rect(i * 150, j * 150, 150, 150);
      if (board[i][j] == 1) {
        line(i * 150 + 25, j * 150 + 25, i * 150 + 125, j * 150 + 125);
        line(i * 150 + 125, j * 150 + 25, i * 150 + 25, j * 150 + 125);
      } else if (board[i][j] == 2) {
        ellipse(i * 150 + 75, j * 150 + 75, 100, 100);
      }
    }
  }
  checkWin();
}

void mousePressed() {
  int i = mouseX / 150;
  int j = mouseY / 150;
  if (board[i][j] == 0) {
    board[i][j] = turn;
    turn = turn % 2 + 1;
  }
}


