import 'package:flutter/material.dart';

import '../utils/constants.dart';

class AuthButtons extends StatelessWidget {
  const AuthButtons({
    Key? key,
    required this.size,
    required this.buttonTitle,
    required this.onPressed,
  }) : super(key: key);

  final Size size;
  final String buttonTitle;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(size.width, 60.0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(24.0),
          ),
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            buttonTitle,
            style: kH3TextStyle,
          ),
          const SizedBox(width: 12.0),
          const Icon(Icons.arrow_forward_ios_outlined, size: 32.0),
        ],
      ),
    );
  }
}
