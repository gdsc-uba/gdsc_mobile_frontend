import 'package:flutter/material.dart';
import 'package:gdsc_app/utils/constants.dart';
import 'package:gdsc_app/widgets/auth_formfields.dart';

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
                decoration: BoxDecoration(
                  color: kLightBlue,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 150.0,
                        width: 160.0,
                        decoration: BoxDecoration(
                          color: kProfileCardBlue,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text("Person", style: kH2TextStyle),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    AuthTextField(
                      size: size,
                      title: "Name",
                      hintText: "Names",
                      blueFields: true,
                      showLable: false,
                    ),
                    const SizedBox(height: 25.0),
                    AuthTextField(
                      size: size,
                      title: "email",
                      hintText: "email@email.com",
                      blueFields: true,
                      showLable: false,
                    ),
                    const SizedBox(height: 25.0),
                    const SizedBox(
                        height: 240.0, child: LargerTextArea(hintText: "Bio")),
                    const SizedBox(height: 25.0),
                    AuthTextField(
                      size: size,
                      title: "Github",
                      hintText: "Github profile",
                      blueFields: true,
                      showLable: false,
                    ),
                    const SizedBox(height: 25.0),
                    AuthTextField(
                      size: size,
                      title: "Twitter",
                      hintText: "Twitter",
                      blueFields: true,
                      showLable: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
