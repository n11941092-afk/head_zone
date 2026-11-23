
import 'package:flutter/material.dart';
import 'package:head_zone/views/call_screen.dart';
import 'package:head_zone/views/music_screen.dart';
import 'package:head_zone/views/setting_screen.dart';
import 'package:head_zone/views/weather_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE9DDFF),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff6935C5),
                    Color(0xffB99AFF),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.headphones_rounded,
                    size:  width*0.09,
                    color: Colors.white,
                  ),
                  Text(
                    "Headphone App",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width*0.04,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,size: width*0.05, color: Color(0xff6935C5)),
              title: Text("Home",style: TextStyle(fontSize: width*0.05),),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: Icon(Icons.music_note,size: width*0.05, color: Color(0xff6935C5)),
              title: Text("Music",style: TextStyle(fontSize: width*0.05)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MusicScreen()));
              },
            ),

            ListTile(
              leading: Icon(Icons.call,size: width*0.05, color: Color(0xff6935C5)),
              title: Text("Calls",style: TextStyle(fontSize: width*0.05)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CallScreen()));
              },
            ),

            ListTile(
              leading: Icon(Icons.settings,size: width*0.05, color: Color(0xff6935C5)),
              title: Text("Settings",style: TextStyle(fontSize: width*0.05)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingScreen()));
              },
            ),

            ListTile(
              leading: Icon(Icons.wb_sunny,size: width*0.05, color: Color(0xff6935C5)),
              title: Text("Weather",style: TextStyle(fontSize: width*0.05)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WeatherScreen()));
              },
            ),
          ],
        ),
      ),

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
            width: width * 0.90,
            height: height * 0.85,
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.07,
            ),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.055),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Builder(
                        builder: (context) => InkWell(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: Icon(
                            Icons.menu,
                            color: Color(0xff111033),
                            size: width * 0.08,
                          ),
                        ),
                      ),

                      Icon(
                        Icons.notifications,
                        color: Color(0xff6935C5),
                        size: width * 0.08,
                      ),
                    ],
                  ),

                  SizedBox(height: height * 0.025),
                  Text(
                    "Hello,\nAneesa 👋",
                    style: TextStyle(
                      fontSize: width * 0.065,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff111033),
                    ),
                  ),

                  SizedBox(height: height * 0.050),

                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffD9C9FF),
                          blurRadius: 15,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Icon(
                          Icons.headphones_rounded,
                          size: width * 0.20,
                          color: Color(0xff6935C5),
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Connected",
                              style: TextStyle(
                                fontSize: width * 0.045,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Battery: 80%",
                              style: TextStyle(
                                fontSize: width * 0.04,
                                color: Color(0xff302078),
                              ),
                            ),
                          ],
                        ),

                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff6935C5),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: height * 0.050),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(
                                builder: (context) => MusicScreen(),
                              ));
                        },
                        child: Container(
                          width: width * 0.34,
                          decoration: BoxDecoration(
                            color: Color(0xffF0E9FF),
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.music_note,
                                size: width * 0.12,
                                color: Color(0xff6935C5),
                              ),
                              Text(
                                "Music",
                                style: TextStyle(
                                  fontSize: width * 0.05,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width*0.08,),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(
                                builder: (context) => CallScreen(),
                              ));
                        },
                        child: Container(
                          width: width * 0.34,
                          decoration: BoxDecoration(
                            color: Color(0xffF0E9FF),
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.call,
                                size: width * 0.12,
                                color: Color(0xff6935C5),
                              ),
                              Text(
                                "Calls",
                                style: TextStyle(
                                  fontSize: width * 0.05,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: height * 0.015),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(
                                builder: (context) => SettingScreen(),
                              ));
                        },
                        child: Container(
                          width: width * 0.34,
                          decoration: BoxDecoration(
                            color: Color(0xffF0E9FF),
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.settings,
                                size: width * 0.12,
                                color: Color(0xff6935C5),
                              ),
                              Text(
                                "Settings",
                                style: TextStyle(
                                  fontSize: width * 0.05,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),

                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(
                                builder: (context) => WeatherScreen(),
                              ));
                        },
                        child: Container(
                          width: width * 0.34,
                          decoration: BoxDecoration(
                            color: Color(0xffF0E9FF),
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.wb_sunny,
                                size: width * 0.12,
                                color: Color(0xffFFC83D),
                              ),
                              Text(
                                "Weather",
                                style: TextStyle(
                                  fontSize: width * 0.05,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                //  SizedBox(height: height * 0.03),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
