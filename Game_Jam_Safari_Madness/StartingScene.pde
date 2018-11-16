class StartingScene {


  StartingScene() {
    fill(0);
    f = createFont("Arial", 30, true);
  }
  void render() {
    if (Scene == 0) {
      background(0);
      textFont(f, 60);                  
      fill(255);                          
      text("Safari Madness", 240, 100);
      textFont(f, 25);
      fill(255);
      text("Avoid the raindrops, reach the end.", 240, 150);
      textFont(f, 30);
      fill(255);
      text("Press Right Key To Begin", 240, 200);
     }
   
  }
}
