import 'package:bookly/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backroundColor,
    required this.textColor,
    this.borderRadius,
    this.fontSize,
    required this.text,
  });
  final Color backroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            )),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.testStyle18.copyWith(
            color: textColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
