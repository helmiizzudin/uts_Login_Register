import 'package:flutter/material.dart';
import 'model/LoginPage.dart';
import 'model/RegisterPage.dart';
import 'model/ProfilePage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login/Register Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/profile' : (context)=> ProfilePage(),
      },
    );
  }
}