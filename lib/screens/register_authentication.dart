import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freelance_aditya/screens/home_screen.dart';
import 'package:freelance_aditya/widgets/bottom_navigation.dart';
import 'package:freelance_aditya/widgets/ellipse_design.dart';
import 'package:freelance_aditya/widgets/input_text_field.dart';
import 'package:freelance_aditya/widgets/signin_button.dart';
import 'package:freelance_aditya/widgets/submit_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF1F1F1),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const EllipseDesign(),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontFamily: 'Satoshi Variable',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        InputTextFieldWidget(
                          'Email address or Phone',
                          controller: _emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your email or phone';
                            }
                            // Additional validation logic
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        InputTextFieldWidget(
                          'Password',
                          controller: _passwordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a password';
                            }
                            // Additional validation logic
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        InputTextFieldWidget(
                          'Confirm Password',
                          controller: _confirmPasswordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please confirm your password';
                            }
                            if (value != _passwordController.text) {
                              return 'Passwords do not match';
                            }
                            // Additional validation logic
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Center(
                          child: SubmitButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()),
                              );
                            },
                            title: 'Register',
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.grey,
                                height: 3,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                'or',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Satoshi Variable',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.grey,
                                height: 3,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Center(
                          child: SignInButton(
                            imagePath: 'icons/Apple.png',
                            onPressed: () {},
                            title: 'Sign in with Apple',
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Center(
                          child: SignInButton(
                            imagePath: 'icons/Google.png',
                            onPressed: () {},
                            title: 'Sign in with Google',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavigation()),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Go to homepage',
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.normal,
                      fontSize: 8,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '',
                        style: TextStyle(
                          fontFamily: 'Satoshi',
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
