import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomeTextFormField extends StatelessWidget {
  final String title;
  final bool obscureText;
  final TextEditingController? controller;
  const CustomeTextFormField(
      {super.key,
      required this.title,
      this.obscureText = false,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
