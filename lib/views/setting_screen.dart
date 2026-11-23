
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:head_zone/views/about_screen.dart';
import 'package:head_zone/views/help_screen.dart';
import 'package:head_zone/views/splash_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

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
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: width * 0.04,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: width * 0.25),
                    Text(
                      "settings".tr,
                      style: TextStyle(
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: height * 0.05),

                InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.volume_up,
                        color: Colors.deepPurple,
                        size: width * 0.05,
                      ),
                      title: Text(
                        "sound".tr,
                        style: TextStyle(fontSize: width * 0.05),
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        size: width * 0.05,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.notifications,
                        color: Colors.deepPurple,
                        size: width * 0.05,
                      ),
                      title: Text(
                        "notifications".tr,
                        style: TextStyle(fontSize: width * 0.05),
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        size: width * 0.05,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Select Language"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                title: Text("English"),
                                onTap: () {
                                  Get.updateLocale(
                                    Locale('en', 'US'),
                                  );
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                title: Text("Urdu"),
                                onTap: () {
                                  Get.updateLocale(
                                    Locale('ur', 'PK'),
                                  );
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                title: Text("Arabic"),
                                onTap: () {
                                  Get.updateLocale(
                                    Locale('ar', 'SA'),
                                  );
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.language,
                        color: Colors.deepPurple,
                        size: width * 0.05,
                      ),
                      title: Text(
                        "language".tr,
                        style: TextStyle(fontSize: width * 0.05),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "English",
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 20,
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            size: width * 0.05,
                            color: Colors.deepPurple,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutScreen(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.deepPurple,
                        size: width * 0.05,
                      ),
                      title: Text(
                        "about".tr,
                        style: TextStyle(fontSize: width * 0.05),
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        size: width * 0.05,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HelpScreen(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: Colors.deepPurple,
                        size: width * 0.05,
                      ),
                      title: Text(
                        "help".tr,
                        style: TextStyle(fontSize: width * 0.05),
                      ),
                      trailing: Icon(
                        Icons.chevron_right,
                        size: width * 0.05,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 30),

                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SplashScreen(),
                      ),
                          (route) => false,
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xffFFD6DC),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.logout,
                          size: width * 0.04,
                          color: Colors.red,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "logout".tr,
                          style: TextStyle(
                            fontSize: width * 0.07,
                            color: Colors.red,
                          ),
                        ),
                      ],
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
