import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/thema/app_texts.dart';
import 'package:car_app/features/auth/screens/sign_in_buttom.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  const EdgeInsets.only(left: 28, right: 13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text('Sign in', style: AppTexts.regular.setSize(48),
              ),
              const SizedBox(
                height: 100,
              ),
              Text('EMAIL OR PHONE',
              style: AppTexts.regular.setSize(14),
              ),
              TextFormField(
                decoration: 
                const InputDecoration(
                  hintText: 'Loremipsum@gmail.com'),
              ),
              const SizedBox(
                height: 25,
              ),
              Text('PASSWORD',
              style: AppTexts.regular.setSize(14),
              ),
              TextFormField(
                decoration: 
                const InputDecoration(
                  hintText: '************'),
              ),
              const SizedBox(
                height: 20,
              ),
              Text('Forgot password?'),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(onPressed: (){}, child: Text('Log in'),),
              Text('OR'),
               const SignInButtom(Image: Icon(Icons.facebook), text: 'Continue wich Facebook'),
               const SizedBox(
                height: 13,
               ),
                const SignInButtom(Image: Icon(Icons.logo_dev), text: 'Continue wich Google'),
            ],
          ),
        ),
      ),
    );
  }
}