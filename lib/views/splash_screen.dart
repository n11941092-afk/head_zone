
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:head_zone/views/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffF4EEFF),
              Colors.white,
              Color(0xffE9DDFF),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Container(
            height: height * 0.85,
            width: width * 0.90,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff6935C5).withOpacity(0.25),
                  blurRadius: 20,
                  spreadRadius: 3,
                  offset: Offset(0, 8),
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: height * 0.12),
                  Container(
                    height: width * 0.60,
                    width: width * 0.60,
                    decoration: BoxDecoration(
                      color: Color(0xffE9DDFF),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.headphones_rounded,
                      size: width * 0.44,
                      color: Color(0xff6935C5),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Icon(
                    Icons.graphic_eq,
                    size: width * 0.13,
                    color: Color(0xff874BFF),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    "Headphones",
                    style: TextStyle(
                      fontSize: width * 0.065,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff111033),
                    ),
                  ),
                  SizedBox(height: height * 0.006),
                  Text(
                    "Feel The Music",
                    style: TextStyle(
                      fontSize: width * 0.04,
                      color: Color(0xff302078),
                    ),
                  ),
                  SizedBox(height: height * 0.04),
                   SizedBox(
                    height: width * 0.09,
                    width: width * 0.09,
                    child: CircularProgressIndicator(
                      color: Color(0xff713DE5),
                      strokeWidth: 3,
                    ),
                  ),

                  SizedBox(height: height * 0.12),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
