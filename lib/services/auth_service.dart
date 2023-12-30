import 'dart:convert';

import 'package:sportcenter/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = 'https://sportcenter.creazylab.works/api/v1';

  // register
  Future<UserModel> register({
    String? name,
    String? email,
    String? username,
    String? password,
    String? passwordConfirmation,
    String? phone,
  }) async {
    var url = Uri.parse('$baseUrl/register');
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'name': name,
      'email': email,
      'username': username,
      'password': password,
      'password_confirmation': passwordConfirmation,
      'phone': phone,
    });

    var response = await http.post(url, headers: headers, body: body);

    print(response.body);
    if (response.statusCode == 200) {
      // var data = jsonDecode(response.body['data']);
      var responseBody = jsonDecode(response.body);
      var data = responseBody['data'];
      // var user = UserModel.fromJson(data['data']);
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ${data['access_token']}';
      return user;
    } else {
      throw Exception('Gagal register');
    }
  }

  // login
  Future<UserModel> login({
    String? emailOrUsername,
    String? password,
  }) async {
    var url = Uri.parse('$baseUrl/login');
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email_or_username': emailOrUsername,
      'password': password,
    });

    var response = await http.post(url, headers: headers, body: body);

    print(response.body);
    if (response.statusCode == 200) {
      // var data = jsonDecode(response.body['data']);
      var responseBody = jsonDecode(response.body);
      var data = responseBody['data'];
      // var user = UserModel.fromJson(data['data']);
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ${data['access_token']}';
      return user;
    } else {
      throw Exception('Gagal login');
    }
  }
}
