import 'package:flutter/material.dart';
import 'package:gymie/pages/login_page.dart';
import 'package:gymie/pages/signup_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scafold properties
      backgroundColor: Colors.white,
      //appbar properties
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'welcome',
          style: TextStyle(color: Colors.greenAccent),
        ),
      ),
      //body
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SafeArea(
              child: Center(
            child: Column(
              children: [
                //column children
                //a large text
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'hello',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                // a slogan
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'lets hit the gym with passion',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w100),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 155,
                ),

                //a login button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //add an ontap function for container
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 155,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: (Colors.greenAccent)),
                        child: Text('login'),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                //a signin button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupPage()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 155,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: (Colors.greenAccent)),
                        child: Text('sign in'),
                      ),
                    )
                  ],
                ),
                //
              ],
            ),
          )),
        ],
      ),
    );
  }
}
