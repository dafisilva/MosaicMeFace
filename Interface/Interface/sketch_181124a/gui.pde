/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */
 
int cam_active=0;
String nome="main2.jpg";
Capture cam;
PImage mainPic, pic1, pic2, pic3;  

public void Pt_click1(GImageButton source, GEvent event) { //_CODE_:Pt:750595:
  page=1;
  language="PT";
  texto1.setIcon("/data/texto1.jpg", 1, GAlign.WEST, GAlign.CENTER, GAlign.MIDDLE);
  source.setVisible(false);
  En.setVisible(false);
  Sp.setVisible(false);
  Fr.setVisible(false);
  video.setVisible(false);
  seta_tras.setVisible(true);
  seta_frente.setVisible(true);
  texto1.setVisible(true);
  video2.setVisible(true);
} //_CODE_:Pt:750595:

public void En_click1(GImageButton source, GEvent event) { //_CODE_:En:861454:
  page=1;
  language="EN";
  texto1.setIcon("/data/texto3.jpg", 1, GAlign.WEST, GAlign.CENTER, GAlign.MIDDLE);
  Pt.setVisible(false);
  source.setVisible(false);
  Sp.setVisible(false);
  Fr.setVisible(false);
  video.setVisible(false);
  seta_tras.setVisible(true);
  seta_frente.setVisible(true);
  texto1.setVisible(true);
  video2.setVisible(true);
} //_CODE_:En:861454:

public void Sp_click1(GImageButton source, GEvent event) { //_CODE_:Sp:913453:
  page=1;
  language="SP";
  texto1.setIcon("/data/texto2.jpg", 1, GAlign.WEST, GAlign.CENTER, GAlign.MIDDLE);
  Pt.setVisible(false);
  En.setVisible(false);
  source.setVisible(false);
  Fr.setVisible(false);
  video.setVisible(false);
  seta_tras.setVisible(true);
  seta_frente.setVisible(true);
  texto1.setVisible(true);
  video2.setVisible(true);
} //_CODE_:Sp:913453:

public void Fr_click1(GImageButton source, GEvent event) { //_CODE_:Fr:883304:
  page=1;
  language="FR";
  texto1.setIcon("/data/texto4.jpg", 1, GAlign.WEST, GAlign.CENTER, GAlign.MIDDLE);
  Pt.setVisible(false);
  En.setVisible(false);
  Sp.setVisible(false);
  source.setVisible(false);
  video.setVisible(false);
  seta_tras.setVisible(true);
  seta_frente.setVisible(true);
  texto1.setVisible(true);
  video2.setVisible(true);
} //_CODE_:Fr:883304:

public void interrogation_click1(GImageButton source, GEvent event) { //_CODE_:interrogation:229069:
  println("interrogation - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:interrogation:229069:

public void seta_tras_click1(GImageButton source, GEvent event) { //_CODE_:seta_tras:246313:
  if(page==1){
    language="";
    Pt.setVisible(true);
    En.setVisible(true);
    Sp.setVisible(true);
    Fr.setVisible(true);
    video.setVisible(true);
    source.setVisible(false);
    seta_frente.setVisible(false);
    texto1.setVisible(false);
    video2.setVisible(false);
    page=0;
  }
  if(page==3){
    source.setVisible(false);
    seta_frente.setVisible(false);
    show1.setVisible(false);
    personaliza.setVisible(false);
    gradient1.setVisible(false);
    gradient2.setVisible(false);
    mosaico1.setVisible(false);
    mosaico2.setVisible(false);
    //foto_take.setVisible(true);
    capture.setVisible(true);
    show1.setIcon("data/show1.jpg", 1, GAlign.NORTH, GAlign.CENTER, GAlign.MIDDLE);
    page=2;
    cam_active=1;
  }
} //_CODE_:seta_tras:246313:

public void seta_frente_click1(GImageButton source, GEvent event) { //_CODE_:seta_frente:565679:
  if(page==1){
    interrogation.setVisible(false);
    seta_tras.setVisible(false);
    source.setVisible(false);
    texto1.setVisible(false);
    video2.setVisible(false);
    //foto_take.setVisible(true);
    capture.setVisible(true);
    close.setVisible(true);
    page=2;
    cam_active=1;
    cam.start();
  }
  if(page==3){
    seta_tras.setVisible(false);
    source.setVisible(false);
    personaliza.setVisible(false);
    gradient1.setVisible(false);
    gradient2.setVisible(false);
    mosaico1.setVisible(false);
    mosaico2.setVisible(false);
    if(language.equals("PT")){
      confirmar.setIcon("/data/confirmar.jpg", 1, GAlign.WEST, GAlign.CENTER, GAlign.MIDDLE);
      cancelar = new GImageButton(this, 1130, 520, 150, 150, new String[] { "/data/cancelar.jpg", "/data/cancelar.jpg", "/data/cancelar.jpg" } );
      cancelar.addEventHandler(this, "cancelar_click1");
    }
    else if(language.equals("EN")){
      confirmar.setIcon("/data/confirm.jpg", 1, GAlign.WEST, GAlign.CENTER, GAlign.MIDDLE);
      cancelar = new GImageButton(this, 1130, 520, 150, 150, new String[] { "/data/cancel.jpg", "/data/cancel.jpg", "/data/cancel.jpg" } );
      cancelar.addEventHandler(this, "cancelar_click1");
    }
    else if(language.equals("SP")){
      confirmar.setIcon("/data/confirmar.jpg", 1, GAlign.WEST, GAlign.CENTER, GAlign.MIDDLE);
      cancelar = new GImageButton(this, 1130, 520, 150, 150, new String[] { "/data/cancelar.jpg", "/data/cancelar.jpg", "/data/cancelar.jpg" } );
      cancelar.addEventHandler(this, "cancelar_click1");   
    }
    else if(language.equals("FR")){
      confirmar.setIcon("/data/confirmer.jpg", 1, GAlign.WEST, GAlign.CENTER, GAlign.MIDDLE);
      cancelar = new GImageButton(this, 1130, 520, 150, 150, new String[] { "/data/annuler.jpg", "/data/annuler.jpg", "/data/annuler.jpg" } );
      cancelar.addEventHandler(this, "cancelar_click1");
    }
    confirmar.setVisible(true);
    cancelar.setVisible(true);
    ok.setVisible(true);
    page=4;
  }

} //_CODE_:seta_frente:565679:

public void capture_click1(GImageButton source, GEvent event) { //_CODE_:capture:605123:
  if(language.equals("PT")){
      personaliza.setIcon("/data/personaliza.jpg", 1, GAlign.WEST, GAlign.CENTER, GAlign.MIDDLE);
  }
  else if(language.equals("EN")){
      personaliza.setIcon("/data/customize.jpg", 1, GAlign.WEST, GAlign.CENTER, GAlign.MIDDLE);
  }
  else if(language.equals("SP")){
      personaliza.setIcon("/data/personaliza.jpg", 1, GAlign.WEST, GAlign.CENTER, GAlign.MIDDLE);
  }
  else if(language.equals("FR")){
      personaliza.setIcon("/data/personnaliser.jpg", 1, GAlign.WEST, GAlign.CENTER, GAlign.MIDDLE);
  }
  interrogation.setVisible(false);
  seta_tras.setVisible(true);
  seta_frente.setVisible(true);
  show1.setVisible(true);
  personaliza.setVisible(true);
  gradient1.setVisible(true);
  gradient2.setVisible(true);
  mosaico1.setVisible(true);
  mosaico2.setVisible(true);
  texto1.setVisible(false);
  video2.setVisible(false);
  foto_take.setVisible(false);
  source.setVisible(false);
  page=3;
  cam_active=0;
  //image(cam, 250, 200);
  saveFrame(nome); 
  pic1 = loadImage(nome);
  PImage newpic = pic1.get(250, 100, 1280, 960);  
  newpic.resize(1920, 1080);
  newpic.save(nome); 
  modifica();
  pic1=loadImage("data/cor_quadrado.jpg");
  show1.setIcon(pic1, 1, GAlign.NORTH, GAlign.CENTER, GAlign.MIDDLE);
  pic1=null;
} //_CODE_:capture:605123:

public void close_click1(GImageButton source, GEvent event) { //_CODE_:close:644317:
  if(page==2){
    source.setVisible(false);
    foto_take.setVisible(false);
    capture.setVisible(false);
    cam_active=0;
  }
  if(page==3){
    seta_frente.setVisible(false);
    seta_tras.setVisible(false);
    show1.setVisible(false);
    personaliza.setVisible(false);
    gradient1.setVisible(false);
    gradient2.setVisible(false);
    mosaico1.setVisible(false);
    mosaico2.setVisible(false);
    show1.setIcon("/data/cor_quadrado.jpg", 1, GAlign.NORTH, GAlign.CENTER, GAlign.MIDDLE);
  }
  if(page==4){
    source.setVisible(false);
    show1.setVisible(false);
    confirmar.setVisible(false);
    cancelar.setVisible(false);
    ok.setVisible(false);
  }
  Pt.setVisible(true);
  En.setVisible(true);
  Sp.setVisible(true);
  Fr.setVisible(true);
  interrogation.setVisible(true);
  video.setVisible(true);
  page=0;
} //_CODE_:close:644317:

public void gradient1_click1(GImageButton source, GEvent event) { //_CODE_:gradient1:296197:
  filtro_cor=1;
  if(filtro_forma==1){
    pic1=loadImage("data/cor_quadrado.jpg");
    show1.setIcon(pic1, 1, GAlign.NORTH, GAlign.CENTER, GAlign.MIDDLE);
  }
  else if(filtro_forma==2){
    pic1=loadImage("data/cor_losanglo.jpg");
    show1.setIcon(pic1, 1, GAlign.NORTH, GAlign.CENTER, GAlign.MIDDLE);
  }
  pic1=null;

} //_CODE_:gradient1:296197:

public void gradient2_click1(GImageButton source, GEvent event) { //_CODE_:gradient2:517927:
  filtro_cor=2;
  if(filtro_forma==1){
    pic1=loadImage("data/preto_branco_quadrado.jpg");
    show1.setIcon(pic1, 1, GAlign.NORTH, GAlign.CENTER, GAlign.MIDDLE);
  }
  else if(filtro_forma==2){
    pic1=loadImage("data/preto_branco_losanglo.jpg");
    show1.setIcon(pic1, 1, GAlign.NORTH, GAlign.CENTER, GAlign.MIDDLE);
  }
  pic1=null;
  
} //_CODE_:gradient2:517927:

public void mosaico1_click1(GImageButton source, GEvent event) { //_CODE_:mosaico1:656316:
  filtro_forma=1;
  if(filtro_cor==1){
    pic1=loadImage("data/cor_quadrado.jpg");
    show1.setIcon(pic1, 1, GAlign.NORTH, GAlign.CENTER, GAlign.MIDDLE);
  }
  else if(filtro_cor==2){
    pic1=loadImage("data/preto_branco_quadrado.jpg");
    show1.setIcon(pic1, 1, GAlign.NORTH, GAlign.CENTER, GAlign.MIDDLE);
  }
  pic1=null;
} //_CODE_:mosaico1:656316:

public void mosaico2_click1(GImageButton source, GEvent event) { //_CODE_:mosaico2:228756:
  filtro_forma=2;
  if(filtro_cor==1){
     pic1=loadImage("data/cor_losanglo.jpg");
    show1.setIcon(pic1, 1, GAlign.NORTH, GAlign.CENTER, GAlign.MIDDLE);
  }
  else if(filtro_cor==2){
     pic1=loadImage("data/preto_branco_losanglo.jpg");
    show1.setIcon(pic1, 1, GAlign.NORTH, GAlign.CENTER, GAlign.MIDDLE);
  }
  pic1=null;
} //_CODE_:mosaico2:228756:

public void ok_click1(GImageButton source, GEvent event) { //_CODE_:ok:502137:
  if(language.equals("PT")){
      valor.setIcon("/data/valor.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
      cancelar2 = new GImageButton(this, 860, 590, 250, 250, new String[] { "/data/cancelar.jpg", "/data/cancelar.jpg", "/data/cancelar.jpg" } );
      cancelar2.addEventHandler(this, "cancelar2_click1");
  }
  else if(language.equals("EN")){
      valor.setIcon("/data/value.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
      cancelar2 = new GImageButton(this, 860, 590, 250, 250, new String[] { "/data/cancel.jpg", "/data/cancel.jpg", "/data/cancel.jpg" } );
      cancelar2.addEventHandler(this, "cancelar2_click1");
  }
  else if(language.equals("SP")){
      valor.setIcon("/data/precio.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
      cancelar2 = new GImageButton(this, 860, 590, 250, 250, new String[] { "/data/cancelar.jpg", "/data/cancelar.jpg", "/data/cancelar.jpg" } );
      cancelar2.addEventHandler(this, "cancelar2_click1");
  }
  else if(language.equals("FR")){
      valor.setIcon("/data/valeur.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
      cancelar2 = new GImageButton(this, 860, 590, 250, 250, new String[] { "/data/annuler.jpg", "/data/annuler.jpg", "/data/annuler.jpg" } );
      cancelar2.addEventHandler(this, "cancelar2_click1");
  }
  source.setVisible(false);
  cancelar.setVisible(false);
  confirmar.setVisible(false);
  show1.setVisible(false);
  close.setVisible(false);
  valor.setVisible(true);
  cancelar2.setVisible(true);
  page=5;
  
} //_CODE_:ok:502137:

public void nao_click1(GImageButton source, GEvent event) { //_CODE_:nao:421721:
  if(page==4){
    source.setVisible(false);
    sim.setVisible(false);
    cancelar1.setVisible(false);
    show1.setVisible(true);
    cancelar.setVisible(true);
    ok.setVisible(true);
    confirmar.setVisible(true);
    close.setVisible(true);
  }
  else if(page==5){
    source.setVisible(false);
    sim.setVisible(false);
    cancelar1.setVisible(false);
    cancelar2.setVisible(true);
    valor.setVisible(true);
  }
} //_CODE_:nao:421721:

public void sim_click1(GImageButton source, GEvent event) { //_CODE_:sim:250481:
  source.setVisible(false);
  nao.setVisible(false);
  cancelar1.setVisible(false);
  //foto_take.setVisible(true);
  close.setVisible(true);
  capture.setVisible(true);
  page=2;
  cam_active=1;
} //_CODE_:sim:250481:

public void cancelar_click1(GImageButton source, GEvent event) { //_CODE_:cancelar:440761:
  if(language.equals("PT")){
      cancelar1.setIcon("/data/cancelar1.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
      sim = new GImageButton(this, 1060, 500, 150, 150, new String[] { "/data/sim.jpg", "/data/sim.jpg", "/data/sim.jpg" } );
      nao = new GImageButton(this, 660, 500, 150, 150, new String[] { "/data/nao.jpg", "/data/nao.jpg", "/data/nao.jpg" } );
      sim.addEventHandler(this, "sim_click1");
      nao.addEventHandler(this, "nao_click1");
  }
  else if(language.equals("EN")){
      cancelar1.setIcon("/data/cancel1.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
      sim = new GImageButton(this, 1060, 500, 150, 150, new String[] { "/data/yes.jpg", "/data/yes.jpg", "/data/yes.jpg" } );
      nao = new GImageButton(this, 660, 500, 150, 150, new String[] { "/data/no.jpg", "/data/no.jpg", "/data/no.jpg" } );
      sim.addEventHandler(this, "sim_click1");
      nao.addEventHandler(this, "nao_click1");
  }
  else if(language.equals("SP")){
      cancelar1.setIcon("/data/cancelar2.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
      sim = new GImageButton(this, 1060, 500, 150, 150, new String[] { "/data/si.jpg", "/data/si.jpg", "/data/si.jpg" } );
      nao = new GImageButton(this, 660, 500, 150, 150, new String[] { "/data/no.jpg", "/data/no.jpg", "/data/no.jpg" } );
      sim.addEventHandler(this, "sim_click1");
      nao.addEventHandler(this, "nao_click1");
  }
  else if(language.equals("FR")){
      cancelar1.setIcon("/data/annuler1.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
      sim = new GImageButton(this, 1060, 500, 150, 150, new String[] { "/data/oui.jpg", "/data/oui.jpg", "/data/oui.jpg" } );
      nao = new GImageButton(this, 660, 500, 150, 150, new String[] { "/data/non.jpg", "/data/non.jpg", "/data/non.jpg" } );
      sim.addEventHandler(this, "sim_click1");
      nao.addEventHandler(this, "nao_click1");
  }
  source.setVisible(false);
  show1.setVisible(false);
  confirmar.setVisible(false);
  ok.setVisible(false);
  close.setVisible(false);
  cancelar1.setVisible(true);
  sim.setVisible(true);
  nao.setVisible(true);
} //_CODE_:cancelar:440761:

public void cancelar2_click1(GImageButton source, GEvent event) { //_CODE_:cancelar2:654373:
  if(language.equals("PT")){
      cancelar1.setIcon("/data/cancelar1.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
      sim = new GImageButton(this, 1060, 500, 150, 150, new String[] { "/data/sim.jpg", "/data/sim.jpg", "/data/sim.jpg" } );
      nao = new GImageButton(this, 660, 500, 150, 150, new String[] { "/data/nao.jpg", "/data/nao.jpg", "/data/nao.jpg" } );
      sim.addEventHandler(this, "sim_click1");
      nao.addEventHandler(this, "nao_click1");
  }
  else if(language.equals("EN")){
      cancelar1.setIcon("/data/cancel1.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
      sim = new GImageButton(this, 1060, 500, 150, 150, new String[] { "/data/yes.jpg", "/data/yes.jpg", "/data/yes.jpg" } );
      nao = new GImageButton(this, 660, 500, 150, 150, new String[] { "/data/no.jpg", "/data/no.jpg", "/data/no.jpg" } );
      sim.addEventHandler(this, "sim_click1");
      nao.addEventHandler(this, "nao_click1");
  }
  else if(language.equals("SP")){
      cancelar1.setIcon("/data/cancelar2.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
      sim = new GImageButton(this, 1060, 500, 150, 150, new String[] { "/data/si.jpg", "/data/si.jpg", "/data/si.jpg" } );
      nao = new GImageButton(this, 660, 500, 150, 150, new String[] { "/data/no.jpg", "/data/no.jpg", "/data/no.jpg" } );
      sim.addEventHandler(this, "sim_click1");
      nao.addEventHandler(this, "nao_click1");
  }
  else if(language.equals("FR")){
      cancelar1.setIcon("/data/annuler1.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
      sim = new GImageButton(this, 1060, 500, 150, 150, new String[] { "/data/oui.jpg", "/data/oui.jpg", "/data/oui.jpg" } );
      nao = new GImageButton(this, 660, 500, 150, 150, new String[] { "/data/non.jpg", "/data/non.jpg", "/data/non.jpg" } );
      sim.addEventHandler(this, "sim_click1");
      nao.addEventHandler(this, "nao_click1");
  }
  source.setVisible(false);
  valor.setVisible(false);
  cancelar1.setVisible(true);
  sim.setVisible(true);
  nao.setVisible(true);
} //_CODE_:cancelar2:654373:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Sketch Window");
  Pt = new GImageButton(this, 1250, 365, 150, 150, new String[] { "Pt.jpg", "Pt.jpg", "Pt.jpg" } );
  Pt.addEventHandler(this, "Pt_click1");
  En = new GImageButton(this, 1450, 365, 150, 150, new String[] { "En.jpg", "En.jpg", "En.jpg" } );
  En.addEventHandler(this, "En_click1");
  Sp = new GImageButton(this, 1250, 565, 150, 150, new String[] { "Sp.jpg", "Sp.jpg", "Sp.jpg" } );
  Sp.addEventHandler(this, "Sp_click1");
  Fr = new GImageButton(this, 1450, 565, 150, 150, new String[] { "Fr.jpg", "Fr.jpg", "Fr.jpg" } );
  Fr.addEventHandler(this, "Fr_click1");
  interrogation = new GImageButton(this, 1820, 20, 80, 80, new String[] { "interrogation.jpg", "interrogation.jpg", "interrogation.jpg" } );
  interrogation.addEventHandler(this, "interrogation_click1");
  video = new GLabel(this, 170, 170, 900, 750);
  video.setIcon("video.jpg", 1, GAlign.EAST, GAlign.RIGHT, GAlign.MIDDLE);
  video.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  video.setLocalColorScheme(GCScheme.SCHEME_8);
  video.setOpaque(false);
  seta_tras = new GImageButton(this, 50, 490, 100, 100, new String[] { "seta_tras.jpg", "seta_tras.jpg", "seta_tras.jpg" } );
  seta_tras.addEventHandler(this, "seta_tras_click1");
  seta_frente = new GImageButton(this, 1770, 490, 100, 100, new String[] { "seta_frente.jpg", "seta_frente.jpg", "seta_frente.jpg" } );
  seta_frente.addEventHandler(this, "seta_frente_click1");
  texto1 = new GLabel(this, 1000, 300, 800, 485);
  texto1.setIcon("texto1.jpg", 1, GAlign.WEST, GAlign.CENTER, GAlign.MIDDLE);
  texto1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  texto1.setOpaque(false);
  video2 = new GLabel(this, 250, 250, 704, 593);
  video2.setIcon("video2.jpg", 1, GAlign.EAST, GAlign.RIGHT, GAlign.MIDDLE);
  video2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  video2.setOpaque(false);
  foto_take = new GLabel(this, 290, 80, 1278, 964);
  foto_take.setIcon("foto_take.jpg", 1, GAlign.EAST, GAlign.RIGHT, GAlign.MIDDLE);
  foto_take.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  foto_take.setOpaque(false);
  capture = new GImageButton(this, 1680, 440, 200, 200, new String[] { "capture.jpg", "capture.jpg", "capture.jpg" } );
  capture.addEventHandler(this, "capture_click1");
  close = new GImageButton(this, 20, 20, 80, 80, new String[] { "close.jpg", "close.jpg", "close.jpg" } );
  close.addEventHandler(this, "close_click1");
  show1 = new GLabel(this, 220, 185, 631, 711);
  show1.setIcon("show1.jpg", 1, GAlign.NORTH, GAlign.CENTER, GAlign.MIDDLE);
  show1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  show1.setOpaque(false);
  gradient1 = new GImageButton(this, 1020, 380, 200, 200, new String[] { "gradient1.jpg", "gradient1.jpg", "gradient1.jpg" } );
  gradient1.addEventHandler(this, "gradient1_click1");
  personaliza = new GLabel(this, 870, 185, 916, 151);
  personaliza.setIcon("personnaliser.jpg", 1, GAlign.WEST, GAlign.CENTER, GAlign.MIDDLE);
  personaliza.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  personaliza.setOpaque(false);
  gradient2 = new GImageButton(this, 1320, 380, 200, 200, new String[] { "gradient2.jpg", "gradient2.jpg", "gradient2.jpg" } );
  gradient2.addEventHandler(this, "gradient2_click1");
  mosaico1 = new GImageButton(this, 1020, 696, 200, 200, new String[] { "mosaico1.jpg", "mosaico1.jpg", "mosaico1.jpg" } );
  mosaico1.addEventHandler(this, "mosaico1_click1");
  mosaico2 = new GImageButton(this, 1320, 670, 200, 250, new String[] { "mosaico2.jpg", "mosaico2.jpg", "mosaico2.jpg" } );
  mosaico2.addEventHandler(this, "mosaico2_click1");
  confirmar = new GLabel(this, 1085, 370, 468, 106);
  confirmar.setIcon("confirmar.jpg", 1, GAlign.WEST, GAlign.CENTER, GAlign.MIDDLE);
  confirmar.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  confirmar.setOpaque(false);
  ok = new GImageButton(this, 1340, 520, 150, 150, new String[] { "ok.jpg", "ok.jpg", "ok.jpg" } );
  ok.addEventHandler(this, "ok_click1");
  cancelar1 = new GLabel(this, 350, 300, 1221, 147);
  cancelar1.setIcon("annuler1.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
  cancelar1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  cancelar1.setOpaque(false);
  nao = new GImageButton(this, 660, 500, 200, 200, new String[] { "nao.jpg", "nao.jpg", "nao.jpg" } );
  nao.addEventHandler(this, "nao_click1");
  sim = new GImageButton(this, 1060, 500, 200, 200, new String[] { "sim.jpg", "sim.jpg", "sim.jpg" } );
  sim.addEventHandler(this, "sim_click1");
  cancelar = new GImageButton(this, 1130, 520, 150, 150, new String[] { "cancel.jpg", "cancel.jpg", "cancel.jpg" } );
  cancelar.addEventHandler(this, "cancelar_click1");
  valor = new GLabel(this, 533, 273, 854, 217);
  valor.setIcon("precio.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
  valor.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  valor.setOpaque(false);
  cancelar2 = new GImageButton(this, 860, 590, 200, 200, new String[] { "cancelar.jpg", "cancelar.jpg", "cancelar.jpg" } );
  cancelar2.addEventHandler(this, "cancelar2_click1");
  imprimir = new GLabel(this, 665, 386, 590, 104);
  imprimir.setIcon("imprimiendo.jpg", 1, GAlign.EAST, GAlign.RIGHT, GAlign.MIDDLE);
  imprimir.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  imprimir.setOpaque(false);
  load1 = new GLabel(this, 770, 576, 80, 89);
  load1.setIcon("load2.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
  load1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  load1.setOpaque(false);
  load2 = new GLabel(this, 870, 576, 80, 89);
  load2.setIcon("load2.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
  load2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  load2.setOpaque(false);
  load3 = new GLabel(this, 970, 576, 80, 89);
  load3.setIcon("load2.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
  load3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  load3.setOpaque(false);
  load4 = new GLabel(this, 1070, 576, 80, 89);
  load4.setIcon("load2.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
  load4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  load4.setOpaque(false);
  concluido = new GLabel(this, 603, 486, 713, 114);
  concluido.setIcon("terminado.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
  concluido.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  concluido.setOpaque(false);
  esquerda = new GLabel(this, 400, 443, 156, 194);
  esquerda.setIcon("esquerda.jpg", 1, GAlign.EAST, GAlign.CENTER, GAlign.MIDDLE);
  esquerda.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  esquerda.setOpaque(false);
  direita = new GLabel(this, 1364, 443, 156, 194);
  direita.setIcon("direita.jpg", 1, GAlign.WEST, GAlign.RIGHT, GAlign.MIDDLE);
  direita.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  direita.setOpaque(false);
  cima = new GLabel(this, 850, 310, 220, 130);
  cima.setIcon("cima.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
  cima.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  cima.setOpaque(false);
  baixo = new GLabel(this, 850, 650, 220, 130);
  baixo.setIcon("baixo.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
  baixo.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  baixo.setOpaque(false);
baixo.setOpaque(false);
  seta_tras.setVisible(false);
  seta_frente.setVisible(false);
  texto1.setVisible(false);
  video2.setVisible(false);
  foto_take.setVisible(false);
  capture.setVisible(false);
  close.setVisible(false);
  show1.setVisible(false);
  personaliza.setVisible(false);
  gradient1.setVisible(false);
  gradient2.setVisible(false);
  mosaico1.setVisible(false);
  mosaico2.setVisible(false);
  confirmar.setVisible(false);
  ok.setVisible(false);
  cancelar.setVisible(false);
  cancelar1.setVisible(false);
  nao.setVisible(false);
  sim.setVisible(false);
  valor.setVisible(false);
  cancelar2.setVisible(false);
  imprimir.setVisible(false);
  load1.setVisible(false);
  load2.setVisible(false);
  load3.setVisible(false);
  load4.setVisible(false);
  baixo.setVisible(false);
  cima.setVisible(false);
  esquerda.setVisible(false);
  direita.setVisible(false);
  concluido.setVisible(false);
  String[] cameras = Capture.list();
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } 
  else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[3]);
  }
}

public void keyPressed(){
  if(key=='i' && page==5){
    delay(3000);
    page=6;
    fullScreen();
    G4P.messagesEnabled(false);
    G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
    G4P.setCursor(ARROW);
    surface.setTitle("Sketch Window");
    valor.setVisible(false);
    cancelar2.setVisible(false);
    if(language.equals("PT")){
      imprimir.setIcon("/data/imprimir.jpg", 1, GAlign.EAST, GAlign.RIGHT, GAlign.MIDDLE);
    }
    else if(language.equals("EN")){
      imprimir.setIcon("/data/printing.jpg", 1, GAlign.EAST, GAlign.RIGHT, GAlign.MIDDLE);
    }
    else if(language.equals("SP")){
      imprimir.setIcon("/data/imprimiendo.jpg", 1, GAlign.EAST, GAlign.RIGHT, GAlign.MIDDLE);
    }
    else if(language.equals("FR")){
      imprimir.setIcon("/data/imprimer.jpg", 1, GAlign.EAST, GAlign.RIGHT, GAlign.MIDDLE);
    }
    load1.setIcon("/data/load1.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
    load2.setIcon("/data/load2.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
    load3.setIcon("/data/load3.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
    load4.setIcon("/data/load4.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
    load1.setVisible(true);
    load2.setVisible(true);
    load3.setVisible(true);
    load4.setVisible(true);
    imprimir.setVisible(true);
  } 
  if(key=='c' && page==6){
    page=7;
    fullScreen();
    G4P.messagesEnabled(false);
    G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
    G4P.setCursor(ARROW);
    surface.setTitle("Sketch Window");
    imprimir.setVisible(false);
    load1.setVisible(false);
    load2.setVisible(false);
    load3.setVisible(false);
    load4.setVisible(false);
    if(language.equals("PT")){
      concluido.setIcon("/data/concluido.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
    }
    else if(language.equals("EN")){
      concluido.setIcon("/data/finished.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
    }
    else if(language.equals("SP")){
      concluido.setIcon("/data/terminado.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
    }
    else if(language.equals("FR")){
      concluido.setIcon("/data/fini.jpg", 1, GAlign.SOUTH, GAlign.CENTER, GAlign.MIDDLE);
    }
   concluido.setVisible(true);
   baixo.setVisible(true);
   cima.setVisible(true);
   esquerda.setVisible(true);
   direita.setVisible(true);
  }
  
  if(key=='f' && page==7){
    page=0;
    concluido.setVisible(false);
    baixo.setVisible(false);
    cima.setVisible(false);
    esquerda.setVisible(false);
    direita.setVisible(false);
    Pt.setVisible(true);
    En.setVisible(true);
    Sp.setVisible(true);
    Fr.setVisible(true);
    video.setVisible(true);
    interrogation.setVisible(true);
  }
}

// Variable declarations 
// autogenerated do not edit
GImageButton Pt; 
GImageButton En; 
GImageButton Sp; 
GImageButton Fr; 
GImageButton interrogation; 
GLabel video; 
GImageButton seta_tras; 
GImageButton seta_frente; 
GLabel texto1; 
GLabel video2; 
GLabel foto_take; 
GImageButton capture; 
GImageButton close; 
GLabel show1; 
GImageButton gradient1; 
GLabel personaliza; 
GImageButton gradient2; 
GImageButton mosaico1; 
GImageButton mosaico2;
GLabel confirmar; 
GImageButton ok; 
GLabel cancelar1; 
GImageButton nao; 
GImageButton sim; 
GImageButton cancelar; 
GLabel valor; 
GImageButton cancelar2; 
GLabel imprimir; 
GLabel load1; 
GLabel load2; 
GLabel load3; 
GLabel load4; 
GLabel concluido; 
GLabel esquerda; 
GLabel direita; 
GLabel cima; 
GLabel baixo; 
