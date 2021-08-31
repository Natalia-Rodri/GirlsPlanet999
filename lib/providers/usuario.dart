import 'package:flutter/material.dart';

class Usuario with ChangeNotifier{
  String _nombre;

  Usuario(this._nombre);

  String get nombre{
    return _nombre;
  }

  set nombre(String nombre){
    _nombre=nombre;
    notifyListeners();
  }

}