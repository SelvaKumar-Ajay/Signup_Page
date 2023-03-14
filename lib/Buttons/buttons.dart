import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButtons extends StatelessWidget {
  String givenText;
  Color givenButtonColor;
  final Color givenTextColor;
  double givenBorderRadius;
  VoidCallback onPressed;
  CustomButtons({
    super.key,
    required this.givenText,
    this.givenButtonColor = Colors.black,
    this.givenBorderRadius = 10,
    required this.onPressed,
    this.givenTextColor = Colors.white,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(givenButtonColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(givenBorderRadius),
          ),
        ),
      ),
      onPressed: () => onPressed,
      child: Text(
        givenText,
        style: TextStyle(
          color: givenTextColor,
          fontSize: 15,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }
}
