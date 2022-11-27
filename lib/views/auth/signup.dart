import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../widgets/auth_buttons.dart';
import '../../widgets/auth_formfields.dart';

class SignUpScreen extends StatefulWidget {
  static const signUpScreenId = "/sign_up_screen";
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Register", style: kH2TextStyle),
                      const SizedBox(height: 12.0),
                      AuthTextField(
                        size: size,
                        title: "Name",
                        hintText: "Name",
                      ),
                      const SizedBox(height: 25.0),
                      AuthTextField(
                        size: size,
                        title: "Email",
                        hintText: "Email",
                      ),
                      const SizedBox(height: 25.0),
                      AuthTextField(
                        size: size,
                        title: "Password",
                        hintText: "Password",
                        isPasswordField: true,
                      ),
                      const SizedBox(height: 65.0),
                      AuthButtons(
                        size: size,
                        buttonTitle: 'Sign Up',
                        onPressed: () {},
                      ),
                      const SizedBox(height: 25.0),
                      const Text("Already have an account?"),
                      const SizedBox(height: 12.0),
                      AuthButtons(
                        size: size,
                        buttonTitle: 'Login',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
