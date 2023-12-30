// material.dart is needed for the SnackBar
import 'package:flutter/material.dart';
import 'package:sportcenter/models/user_model.dart';
import 'package:sportcenter/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  UserModel _user = UserModel(
    id: 0,
    name: '',
    email: '',
    username: '',
    password: '',
    // passwordConfirmation: '',
    profilePhotoUrl: '',
    phone: '',
    token: '',
  );

  UserModel get user => _user;

  set user(UserModel newUser) {
    // setter
    _user = newUser;
    notifyListeners();
  }

  // register
  Future<bool> register({
    required String name,
    required String email,
    required String username,
    required String password,
    required String passwordConfirmation,
    required String phone,
  }) async {
    try {
      UserModel user = await AuthService().register(
        name: name,
        email: email,
        username: username,
        password: password,
        passwordConfirmation: passwordConfirmation,
        phone: phone,
      );

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  // login
  Future<bool> login({
    required String emailOrUsername,
    required String password,
  }) async {
    try {
      UserModel user = await AuthService().login(
        emailOrUsername: emailOrUsername,
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
