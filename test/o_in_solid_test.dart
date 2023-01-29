import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_principles/o_in_solid.dart';

void main() {
  test('Test _printDrawing', () {
    var figures = [Rectangle(), Square()];
    printDrawing(figures);

    var figuresList = figures.map((figure) => figure.drawDrawings()); 
    
    expect(figuresList, containsAll(['Rectangle', 'Square']));
  });
}