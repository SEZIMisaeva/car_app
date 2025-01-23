import 'package:car_app/core/extensions/int_extension.dart';
import 'package:car_app/core/extensions/list_extension.dart';
import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/thema/app_texts.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    required this.image,
    required this.text,
    super.key,
    });
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: [12, 60].symmetricPadding,
                decoration: BoxDecoration(
                  borderRadius: 10.borderRadius,
                  border: Border.all(color: Colors.black, width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 30,
                      child: Image.asset(image),
                      ),
                    Text(text, style: AppTexts.regular.setSize(14),
                    ),
                  ],
                ),
              );
  }
}