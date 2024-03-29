import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomeFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  const CustomeFilledButton(
      {super.key,
      required this.title,
      this.width = double.infinity,
      this.height = 50,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: purpleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
      ),
    );
  }
}

class CustomeTextButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  const CustomeTextButton(
      {super.key,
      required this.title,
      this.width = double.infinity,
      this.height = 50,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero, shape: const StadiumBorder()),
        child: Text(
          title,
          style: greyTextStyle.copyWith(fontSize: 16),
        ),
      ),
    );
  }
}
