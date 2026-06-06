import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wakeel_property_finder_platform_app/core/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _moveToLoginScreen();
    super.initState();
  }

  Future<void> _moveToLoginScreen() async {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, AppRoutes.loginFlowScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/texture.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentGeometry.topLeft,
                end: AlignmentGeometry.bottomRight,
                colors: [Color(0xFF06A797), Color(0xFF007D71)],
              ),
            ),
          ),

          Align(
            alignment: AlignmentGeometry.center,
            child: Image.asset(
              'assets/images/wakeel_logo.png',
              width: 153.w,
              height: 100.h,
            ),
          ),
          Align(
            alignment: AlignmentGeometry.bottomEnd,
            child: Image.asset('assets/images/rectangle.png'),
          ),
        ],
      ),
    );
  }
}
