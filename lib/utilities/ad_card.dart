import 'package:flutter/material.dart';

class AdCard extends StatelessWidget {
  const AdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Column(children: [])
              //list view
              ),
        ),
      ],
    );
  }
}
