import processing.sound.*;
SoundFile file;
StartingScene s;
float Xs [] = new float [25];
float Ys [] = new float [25];
float speed[] = new float [25];
PImage car;
PImage wet;
PImage drop;
PImage jungle;
float jeepX=200;
float jeepY=500;
int Scene = 0; 
PFont f;
void setup()
{
  size (800, 800);
  //song
  file = new SoundFile(this, "fade.mp3");
  file.play();
  s = new StartingScene();
  jungle = loadImage ("forest.jpg");
  jungle.resize(800, 800);
  car = loadImage ("jeep.png");
  for (int i=0; i<25; i++)
  {
    Xs[i] = random(0, 800);
    Ys[i] = random(-600, 200);
    //speed of raindrops
    speed[i]=random(2, 5);
  }
  //raindrops
  drop = loadImage ("raindrop.png");
  drop.resize(50, 50);
}

void draw()

{
  if (Scene ==4 )
  {
    background(0, 0, 0);
    textSize(50);
    text ("You Win", 325, 400);
  }
  if (Scene == 3)
  {
    background(0, 0, 0);
    textSize(50);
    text ("You Lose", 325, 400);


    {
    }
  }
  if (Scene == 0)
  {
    s.render();
  }
  if (Scene == 1) {
    if (jeepX > 700)
    {
      Scene = 4;
    }
    background(225);
    car.resize(75, 75);  
    image(car, jeepX, jeepY);
  }



  if (Scene==2)
  {
    //SceneTwo();
  }

  if (Scene == 1) {
    background(jungle);
    if (jeepX > 700)
    {
      Scene = 4;
    }
    car.resize(75, 75);  
    image(car, jeepX, jeepY);
    for (int i=0; i<25; i++)
    {
      //speed and position of raindrop
      image (drop, Xs[i], Ys[i]);
      Ys[i] = Ys[i] + 2;

      //raindrop repeating
      if (Ys[i] > 800)
      {
        Ys[i] = 0;
        Xs[i] = random(width);
      }
      if (dist(jeepX, jeepY, Xs[i], Ys[i]) < 25 + 50)
      {
        Scene = 3;
      }
    }
  }
}

void SceneOne()
{
  if (Scene == 0)
  {
    background(255);
    {

      {
        Scene = 2;
      }
    }
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      jeepY -= 12;
    } else if (keyCode == DOWN) {
      jeepY += 12;
    } else if (keyCode == LEFT) {
      jeepX -= 12;
    } else if (keyCode == RIGHT) {
      jeepX += 12;
    }
    if (Scene == 0)
      if (key == CODED)
        if (keyCode == RIGHT) {
          Scene=1;
        }
  }
  if (key=='r'||key=='R')
  {
    Scene=0;
    jeepX=400;
    jeepY=500;
  }
}
