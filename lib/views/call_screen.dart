
import 'package:flutter/material.dart';
import 'package:head_zone/views/bluetooth_screen.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

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
                        child: Icon(Icons.arrow_back, size: width * 0.05,color: Colors.black,)),
                    SizedBox(width: width * 0.25),
                    Text(
                      "Call",
                      style: TextStyle(
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.05),
                CircleAvatar(
                  radius: width * 0.15,
                  backgroundColor: Color(0xffF7F3FF),
                  child: CircleAvatar(
                    radius: width * 0.17,
                    backgroundColor: Color(0xffE8DCFF),
                    child: Icon(
                      Icons.call,
                      size: width*0.08,
                      color:Colors.deepPurpleAccent
                    ),
                  ),
                ),
                SizedBox(height: height*0.05,),
                Column(
                  children: [
                    Text("No Resent Calls",
                      style: TextStyle(fontSize: width*0.05,
                          color: Colors.black),),
                    Text("Make a call anytime",
                      style: TextStyle(fontSize: width*0.05,
                          color: Colors.deepPurple),),
                    SizedBox(height: height*0.05,),
                    InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BluetoothScreen()));},
                      child: Container(
                       // height: 20,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.deepPurpleAccent
                        ),
                        child: Center(
                          child: Text("Dial Pad",
                            style: TextStyle(fontSize: width*0.07,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),),
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
