import 'package:flutter/material.dart';
import 'package:trackyfy/page.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final String testEmail = "admin@gmail.com";
  final String testPassword = "123456";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        automaticallyImplyLeading: false,
        title: Center(child: Text("Trackyfy",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
      ),

      body: Form(key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [SizedBox(height: 50,),
              Center(child: Image.asset("assets/images/Overlay.png",width: 100,height: 70,)),
          
              SizedBox(height: 20,),
          
              Text("Welcome Back",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          
              Text("Log in to manage your expenses effortlessly",style: TextStyle(fontSize: 18,color: Colors.grey),),
          
              SizedBox(height: 30,),
          
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(alignment: Alignment.centerLeft,
                    child: Text("Email",style: TextStyle(fontSize: 20),)),
              ),
          
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0,1)
                    )
                  ]
                ),
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your email',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }else if (!value.contains("@")) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  }
                ),
              ),
          
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Password",style: TextStyle(fontSize: 20),),
                  ),
          
                  Spacer(),
          
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text("Forget password?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green,),
                  )
                  )
                ],
              ),
          
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 1)
                      )
                    ]
                ),
          
                child: TextFormField(
                  controller: passwordController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your password',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }else if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    }
                ),
              ),
          
              SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {

                        String email = emailController.text.trim();
                        String password = passwordController.text.trim();

                        if (email == testEmail &&
                            password == testPassword) {

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Login Success ✅"),
                            ),
                          );

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => page(),
                            ),
                          );

                        } else {

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Invalid Email or Password ❌"),
                            ),
                          );

                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
          
              SizedBox(height: 50,),
          
              Text("-------    OR Continue With   --------",style: TextStyle(fontSize: 20,color: Colors.grey)),
          
              SizedBox(height: 10,),
          
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/google.png",
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Google",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )
              ),
          
              SizedBox(height: 10,),

              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
