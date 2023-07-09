import 'package:flutter/material.dart';
import 'package:freelance_aditya/screens/login_authentication.dart';
import 'package:freelance_aditya/screens/register_authentication.dart';
import 'package:freelance_aditya/widgets/bottom_navigation.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello world project',
      home: LoginScreen(),
    );
  }
}
