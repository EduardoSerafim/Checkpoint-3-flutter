import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  String imageFelizPath = "assets/images/feliz.jpeg";
  String imageTristePath = "assets/images/triste.jpeg";
  bool isImageChanged = false;

  double fontSize = 10;

  changeImage() {
    isImageChanged = !isImageChanged;
    notifyListeners();
  }

   fontIncrease() {
    fontSize++;
    notifyListeners();
    
  }

  fontDecrease() {
    fontSize--;
    notifyListeners();
  }
}
