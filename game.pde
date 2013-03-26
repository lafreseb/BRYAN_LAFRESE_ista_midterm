int win = 50;      
 int mouseclick;
 int spacepress;
      
      void setup() {
      size(500, 500);
    }
     
        void mousePressed(){
      if (mouseButton == LEFT) { mouseclick++; } else { mouseclick = 0; }
    }
    
    void keyPressed() {
    if(key==' ') {
      spacepress++;
      }
    }
       
     
     
    void draw() {
      textSize(20);
      background(0);
      stroke(255,0,0);
      strokeWeight(mouseclick);
      ellipse(75,300,50,50);
      
      
      stroke(255,0,0);
      strokeWeight(spacepress);
      ellipse(375,300,50,50);
      
      text("Mouse Clicks: "+ mouseclick+"", 0+15,0+50,width,height);
      text("Space Pressed: "+ spacepress+"", height/2+15,0+50,width,height);
      
      if(mouseclick==win && spacepress < win) {
       text("Mouse man has won", 0+15,0+250,width,height);
      }
      
      else if(spacepress==win && mouseclick < win){
        text("Spacebar man has won" , height/2+15,0+250,width,height);
      }
    }
      
     
   
 
    
   
