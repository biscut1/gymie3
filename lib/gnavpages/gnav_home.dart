import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gymie/utilities/ad_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GnavHome extends StatefulWidget {
  const GnavHome({Key? key}) : super(key: key);

  @override
  _GnavHomeState createState() => _GnavHomeState();
}

class _GnavHomeState extends State<GnavHome> {
  //smooth controller
  final _smoothcontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(children: [
        SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                // the cards
                Container(
                  height: 300,
                  color: Colors.black12,
                  child: ListView(
                    controller: _smoothcontroller,
                    scrollDirection: Axis.horizontal,
                    children: [
                      //17:20 for mitch koko obect oriented programming
                      AdCard(),
                      AdCard(),
                      AdCard(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                //smoth page indicator
                SmoothPageIndicator(
                  effect: ExpandingDotsEffect(activeDotColor: Colors.redAccent),
                  controller: _smoothcontroller,
                  count: 3,
                ),
                SizedBox(
                  height: 25,
                ),
/////////////////////////////////////////////////                ///////////////////////////////////////////////////////////////
                //subscriptions and membership
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Icon(
                                Icons.wallet_membership_outlined,
                                size: 50,
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'subscription and membership',
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),

                // personal training and diet plan
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Icon(
                                Icons.local_fire_department_outlined,
                                size: 50,
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'personal training and diet plan',
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),

                //special offers
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Icon(
                                Icons.star_border_outlined,
                                size: 50,
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'special offers',
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
