import 'package:flutter/material.dart';
import 'package:gdsc_app/views/auth/signup.dart';

import '../views/auth/login.dart';

final customRoutes = <String, WidgetBuilder>{
  LoginScreen.loginScreenId: (context) => const LoginScreen(),
  SignUpScreen.signUpScreenId: (context) {
    return const SignUpScreen();
  },
};
