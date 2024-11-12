import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(0, 14, 240, 221);
const List<Color> _colorThemes = [
  _customColor,//0
  Colors.blue, //1
  Colors.pink, //2
  Colors.teal, //3
  Colors.green, //4
  Colors.yellow, //5
  Colors.orange, //6
  Colors.grey, //7
  Colors.black, //8
  Colors.white, //9
  Colors.brown, //10
  Colors.indigo, //11
  Colors.amber, //12
  Colors.lime //13
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length ,
            'colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]
        //brightness: Brightness.dark)
    );
        
  }
}
