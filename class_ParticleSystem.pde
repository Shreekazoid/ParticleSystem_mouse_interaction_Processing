class ParticleSystem{
  ArrayList<Particle> particles;
 ParticleSystem(){
  particles = new ArrayList<Particle>(); 

 }
 
 void addParticle(){
  particles.add(new Particle(new PVector(mouseX, mouseY))); 
 }

  void run(){
    
     for(int i=0; i<particles.size();i++){
      Particle p = particles.get(i);
        p.update();
          p.display();
        if(p.isDead()){
         particles.remove(i); 
        }
     } 
  }
}
