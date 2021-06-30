class chem{
  int a = 0;
  int b = 0;
  
  chem(int a, int b){
    this.a = a;
    this.b = b;
  }
}

chem grid[][];
chem next[][];

void setup(){
  size(200,200);
  pixelDensity(1);
  grid = new chem[width][height];
  next = grid;
}

void draw(){
  background(51);
  
  loadPixels();
  
  for(int x = 0; x < width; x++){
    for(int y = 0; y < height; y++){
      int i = (y * width + x) * 4;
      pixels[i + 0] = 255;
      pixels[i + 1] = 0;
      pixels[i + 2] = 100;
      pixels[i + 3] = 255;
    }
  }
  
  updatePixels();
}
