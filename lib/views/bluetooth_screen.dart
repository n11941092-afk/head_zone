
import 'package:flutter/material.dart';

class BluetoothScreen extends StatelessWidget {
  const BluetoothScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffEAF3FF),
      body: Center(
        child: Container(
          width: width * 0.95,
          //height: height * 0.65,
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
                        size: width * 0.05,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: width * 0.25),
                    Text(
                      "Bluetooth Screen",
                      style: TextStyle(
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.05),
                CircleAvatar(
                  radius: width * 0.17,
                  backgroundColor: Colors.purple.shade100,
                  child: CircleAvatar(
                    radius: width * 0.15,
                    backgroundColor: Colors.deepPurpleAccent,
                    child: Icon(
                      Icons.bluetooth,
                      size: width * 0.09,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.05),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: width * 0.05,
                          height: width * 0.05,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: width * 0.035,
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                        Text(
                          "Connected",
                          style: TextStyle(
                            fontSize: width * 0.05,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Air Pods Pro",
                      style: TextStyle(
                        fontSize: width * 0.05,
                        color: Colors.deepPurple,
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        // height: 20,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.purple.shade100,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            "Disconnect",
                            style: TextStyle(
                              fontSize: width * 0.07,
                              color: Colors.deepPurpleAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
