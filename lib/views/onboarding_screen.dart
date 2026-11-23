
import 'package:flutter/material.dart';
import 'package:head_zone/views/home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

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
              Color(0xffF5F0FF),
              Colors.white,
              Color(0xffEEE5FF),
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
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.07,
                vertical: height * 0.025,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    SizedBox(height: height * 0.08),

                    Column(
                      children: [
                        Text(
                          "Smart Headphone",
                          style: TextStyle(
                            fontSize: width * 0.065,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff10102F),
                          ),
                        ),

                        SizedBox(height: height * 0.006),

                        Text(
                          "Connect • Listen • Enjoy",
                          style: TextStyle(
                            fontSize: width * 0.04,
                            color: Color(0xff171044),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: height * 0.05),

                    Icon(
                      Icons.headphones_rounded,
                      size: width * 0.45,
                      color: Color(0xff6935C5),
                    ),

                    SizedBox(height: height * 0.04),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle,
                          size: width * 0.035,
                          color: Color(0xff6935E8),
                        ),
                        SizedBox(width: width * 0.035),
                        Icon(
                          Icons.circle,
                          size: width * 0.035,
                          color: Color(0xffD7C8FF),
                        ),
                        SizedBox(width: width * 0.035),
                        Icon(
                          Icons.circle,
                          size: width * 0.035,
                          color: Color(0xffD7C8FF),
                        ),
                      ],
                    ),

                    SizedBox(height: height * 0.04),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                       // height: height * 0.06,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.deepPurple,
                        ),
                        child: Center(
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: width * 0.06,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),

                   // SizedBox(height: height * 0.05),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
