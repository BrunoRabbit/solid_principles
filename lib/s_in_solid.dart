// * SOLID -> "S"
// ? Single Responsibility Principle.
// ? This principle says that each class should have only one responsibility.
void main() {
  final car = Car();
  final musicPlayer = MusicPlayer();

  car.startEngine();
  car.shiftGear(1);
  car.accelerate();
  car.brake();
  car.turnOffEngine();
  musicPlayer.playMusic();
}

class Car {
  void startEngine() {
    print('car engine turned on');
  }

  void shiftGear(int gear) {
    print('shift gear');
  }

  void accelerate() {
    print('accelerate');
  }

  void brake() {
    print('brake');
  }

  void turnOffEngine() {
    print('car engine turned off');
  }
}

class MusicPlayer {
  void playMusic() {
    print('play music');
  }
}
