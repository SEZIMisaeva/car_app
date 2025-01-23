import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/thema/app_texts.dart';
import 'package:flutter/material.dart';

class AuthTextFeald extends StatelessWidget {
  const AuthTextFeald({
    required this.controller,
    required this.hint,
    required this.title,
    super.key});

  final String title;
  final String hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
              style: AppTexts.regular.setSize(14),
              ),
              TextFormField(
                controller: controller,
                decoration: 
                 InputDecoration(
                  hintText: hint),
              )
      ],
    );
  }
}