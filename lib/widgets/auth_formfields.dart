import 'package:flutter/material.dart';

import '../utils/constants.dart';

class AuthTextField extends StatefulWidget {
  const AuthTextField({
    Key? key,
    required this.size,
    required this.title,
    required this.hintText,
    this.isPasswordField = false,
  }) : super(key: key);

  final Size size;
  final String title, hintText;
  final bool isPasswordField;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title, style: kH4TextStyle),
          const SizedBox(height: 8.0),
          SizedBox(
            height: 60.0,
            width: widget.size.width,
            child: TextFormField(
              cursorColor: Colors.green,
              obscureText: widget.isPasswordField ? obscureText : false,
              decoration: InputDecoration(
                filled: true,
                fillColor: kTextFieldFilledColor,
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 28.0, vertical: 22.0),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                ),
                hintText: widget.hintText,
                suffixIconColor: Colors.green,
                suffixIcon: !widget.isPasswordField
                    ? null
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        icon: const Icon(
                          Icons.visibility_off_outlined,
                          size: 34.0,
                          color: Colors.black,
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
