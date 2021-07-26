import 'package:flutter/cupertino.dart';

class PageProvider with ChangeNotifier{
  int _currentIindex = 0;

  int get currentIndex => _currentIindex;

  set currentIndex(int index){
    _currentIindex = index;
    notifyListeners();
  }
}