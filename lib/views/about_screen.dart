import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffEAF3FF),
      body: Center(
        child: Container(
          width: width * 0.95,
          height: height * 0.65,
          padding: EdgeInsets.all(width * 0.07),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.deepPurple.withOpacity(0.25),
                blurRadius: 25,
                spreadRadius: 25,
                offset: Offset(0, 8),
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height * 0.02),
                Row(
                  children: [
                    InkWell(
                      onTap: (){Navigator.pop(context);},
                      child: Icon(
                        Icons.arrow_back,
                        size: width * 0.04,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: width * 0.25),
                    Text(
                      "About App",
                      style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.headphones_rounded,
                  size: width * 0.30,
                  color: Color(0xff6935C5),
                ),
                Text(
                  "HeadPhones App",
                  style: TextStyle(
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Version 1.0.0",
                  style: TextStyle(
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent.shade200,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "A simple and smart",
                  style: TextStyle(
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent.shade200,
                  ),
                ),
                Text(
                  "headphones companion app",
                  style: TextStyle(
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent.shade200,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "💜   Made whit love",
                  style: TextStyle(
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
