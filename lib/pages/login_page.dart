import 'package:flutter/material.dart';
import 'package:gymie/pages/home_home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //appbar
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.abc,
            color: Colors.greenAccent,
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          'login',
          style: TextStyle(color: Colors.greenAccent),
        ),
      ),
      //body
      body: SafeArea(
        child: Column(
          children: [
            //email
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'email',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
                  ),
                ),
              ],
            ),
            //inputarea
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(width: 250, height: 90, child: TextField()),
                ),
              ],
            ),
            //password
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'password',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
                  ),
                ),
              ],
            ),
            //inputarea
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 250,
                      height: 90,
                      child: TextField(
                        obscureText: true,
                      )),
                ),
              ],
            ),
            //login button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //add an ontap function for container
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeHome()),
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
                ),
              ],
            ),

            //signup here
            //forgetpassword?
          ],
        ),
      ),
    );
  }
}
