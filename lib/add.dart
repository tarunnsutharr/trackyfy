import 'package:flutter/material.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {

  DateTime? selectedDate;

  String getMonthName(int month) {
    List<String> months = [
      "Jan", "Feb", "Mar", "Apr", "May", "Jun",
      "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
    ];
    return months[month - 1];
  }

  List<String> items = ["Java", "Flutter", "Python"];

  String? selectedItem;

  bool isIncome = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffF6F8F7),
      appBar: AppBar(
        title: Row(
          children: [
            ElevatedButton(onPressed: (){},
                child:Icon(Icons.arrow_back_ios_new,) ),
            SizedBox(width: 30,),
            Text("Add New Transaction",style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(children: [

          SizedBox(
            width: 330,
            height: 80,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffE2E8F0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      // Income
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isIncome = true;
                          });
                        },
                        child: Container(
                          width: 140,
                          height: 50,
                          decoration: BoxDecoration(
                            color: isIncome ? Colors.white : Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Income",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: isIncome ? Colors.green : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Expense
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isIncome = false;
                          });
                        },
                        child: Container(
                          width: 140,
                          height: 50,
                          decoration: BoxDecoration(
                            color: !isIncome ? Colors.white : Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Expense",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: !isIncome ? Colors.red : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 20,),

          Text("AMOUNT",style: TextStyle(fontSize: 20,color: Colors.grey),),

          SizedBox(height: 10),

          Row(
            children: [SizedBox(width: 25,),
              Text("\$",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.grey),),

              SizedBox(width: 90,),

              Text("0.00",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.black87),)
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(right: 250,top: 10),
            child: Text("Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),

          SizedBox(width: 350,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10),
                    color: Color(0xdbffffff)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,top: 5),
                  child: Row(
                    children: [
                      DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                      hint: Text("Select Category"),
                  value: selectedItem,style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),


                  icon: Padding(
                    padding: const EdgeInsets.only(left: 110),
                    child: Icon(Icons.keyboard_arrow_down, size: 28),
                  ),

                  items: items.map((item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),

                  onChanged: (value) {
                    setState(() {
                      selectedItem = value;
                    });
                  },
                ),
              ),
              ]
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 5,),

          Padding(
            padding: const EdgeInsets.only(right: 300,top: 10),
            child: Text("Date",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),

          SizedBox(width: 350,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10),
                    color: Color(0xdbffffff)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,top: 5),
                  child: Row(
                    children: [
                      Text(selectedDate == null
                          ? "Select Date"
                          : "${selectedDate!.day} ${getMonthName(selectedDate!.month)} ${selectedDate!.year}",
                        style: TextStyle(fontSize: 20, color: Colors.black),),

                      SizedBox(width: 135,),

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
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 5,),

          Padding(
            padding: const EdgeInsets.only(right: 300,top: 10),
            child: Text("Notes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),

          SizedBox(
            width: 350,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(top: 2),
              child: TextField(
                maxLines: null,
                expands: true,
                decoration: InputDecoration(
                  hintText: "What was this for?",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Color(0xdbffffff),
                  contentPadding: EdgeInsets.only(left: 30, bottom: 20),
                ),
              ),
            ),
          ),

          Row(
            children: [SizedBox(width: 20,height: 50,),
              Icon(Icons.add_a_photo_outlined,color: Colors.green,size: 25),
              SizedBox(width: 10,),
              Text("Add Receipt",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),)
            ],
          ),

          SizedBox(height: 20,),


          SizedBox(width: 310,
            height: 50,
            child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              child:
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Icon(Icons.check_circle_outline,color: Colors.black,size: 25,),
                    SizedBox(width: 10,),
                    Text("Save Transaction",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),


            ),
          ),
        ],
        ),
      ),
    );
  }
}
