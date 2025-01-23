import 'package:car_app/core/extensions/context_extension.dart';
import 'package:car_app/core/extensions/int_extension.dart';
import 'package:car_app/core/extensions/list_extension.dart';
import 'package:car_app/core/extensions/textstyle_extension.dart';
import 'package:car_app/core/mixins/app_notice.dart';
import 'package:car_app/core/resource/app_assets.dart';
import 'package:car_app/core/services/shared_prefs.dart';
import 'package:car_app/core/thema/app_colors.dart';
import 'package:car_app/core/thema/app_texts.dart';
import 'package:car_app/features/auth/screens/auth_button.dart';
import 'package:car_app/features/auth/screens/sign_in/auth_text_feald.dart';
import 'package:car_app/features/auth/screens/sign_in/sign_up_screen.dart';
import 'package:car_app/features/home/home_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> with AppNotice{
  final _loginComtroller = TextEditingController();
  final _passwordController = TextEditingController();
  final _prefs = SharedPrefs();
  @override
  void dispose() {
    _loginComtroller.dispose();
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
              Text('Sign in', style: AppTexts.regular.setSize(48),
              ),
              100.verticalSape,
              AuthTextFeald(controller: _loginComtroller,
               hint: 'enter email',
                title: 'EMAIL OR PHONE',
                ),
              20.verticalSape,
              AuthTextFeald(controller: _passwordController,
               hint: '******',
                title: 'PASSWORD',
                ),
              20.verticalSape,
               const Text('Forgot password?'),
              40.verticalSape,
              InkWell(
                onTap: () async{
                  final login = await _prefs.read(key: StorageKey.login);
                  final password = await _prefs.read(key: StorageKey.password);
                  if (login == _loginComtroller.text && password == _passwordController.text) {
                    showSuccess(message: 'успешный- вход');
                    context.push(
                     const HomeScreen(),
                      );
                  } else {
                    showError(errorText: "ошибка- при авторизации");
                  }
                },
                child: Container(
                  height: 60,
                  padding: [12, 60].symmetricPadding,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:  Center(child: SizedBox(
                    child: Text('Log In', style: AppTexts.semiBold.setSize(20).copyWith(color: AppColors.textcolor),
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
                 text: 'Continue wich Google',
                 ),
                 40.verticalSape,
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Don’t Have an account yet?'),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen(),
                        ),
                        );
                      },
                      child: const Text(
                        'SIGN UP', style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  ],
                 )
            ],
          ),
        ),
      ),
    );
  }
}