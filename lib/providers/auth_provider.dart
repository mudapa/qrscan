import 'package:flutter/material.dart';
import 'package:qrscan/models/user_model.dart';
import 'package:qrscan/services/auth_services.dart';

class AuthProvider with ChangeNotifier {
  late UserModel _user;

  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  // Note: Login
  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      // Note: Login
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
