
import 'package:flutter/material.dart';
class CounterController with ChangeNotifier{
  int count=0;
  void add(){
    count++;
    print(count);
    notifyListeners();
  }
  void sub(){
    count--;
    print(count);
    notifyListeners();
  }

}