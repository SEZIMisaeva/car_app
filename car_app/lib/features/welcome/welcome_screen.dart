import 'package:car_app/core/resource/app_assets.dart';
import 'package:car_app/core/thema/app_colors.dart';
import 'package:car_app/features/auth/screens/auth_button.dart';
import 'package:car_app/features/auth/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppAssets.welcomeBg,
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 300,
                ),
                SizedBox(
                  height: 60,
                  child: Image.asset(AppAssets.welcomeLogo,
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                Text('Rent your dream car from then\nBest Company',
                textAlign: TextAlign.center,
                 style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600,
                color: AppColors.textcolor81,
                
                ),
                ),
                const SizedBox(
                  height: 200,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen(),),);
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffC64949),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 55),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                      children:  [const Text('Get Started',style: TextStyle(fontSize: 20, color: Colors.white,
                      ),
                      ),
                      Icon(Icons.navigate_next, size: 50.0, color: Colors.white,),
                      ],
                    ),
               ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}