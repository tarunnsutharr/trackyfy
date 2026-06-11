import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  int selectedIndex = 0;

  List<Map<String, dynamic>> personData = [
    {"title": "Netflix", "icon": Icons.video_collection, "value": -200},
    {"title": "Starbucks", "icon": Icons.fastfood, "value": -150},
    {"title": "Salary", "icon": Icons.attach_money, "value": 5000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "Transactions",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Icon(Icons.add_circle_outline, color: Colors.green, size: 28),
          ],
        ),
      ),

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SizedBox(
                height: 55,
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search grocery, rent, coffee",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),

            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  buildChip("Food", 0),
                  buildChip("Category", 1),
                  buildChip("Shopping", 2),
                  buildChip("Other", 4),
                ],
              ),
            ),

            SizedBox(height: 10),

            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 15),
                children: [
                  ...personData.map((item) => buildListItem(item)).toList(),


                  SizedBox(height: 10),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "YESTERDAY",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),

                  SizedBox(height: 10),

                  ...personData.map((item) => buildListItem(item)).toList(),

                ],
              ),
            ),


            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.home_work, size: 28, color: Colors.grey),
                    Icon(Icons.calendar_month, size: 28, color: Colors.grey),
                    Icon(Icons.more, size: 28, color: Colors.grey),
                    Icon(Icons.settings, size: 28, color: Colors.grey),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget buildChip(String text, int index) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: ChoiceChip(
        label: Text(
          text,
          style: TextStyle(
            color: selectedIndex == index ? Colors.white : Colors.grey,
          ),
        ),
        selected: selectedIndex == index,
        selectedColor: Colors.green,
        backgroundColor: Colors.white,
        showCheckmark: false,
        padding: EdgeInsets.symmetric(horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onSelected: (value) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }

  Widget buildListItem(Map<String, dynamic> item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),

      child: Slidable(
        key: ValueKey(item["title"]),

        endActionPane: ActionPane(
          motion: ScrollMotion(),
          extentRatio: 0.20,

          children: [
            Container(
              margin: EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.white),
              ),
            ),
          ],
        ),

        child: Container(
          margin: EdgeInsets.only(bottom: 12),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
            color: Colors.white,
          ),
          child: ListTile(
            leading: Icon(item["icon"]),
            title: Text(item["title"]),
            trailing: Text(
              item["value"].toString(),
              style: TextStyle(
                fontSize: 18,
                color: item["value"] > 0
                    ? Colors.green
                    : Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
