import 'package:flutter/material.dart';
import 'package:gdsc_app/views/auth/signup.dart';
import 'package:gdsc_app/views/homescreen.dart';
import 'package:gdsc_app/views/people.dart';
import 'package:gdsc_app/views/profile_screen.dart';
import 'package:gdsc_app/widgets/bottom_nav.dart';

import '../views/auth/login.dart';

final customRoutes = <String, WidgetBuilder>{
  LoginScreen.loginScreenId: (context) => const LoginScreen(),
  SignUpScreen.signUpScreenId: (context) => const SignUpScreen(),
  BottomNav.bottomNavId: (context) => const BottomNav(),
  Homescreen.homeScreenId: (context) => const Homescreen(),
  People.peopleScreenId: (context) => const People(),
  ProfileScreen.profileScreenId: (context) => const ProfileScreen(),
};
