import 'package:flutter/foundation.dart';

class LoginModel with ChangeNotifier {
  int _count = 0;


  int get count => _count;
  void increment() {
    _count++; // add count
    notifyListeners(); // Notifies all listeners of the change
  }
}
