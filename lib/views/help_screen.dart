import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

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
                      "Help",
                      style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: height * 0.2,
                  width: width * 0.20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                  ),
                  child: Center(
                    child: Text(
                      "?",
                      style: TextStyle(
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Need help?",
                  style: TextStyle(
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Find answers to commmon",
                  style: TextStyle(
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent.shade200,
                  ),
                ),
                Text(
                  "questions here",
                  style: TextStyle(
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent.shade200,
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: (){},
                  child: Container(
                    // height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.deepPurple,
                    ),
                    child: Center(
                      child: Text(
                        "View FAQ",
                        style: TextStyle(
                          fontSize: width * 0.07,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
