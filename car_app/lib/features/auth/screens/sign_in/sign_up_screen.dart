import 'package:car_app/core/extensions/context_extension.dart';
import 'package:car_app/core/extensions/list_extension.dart';
import 'package:car_app/features/auth/screens/sign_in/sign_in_screen.dart';

import 'package:car_app/core/extensions/int_extension.dart';
import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/resource/app_assets.dart';
import 'package:car_app/core/services/shared_prefs.dart';
import 'package:car_app/core/thema/app_colors.dart';
import 'package:car_app/core/thema/app_texts.dart';
import 'package:car_app/features/auth/screens/auth_button.dart';
import 'package:car_app/features/auth/screens/sign_in/auth_text_feald.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();
  final __loginController = TextEditingController();
  final _passwordController = TextEditingController();

  final _prefs = SharedPrefs();

  @override
  void dispose() {
    _nameController.dispose();
    __loginController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
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
              60.verticalSape,
              Text('Sign Up', style: AppTexts.regular.setSize(48),
              ),
              100.verticalSape,
              AuthTextFeald(controller: _nameController,
               hint: 'FULL NAME',
                title: 'enret your name',
                ),
              20.verticalSape,
              AuthTextFeald(controller: __loginController,
               hint: 'Enter your login',
                title: 'EMAIL OR PHONE',
                ),
                20.verticalSape,
                AuthTextFeald(controller: _passwordController,
               hint: '******',
                title: 'PASSWORD',
                ),
              40.verticalSape,
              InkWell(
                onTap:() {
                  
                  
                  _prefs.save(key: StorageKey.login, value: __loginController.text);
                  _prefs.save(key: StorageKey.password, value: _passwordController.text);
                  context.push(const SignInScreen());
                },
                child: Container(
                  height: 60,
                  padding: [12, 60].symmetricPadding,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: 10.borderRadius,
                  ),
                  child:  Center(child: SizedBox(
                    child: Text('Sign In', style: AppTexts.semiBold.setSize(20).copyWith(color: AppColors.textcolor),
                    ),
                    ),
                    ),
                ),
              ),
              15.verticalSape,
             const Center(child:  Text('OR')),
              15.verticalSape,
               const AuthButton(
                image: AppAssets.facebook,
                text: 'Continue wich Facebook'),
               13.verticalSape,
                 AuthButton(
                  image: AppAssets.chrome,
                 text: 'Continue wich Google'),
            ],
          ),
        ),
      ),
    );
  }
}