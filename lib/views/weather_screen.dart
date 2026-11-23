import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

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
                      "Weather",
                      style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Image.network(
                  "https://tse1.mm.bing.net/th/id/OIP.EHiyFi-1cp99-s8f-K9EIgHaGW?r=0&pid=Api&h=220&P=0",
                ),
                SizedBox(height: 10),
                Text(
                  "28°C",
                  style: TextStyle(
                    fontSize: width * 0.07,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Partly Cloudy",
                  style: TextStyle(fontSize: width * 0.05, color: Colors.black),
                ),
                SizedBox(height: 30),
                Container(
                  // height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFFD6DC),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: width * 0.05,
                              color: Colors.black,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "Lahore",
                              style: TextStyle(
                                fontSize: width * 0.04,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.water_drop,
                              size: width * 0.05,
                              color: Colors.deepPurple.shade500,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "Humidity 65%",
                              style: TextStyle(
                                fontSize: width * 0.04,
                                color: Colors.deepPurple.shade500,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
