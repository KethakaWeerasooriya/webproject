import 'package:flutter/material.dart';

class ContactFormModel with ChangeNotifier {
  bool _isFormVisible = false;

  bool get isFormVisible => _isFormVisible;

  void toggleFormVisibility() {
    _isFormVisible = !_isFormVisible;
    notifyListeners();
  }
}