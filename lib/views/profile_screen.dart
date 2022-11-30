import 'package:flutter/material.dart';
import 'package:gdsc_app/utils/constants.dart';

class ProfileScreen extends StatefulWidget {
  static const profileScreenId = "/profile_screen";
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.4,
                width: size.width,
                color: kLightBlue,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        height: 160.0,
                        width: 160.0,
                        decoration: BoxDecoration(
                          color: kProfileCardBlue,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      Text("Person", style: kH2TextStyle),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
