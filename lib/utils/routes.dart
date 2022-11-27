import 'package:flutter/material.dart';

import '../views/auth/login.dart';

final customRoutes = <String, WidgetBuilder>{
  LoginScreen.loginScreenId: (context) => const LoginScreen(),
};
