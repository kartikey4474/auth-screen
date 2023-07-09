import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freelance_aditya/screens/register_authentication.dart';
import 'package:freelance_aditya/widgets/input_text_field.dart';
import 'package:freelance_aditya/widgets/signin_button.dart';
import 'package:freelance_aditya/widgets/submit_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFFF1F1F1),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: 368,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/ell1.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: 330,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/ell2.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Login",
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
                          validator: (String? value) {},
                          controller: _emailController,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        InputTextFieldWidget(
                          'Password',
                          validator: (String? value) {},
                          controller: _passwordController,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Center(
                          child: SubmitButton(
                            onPressed: () {},
                            title: 'Login',
                          ),
                        ),
                        SizedBox(
                          height: 32,
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
                          height: 32,
                        ),
                        Center(
                          child: SignInButton(
                            imagePath: 'icons/Apple.png',
                            onPressed: () {},
                            title: 'Sign in with Apple',
                          ),
                        ),
                        SizedBox(
                          height: 16,
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
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Dont have account? ',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.normal,
                        fontSize: 8,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Register',
                          style: TextStyle(
                            fontFamily: 'Satoshi',
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
