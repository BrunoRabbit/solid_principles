// * I -> SOLID
// ? Principle of Interface Segregation
// ? a class should not be forced to implement interfaces or methods
// ? that are not relevant to it.


// ! The Mage class introduces additional behavior that is not used by other
// ! concrete classes that implement Character. This can lead to maintenance
// ! issues in the future if there is a need to add new specific methods for
// ! other specific classes. 

// ! Although the Principle of Interface Segregation was not violated in the
// ! specific case of the first implementation, the division into smaller 
// ! and more specific interfaces can help to ensure a better separation of 
// ! responsibilities and make the code easier to maintain in the future.
void main() {
  final warrior = Warrior();
  final archer = Archer();
  final mage = Mage();
  final warriorA = WarriorA();
  final archerA = ArcherA();
  final mageA = MageA();

  warrior.move();
  warrior.attack();

  archer.move();
  archer.attack();

  mage.move();
  mage.attack();
  mage.castSpell();

  warriorA
    ..attack()
    ..move();

  archerA
    ..attack()
    ..move();

  mageA
    ..attack()
    ..move()
    ..castSpell();
}

// ! before
abstract class Character {
  void move();
  void attack();
}

class Warrior implements Character {
  @override
  void move() {
    print('move warrior');
  }

  @override
  void attack() {
    print('attack warrior');
  }
}

class Archer implements Character {
  @override
  void move() {
    print('move archer');
  }

  @override
  void attack() {
    print('attack archer');
  }
}

class Mage implements Character {
  @override
  void move() {
    print('move mage');
  }

  @override
  void attack() {
    print('attack mage');
  }

  void castSpell() {
    print('mage cast spell');
  }
}

// ! after
// ! because mage has a additional method, we can separate Character in two classes
// * to differentiate the same classes I will put an `A` at the end to indicate an alternative
abstract class Movable {
  void move();
}

abstract class Fighter {
  void attack();
}

class WarriorA implements Fighter, Movable {
  @override
  void attack() {
    print('WarriorA attack');
  }

  @override
  void move() {
    print('WarriorA move');
  }
}

class ArcherA implements Fighter, Movable {
  @override
  void attack() {
    print('ArcherA attack');
  }

  @override
  void move() {
    print('ArcherA move');
  }
}

class MageA implements Fighter, Movable {
  @override
  void attack() {
    print('MageA attack');
  }

  @override
  void move() {
    print('MageA move');
  }

  void castSpell() {
    print('MageA cast spell');
  }
}
