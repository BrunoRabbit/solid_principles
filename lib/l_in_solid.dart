// * L -> SOLID
// ? Liskov Substitution Principle, 
// ? that subclasses must be replaceable by their base classes 
// ? without affecting program integrity
void main() {
  Music mp3 = Mp3();
  Music radio = Radio();
  
  playMusic(mp3);
  playMusic(radio);
}

abstract class Music {
  void play();
}

class Mp3 implements Music {
  
  @override
  void play(){
    print('mp3');
  }
}


class Radio implements Music {
  @override
  void play(){
    print('radio');
  }
}

void playMusic(Music music){
  music.play();
}

