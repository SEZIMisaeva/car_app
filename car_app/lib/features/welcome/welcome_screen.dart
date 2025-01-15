import 'package:car_app/core/resource/app_assets.dart';
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
                color: const Color(0xffF6F6F6CF).withOpacity(0.81),
                
                ),
                ),
                const SizedBox(
                  height: 200,
                ),
                ElevatedButton(onPressed: (){}, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffC64949),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 14,horizontal: 65),
                  child: const Text('Get Started',style: TextStyle(fontSize: 20, color: Colors.white,
                  ),
                  ),
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