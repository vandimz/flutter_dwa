//digunakan untuk melakukan request ke api backend

import 'dart:convert';

import 'package:flutter_dwa/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = 'https://api.rw11.info/api';

  //function register ke api
  Future<UserModel> register({
    String name,
    String email,
    String password,
    String password_confirmation,
  }) async {
    var url = '$baseUrl/auth/signup';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': password_confirmation,
    });

    // ini request ke API backend
    //tipe futere jadi pake awai didepan
    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.statusCode);

    if (response.statusCode == 201) {
      // cek hasil response dari postman, karena response nya 'message' jadi samain

      // remark sementara karena beda api register
      // var data = jsonDecode(response.body)['data'];
      // UserModel user = UserModel.fromJson(data['user']);
      // user.token = 'Bearer ' + data['access_token'];
      // return user;

      var dataMessage = jsonDecode(response.body)['message'];

      print(dataMessage);
    } else {
      throw Exception('Gagal Register');
    }
  }

  //function Login ke api
  Future<UserModel> login({
    String email,
    String password,
  }) async {
    var url = '$baseUrl/auth/login';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    // ini request ke API backend
    //tipe futere jadi pake awai didepan
    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      // cek hasil response dari postman, karena response nya 'message' jadi samain

      // remark sementara karena beda api register
      var data = jsonDecode(response.body);
      UserModel user = UserModel.fromJson(data);
      user.token = data['token_type'] + data['access_token'];
      return user;

      // var dataMessage = jsonDecode(response.body)['message'];

      // print(dataMessage);
    } else {
      throw Exception('Gagal Login');
    }
  }
}
