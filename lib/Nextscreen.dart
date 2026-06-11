import 'package:flutter/material.dart';
import 'package:trackyfy/login.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({super.key});

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  PageController _controller = PageController();
  int currentPage = 0;

  List<Color> bgColors = [
    Colors.white,
    Colors.amber,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 400),
        color: bgColors[currentPage],
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                children: [

                  buildPage(
                    image: "assets/images/margin.png",
                    title1: "Track your daily",
                    title2: "expenses",
                  ),

                  buildPage(
                    image: "assets/images/mony.png",
                    title1: "Track your daily",
                    title2: "expenses",
                  ),

                ],
              ),
            ),

            SizedBox(
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff30E87A),
                ),

                onPressed: () {
                  if (currentPage < bgColors.length - 1) {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  } else {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 1500),
                        pageBuilder: (context, animation, secondaryAnimation) => login(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {

                          var scaleAnimation = Tween(begin: 0.0, end: 1.0).animate(
                            CurvedAnimation(
                              parent: animation,
                              curve: Curves.elasticOut,
                            ),
                          );

                          return ScaleTransition(
                            scale: scaleAnimation,
                            child: child,
                          );
                        },
                      ),
                    );
                  }
                },

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Next",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)
                    ),
                    Icon(Icons.navigate_next, color: Colors.black),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget buildPage({
    required String image,
    required String title1,
    required String title2,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 150, right: 50, left: 50),
          child: Image.asset(image),
        ),
        Text("Track your daily",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
        Text("expenses",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
        SizedBox(height: 30),
        Text("Take control of your finances With",
            style: TextStyle(color: Color(0xff475569), fontSize: 20)),
        Text("Trackify's offline-first simplicity.",
            style: TextStyle(color: Color(0xff475569), fontSize: 20)),
      ],
    );
  }
}