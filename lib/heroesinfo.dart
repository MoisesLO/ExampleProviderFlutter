import 'package:flutter/material.dart';

class HeroesInfo with ChangeNotifier{

  String _heroe = 'Capitan America';
  Color colorBase = Colors.blue;

  get heroe {
    return _heroe;
  }

  set heroe(String nombre) {
    this._heroe = nombre;
    this.colorBase = (nombre == 'Iromen') ? Colors.red : Colors.blue;
    notifyListeners();
  }
}