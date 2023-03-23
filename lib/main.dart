import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:loginuicolors/login.dart';
import 'package:loginuicolors/register.dart';
import 'package:loginuicolors/page2.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'page2View': (context) => SecondRoute(),
    },
  ));

  final dio = Dio();
  void getHttp() async {
    final response = await dio.get('https://dart.dev');
    print(response);
    print("http call");

  }
}
