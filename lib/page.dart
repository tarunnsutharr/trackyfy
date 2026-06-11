import 'package:flutter/material.dart';
import 'package:trackyfy/add.dart';
import 'package:trackyfy/statick.dart';


class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {

  List<persionList> personData = [
    persionList(
      title: "Netflix",
      icon: Icons.video_collection,
      value: 20,
    ),
    persionList(
      title: "Starbucks",
      icon: Icons.fastfood,
      value: -20,
    ),
    persionList(
      title: "Sellery Deposit",
      icon: Icons.money,
      value: 20,
    ),
  ];

  List items=[
    {"icon": Icons.shopping_cart, "title": "Supermarket", "value": "-\$45.20",
      "iconColor":Colors.blue,
      "titleColor":Colors.black,
      "valueColor":Colors.red,
    },

    {"icon": Icons.video_collection, "title": "Netflix", "value": "-\$15.99",
    "iconColor":Colors.purple,
    "titleColor":Colors.black,
    "valueColor":Colors.red,
    },

    {"icon": Icons.restaurant, "title": "Starbucks", "value": "",
    "iconColor":Colors.lightGreenAccent,
    "titleColor":Colors.black,
    },

    {"icon": Icons.money, "title": "Sellery Deposit", "value": "\$2,500.00",
      "iconColor":Colors.green,
      "titleColor":Colors.black,
      "valueColor":Colors.green,
    },
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Row(
          children: [
            Icon(Icons.person_rounded,color: Colors.green,size: 39,),
            SizedBox(width: 10,),
            Text("Trackyfy",style: TextStyle(fontWeight: FontWeight.bold),),

            Spacer(),

            Icon(Icons.search,color: Colors.grey,),
            SizedBox(width: 10,),
            Icon(Icons.notifications_active,color: Colors.grey,)
            
          ],
        ),
      ),

      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 20),
            child: Text("Hello,Tarun",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Your finances are looking healthy today."),
          ),

          SizedBox(height: 20,),

          Stack(
            children:[
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  "assets/images/background.png",
                  fit: BoxFit.cover,
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 50,top: 20),
              child: Text("Total balance ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white70,fontSize: 18),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 50,top: 50),
              child: Text("\$12,450.00",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 50,top: 130),
              child: Text("ACCOUNT NUMBER",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 50,top: 150),
              child: Text("****  **** 4250",style: TextStyle(fontSize: 18,color: Colors.white70,fontWeight: FontWeight.bold),),
            ),

              Positioned(
                right: 20,
                top: 120,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {},
                  child: Text(
                    "View Details",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              )
        ],
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(width: MediaQuery.of(context).size.width * 0.43,
                    height: 160,
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 5,
                        offset: Offset(0,5),
                      ),
                    ],
                      border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(colors: [Color(0xffECFDF5),Color(0xffD1FAE5)
                        ],
                  ),
                ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(
                            children: [SizedBox(width: 10,),
                              Icon(Icons.arrow_circle_down_outlined,color: Colors.green,size: 35,),
                              SizedBox(width: 10,),
                              Text("INCOME")
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Text("\$5,000.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),
                        ),
                        Row(
                          children: [SizedBox(width: 20,),
                            Icon(Icons.show_chart,color: Colors.green,),
                            Text("+12.5%",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.green),)
                          ],
                        )
                      ],
                    ),
              )
                  ),
              ),

              SizedBox(width: 10,),

              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(width: MediaQuery.of(context).size.width * 0.43,
                  height: 160,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 5,
                            offset: Offset(0,5),
                          ),
                        ],
                        border: Border.all(color: Colors.grey,width: 1),
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(colors: [Color(0xffFEF2F2),Color(0xffFEE2E2)
                        ],
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Row(
                              children: [SizedBox(width: 10,),
                                Icon(Icons.arrow_circle_up_outlined,color: Colors.redAccent,size: 35,),
                                SizedBox(width: 10,),
                                Text("EXPENSE")
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Text("\$750.00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),
                          ),
                          Row(
                            children: [SizedBox(width: 20,),
                              Icon(Icons.show_chart,color: Colors.green,),
                              Text("+12.5%",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.green),)
                            ],
                          )
                        ],
                      ),
                        ),
                      ),
                    ),
            ],
          ),

          SizedBox(height: 20,),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Recente Transaction",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text("see All",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),),
              )
            ],
          ),


          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: personData.length,
              itemBuilder: (context, index) {

                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8), // spacing
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                child:  ListTile(
                  leading: Icon(personData[index].icon,),
                  title: Text(personData[index].title),
                  trailing: Text(personData[index].value.toString(),style: TextStyle(fontSize: 20,color: personData[index].value >0?Colors.green:Colors.red),),
                )
                );
              },
            ),
          ),

          ]
      ),
    );
  }
}
