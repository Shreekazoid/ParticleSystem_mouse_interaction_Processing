class Particle{
 PVector location;
  PVector velocity;
   PVector acceleration;
    float lifespan;
   
   Particle(PVector l){
    location = l.get();
      velocity = new PVector(random(-1,1), random(-2,0));
        acceleration = new PVector(0,0.05);
          lifespan = 255;
   } 
   
     void run(){
      update();
       display(); 
     }
     
       void update(){
        velocity.add(acceleration);
         location.add(velocity);
          lifespan -=2; 
       }
       
         void display(){
          stroke(0,lifespan);
           fill(175,125,lifespan);
            ellipse(location.x,location.y,8,8); 
         }
           boolean isDead(){
            if(lifespan<0){
             return true;
            } else{
             return false; 
            }
           }
           
  
}
