import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _priceTotal = 25000;
  int get priceTotal => _priceTotal;

  int _count = 1;

  int get count => _count;

  void increment() {
    _count++;
    _priceTotal = 25000 * _count;
    notifyListeners();
  }

  void decrement() {
    if (_count == 1) {
      _count = 1;
      _priceTotal = 25000;
      notifyListeners();
    } else {
      _count--;
      _priceTotal = _priceTotal - 25000;
      notifyListeners();
    }
    // notifyListeners();
  }

  // void priceTotalDetail() {
  //   _priceTotal = _priceTotal * _count;
  //   notifyListeners();
  // }
}
