import 'package:flutter/material.dart';
import 'package:street_wise/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.purple.shade900,
    ),
      ),
      home: LoginPage(),
    );
  }
}
