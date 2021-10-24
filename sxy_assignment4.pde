int cnt = 0;
float ww = 0;
String txt = "Broken Hearts";
int _cl[] = new int[txt.length()];


void setup(){
  size(600, 100);
  background(255);
   textSize(72);

  
  for(int i=0; i<txt.length(); ++i){
    _cl[i] = floor(random(0,255));
  }

}

void draw(){
   
   for(int i=0; i<txt.length(); ++i){
      char c = txt.charAt(i);
      int cl = _cl[i];
      if(++cnt%3==0){//Control the speed of color changing
        _cl[i]++;
        if(_cl[i]==255)
          _cl[i] = 0;
      }
      fill(cl);
      text(c, ww, 80);
      ww += textWidth(c);
      if(i == (txt.length()-1))
      ww = 0;
    }
}
