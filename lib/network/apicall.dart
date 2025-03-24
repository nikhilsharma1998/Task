
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class Api {
  final dio = Dio();
  loginApi(String email, String password) async {
    final apiUrl =
        "http://13.38.171.243:9876/user/login?email=$email&password=$password";
    Response response;
    response =
        await dio.post(apiUrl, data: {"email": email, "password": password});
    if (response.statusCode == 200) {
      print(response.data.toString());
    
    } else {
      print("error");
    }
  }
}
