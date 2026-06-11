import 'package:flutter/material.dart';

class body extends StatefulWidget {
  const body({super.key});

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {

  DateTime? selectedDate;

  String getMonthName(int month) {
    List<String> months = [
      "Jan", "Feb", "Mar", "Apr", "May", "Jun",
      "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
    ];
    return months[month - 1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F8F7),
      appBar: AppBar(
        title: Text("Financial Insights"),

        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {},
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
              );

              if (pickedDate != null) {
                setState(() {
                  selectedDate = pickedDate;
                });
              }
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 420,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 20,right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffE2E8F0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
        
                        Text(
                          "Weekly",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
        
                        InkWell(
                          onTap: () {
                            print("Button Clicked");
                          },
                          child: Container(
                            height: 39,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text("Monthly",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                            ),
                          ),
                        ),
        
                        Text(
                          "Yearly",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
        
                      ],
                    ),
                  ),
                ),
              ),
            ),
        
            SizedBox(height: 30,),
            
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: SizedBox(width: 365,
                    height: 380,
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xffFFFFFF),borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15,top: 20),
                                child: Text("Total spending",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                              ),
                              SizedBox(width: 150,),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Icon(Icons.show_chart,color: Colors.red,size: 30,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text("12%",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
                              ),
                            ],
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.only(right: 200),
                            child: Text("\$3,240.50",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Image.asset("assets/images/Border.png",width: 350,height: 150,),
                          ),
                          SizedBox(height: 20,),
                          
                          Row(
                            children: [SizedBox(width: 10,),
                              Icon(Icons.stop_rounded,color: Color(0xff30E87A),size: 30,),
                              Text("Housing",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                              SizedBox(width: 50,),
                              Text("45%",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                              SizedBox(width: 10,),
                              Icon(Icons.stop_rounded,color: Colors.green,),
                              Text("Food",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                              SizedBox(width: 50,),
                              Text("28%",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                              
                            ],
                          ),
        
                          Row(
                            children: [SizedBox(width: 10,),
                              Icon(Icons.stop_rounded,color: Color(0xffA7F3D0),size: 30,),
                              Text("Travel",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                              SizedBox(width: 65,),
                              Text("15%",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                              SizedBox(width: 10,),
                              Icon(Icons.stop_rounded,color: Colors.grey,),
                              Text("Other",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                              SizedBox(width: 45,),
                              Text("12%",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
        
                            ],
                          )
                        ],
                      ),
                      ),
                      ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home_work, color: Colors.grey),
                Text("Home")
              ],
            ),

            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.insert_chart, color: Colors.grey),
                Text("Insights")
              ],
            ),

            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.account_balance_wallet, color: Colors.grey),
                Text("Budget")
              ],
            ),

            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.person_rounded, color: Colors.grey),
                Text("Profile")
              ],
            ),
          ],
        ),
      ),

    );

  }
}
