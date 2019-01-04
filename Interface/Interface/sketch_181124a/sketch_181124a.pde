// Need G4P library
import g4p_controls.*;
import processing.video.*;

String language="";
int filtro_cor=1;
int filtro_forma=1;
int page=0;
int pressed=0;
int tileHeight; //the height of a tile
int tileWidth; //the width of a tile
int num_video=1;
int time=0;

public void setup(){
  fullScreen();  
  createGUI();
  // Place your setup code here
  
}

public void draw(){
  background(255);
  if(cam_active==1){ 
      if (cam.available() == true) {
        cam.read();
      }
      image(cam, 250, 100, 1280, 960);
      
    }
  video.setIcon("data/" + str(num_video)+ ".jpg", 1, GAlign.EAST, GAlign.RIGHT, GAlign.MIDDLE);
  if(num_video==15 &&  time==60){
    time=0;
    num_video=1;
  }
  else if(time==60){
    num_video+=1;
    time=0;
  }
  time++;
  if(page==5){
    delay(1000);
    key='i'; 
    keyPressed();   
  }
  else if(page==6){
    delay(3000);
    key='c';
    keyPressed();
  }
  else if(page==7){
    delay(3000);
    key='f';
    keyPressed();
  }
}


void modifica(){
  mainPic = loadImage(nome);
  tileHeight = 23;
  tileWidth = 21;
  fill(150);
  noStroke();
  
  for (int y = 0; y < 1080; y+=tileHeight) {
    for (int x = 0; x < 1920; x+=tileWidth) {
      color c = mainPic.get(x, y);
      fill(c);
      noStroke();
      rect(x, y, tileWidth, tileHeight);

      /*tranparencia das linhas*/
       stroke(0, 0, 0, 130+random(-30, 120));
      /*faz quadrados
      /*variar entre 0 e 1 para dar mais relevo*/
      strokeWeight(random(1, 2.1));
      line(x, y, x+tileWidth, y+random(-1.5, 1.5));
      stroke(0, 0, 0, 130+random(-30, 120));
      strokeWeight(random(1, 2.1));
      line(x, y, x + random(-1.5, 1.5), y+tileHeight);
    }
  }
  saveFrame("data/cor_quadrado1.jpg");
  pic2=loadImage("data/cor_quadrado1.jpg");
  pic2 = get(400, 0, 1000, 1080);
  pic2.resize(600, 700);
  pic2.save("data/cor_quadrado.jpg");
  
  
  for (int y =0; y < 1080; y+=tileHeight) {
    for (int x = 15; x < 1920; x+=tileWidth) {
      color c = mainPic.get(x, y);
      fill(c);
      /*preto e branco as duas linhas seguintes*/
      float value = (green(c) + red(c) + blue(c))/3;
      fill(value);
      noStroke();
      rect(x, y, tileWidth, tileHeight);

      /*tranparencia das linhas*/
      stroke(0, 0, 0, 130+random(-30, 120));
      /*faz quadrados
      /*variar entre 0 e 1 para dar mais relevo*/
      strokeWeight(random(1, 2.1));
      line(x, y, x+tileWidth, y+random(-1.5, 1.5));
      stroke(0, 0, 0, 130+random(-30, 120));
      strokeWeight(random(1, 2.1));
      line(x, y, x + random(-1.5, 1.5), y+tileHeight);
      
    }
  }
  saveFrame("data/preto_branco_quadrado1.jpg"); 
  pic2=loadImage("data/preto_branco_quadrado1.jpg");
  pic2 = get(400, 0, 1000, 1080);
  pic2.resize(600, 700);
  pic2.save("data/preto_branco_quadrado.jpg");
   
  tileHeight=30;
  tileWidth=35;
  translate(0,20);
   for (int y = 0; y < 1080; y+=tileHeight) {
     int x;
    for (x = 0; x < 1920; x+=tileWidth) {
       color c = mainPic.get(x, y);
        fill(c);
        noStroke();
        quad(x,y-(tileHeight/2),x+(tileWidth/2), y-(tileHeight), x+tileWidth, y-(tileHeight/2),x+(tileWidth/2), y);
          
        stroke(0, 0, 0, 130+random(-20, 120));
         
         quad(x+random(-1.5, 1.5),y-(tileHeight/2)+random(-1.5, 1.5),x+(tileWidth/2)+random(-1.5, 1.5), y-(tileHeight)+random(-1.5, 1.5), x+tileWidth+random(-1.5, 1.5), y-(tileHeight/2)+random(-1.5, 1.5),x+(tileWidth/2)+random(-1.5, 1.5), y+random(-1.5, 1.5));
          
      }
    }
  
  
  for (int y = (tileHeight/2); y < 1080; y+=tileHeight) {
     int x;
    for (x = (tileWidth/2); x < 1920; x+=tileWidth) {
       color c = mainPic.get(x, y);
        fill(c);
        noStroke();
        quad(x,y-(tileHeight/2),x+(tileWidth/2), y-(tileHeight), x+tileWidth, y-(tileHeight/2),x+(tileWidth/2), y);
        
         stroke(0, 0, 0, 130+random(-20, 120));
         quad(x+random(-1.5, 1.5),y-(tileHeight/2)+random(-1.5, 1.5),x+(tileWidth/2)+random(-1.5, 1.5), y-(tileHeight)+random(-1.5, 1.5), x+tileWidth+random(-1.5, 1.5), y-(tileHeight/2)+random(-1.5, 1.5),x+(tileWidth/2)+random(-1.5, 1.5), y+random(-1.5, 1.5));
          
      }
  }
  saveFrame("data/cor_losanglo1.jpg");
  pic2=loadImage("data/cor_losanglo1.jpg");
  pic2 = get(400, 0, 1000, 1080);
  pic2.resize(600, 700);
  pic2.save("data/cor_losanglo.jpg");
  
  
  for (int y = 0; y < 1080; y+=tileHeight) {
     int x;
    for (x = 0; x < 1920; x+=tileWidth) {
       color c = mainPic.get(x, y);
       fill(c);
      /*preto e branco as duas linhas seguintes*/
      float value = (green(c) + red(c) + blue(c))/3;
      fill(value);
        
        noStroke();
        quad(x,y-(tileHeight/2),x+(tileWidth/2), y-(tileHeight), x+tileWidth, y-(tileHeight/2),x+(tileWidth/2), y);
          
          
         stroke(0, 0, 0, 130+random(-30, 120));
         quad(x+random(-1.5, 1.5),y-(tileHeight/2)+random(-1.5, 1.5),x+(tileWidth/2)+random(-1.5, 1.5), y-(tileHeight)+random(-1.5, 1.5), x+tileWidth+random(-1.5, 1.5), y-(tileHeight/2)+random(-1.5, 1.5),x+(tileWidth/2)+random(-1.5, 1.5), y+random(-1.5, 1.5));
          
      }
    }
  
  
  for (int y = (tileHeight/2); y < 1080; y+=tileHeight) {
     int x;
    for (x = (tileWidth/2); x < 1920; x+=tileWidth) {
        color c = mainPic.get(x, y);
        fill(c);
        /*preto e branco as duas linhas seguintes*/
        float value = (green(c) + red(c) + blue(c))/3;
        fill(value);
        noStroke();
        quad(x,y-(tileHeight/2),x+(tileWidth/2), y-(tileHeight), x+tileWidth, y-(tileHeight/2),x+(tileWidth/2), y);
        
        stroke(0, 0, 0, 130+random(-30, 120));
        quad(x+random(-1.5, 1.5),y-(tileHeight/2)+random(-1.5, 1.5),x+(tileWidth/2)+random(-1.5, 1.5), y-(tileHeight)+random(-1.5, 1.5), x+tileWidth+random(-1.5, 1.5), y-(tileHeight/2)+random(-1.5, 1.5),x+(tileWidth/2)+random(-1.5, 1.5), y+random(-1.5, 1.5));
          
      }
  }
  saveFrame("data/preto_branco_losanglo1.jpg");
  pic2=loadImage("data/preto_branco_losanglo1.jpg");
  pic2 = get(400, 0, 1000, 1080);
  pic2.resize(600, 700);
  pic2.save("data/preto_branco_losanglo.jpg");
  
  
}
