import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //appbar
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('special notifcations '),
      ),
      //body
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              children: [
                //a note
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'special notifcations  for you ',
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      //
                    ],
                  ),
                ),

                //a discounts
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.red,
                    height: 250,
                    width: 300,
                    child: Column(
                      children: [
                        Row(
                          children: [],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'a text',
                        style: TextStyle(
                          color: Colors.amberAccent,
                        ),
                      )
                    ],
                  ),
                ),
                //giftcards and awardes
                //newly added gyms and trainers
                //celebration and wishes
              ],
            ),
          ),
        ],
      ),
    );
  }
}
