import 'package:flutter/material.dart';
import 'package:flutter_dwa/models/user_model.dart';
import 'package:flutter_dwa/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  //tambahnkan usermodel
  UserModel _user;

  // getter dan sette
  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    String name,
    String email,
    String password,
    String password_confirmation,
  }) async {
    try {
      UserModel user = await AuthService().register(
        name: name,
        email: email,
        password: password,
        password_confirmation: password_confirmation,
      );

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> login({
    String email,
    String password,
  }) async {
    try {
      UserModel user = await AuthService().login(
        email: email,
        password: password,
      );

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
