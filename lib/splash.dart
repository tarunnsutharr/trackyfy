import 'package:flutter/material.dart';
import 'package:trackyfy/Nextscreen.dart';
import 'package:trackyfy/login.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NextScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,

      body: Column(
        children: [Padding(padding: EdgeInsets.only(top: 290)),
          Center(child: Image.asset("assets/images/applogo.png",width: 200,height: 200,)),

          Text("Trackyfy",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),),

          SizedBox(height: 200,),


          Text("Track Smart. Save More.",style: TextStyle(fontSize: 20,))
          
        ],
      )
    );
  }
}
