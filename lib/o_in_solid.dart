// * SOLID -> "O"
// ? If you need to add behavior, extend a Class, don't change it.

void main(){
  var figures = [Rectangle(), Square()];
  printDrawing(figures);
}

abstract class Drawings {
  drawDrawings();
}

void printDrawing(List<Drawings> figures){
  for(var figure in figures){
    print(figure.drawDrawings());
  }
}

class Rectangle extends Drawings {
  @override
  drawDrawings(){
    return 'Rectangle';  
  }
}

class Square extends Drawings {
  @override
  drawDrawings(){
    return 'Square';  
  }
}
