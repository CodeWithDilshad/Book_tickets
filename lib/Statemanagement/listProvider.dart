import 'package:flutter/material.dart';

class NumbersProvider extends ChangeNotifier {
  List<int> num = [1, 2, 3, 4];
  void add() {
    var last = num.last;
    num.add(last + 1);
    notifyListeners();
  }
}
