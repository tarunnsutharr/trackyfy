import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {

  TextEditingController mailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  TextEditingController confpasscontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F8F7),
      appBar: AppBar(
        title: Row(
          children: [
            ElevatedButton(onPressed: (){},
                child:Icon(Icons.arrow_back_ios_new,) ),
            SizedBox(width: 60,),
            Text("Creat Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
          ],
        ),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/chart2.png"),

            Padding(
              padding: const EdgeInsets.only(right: 150,top: 10),
              child: Text("Join Trackyfy",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Text("Start tracking your expenses offline with ease.",style: TextStyle(fontSize: 15,color: Colors.grey),),


            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Text("Enter your name",style: TextStyle(fontSize: 20,color: Colors.grey),),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Text("Enter your email",style: TextStyle(fontSize: 20,color: Colors.grey),),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Text("Create a strong password",style: TextStyle(fontSize: 20,color: Colors.grey),),
                  Spacer(),
                  Icon(Icons.remove_red_eye_outlined,color: Colors.grey)
                ],
              ),
            ),


            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Text("Repeat your password",style: TextStyle(fontSize: 20,color: Colors.grey),),
                  Spacer(),
                  Icon(Icons.remove_red_eye_outlined,color: Colors.grey)
                ],
              ),
            ),

            SizedBox(height: 5,),

            SizedBox(width: 350,
              child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color(0xff30E87A)),
                  onPressed: (){}, child: Text("Create account",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90,top: 5),
              child: Row(
                children: [
                  Text("Already have an account? ",style: TextStyle(color: Colors.grey),),
                  Text(" Log In",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)
                ],
              ),
            ),



        ]
            ),
      ),
    );
  }
}
