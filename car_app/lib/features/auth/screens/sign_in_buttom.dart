import 'package:flutter/material.dart';

class SignInButtom extends StatelessWidget {
  const SignInButtom({
    required this.Image,
    required this.text,
    super.key,
    });
  final String text;
  final Widget Image;

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 60),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 30,
                      child: Image),
                    Text(text),
                  ],
                ),
              );
  }
}