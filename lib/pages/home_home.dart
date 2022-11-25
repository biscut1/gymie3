import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:gymie/app_bar_pages/notifications_page.dart';
import 'package:gymie/gnavpages/gnav_home.dart';
import 'package:gymie/gnavpages/gnav_fit.dart';
import 'package:gymie/gnavpages/gnav_shop.dart';
import 'package:gymie/gnavpages/gnav_wallet.dart';
import 'package:gymie/pages/login_page.dart';
import 'package:gymie/pages/signup_page.dart';

class HomeHome extends StatefulWidget {
  const HomeHome({Key? key}) : super(key: key);

  @override
  _HomeHomeState createState() => _HomeHomeState();
}

class _HomeHomeState extends State<HomeHome> {
  //this is the selected index of the bottom navigation bar

  int _gnavselectedindex = 0;
  //function starts here
  void _gbottomnavbar(int index) {
    setState(() {
      _gnavselectedindex = index;
    });
  }

//function ends here
  final List<Widget> _gnavpages = [
    GnavHome(),
    GnavWallet(),
    GnavFit(),
    GnavShop(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //appbar
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationsPage(),
                  ),
                );
              },
              child: Icon(Icons.notifications_active_outlined),
            ),
          )
        ],
        elevation: 0,
        leading: GestureDetector(
          child: Icon(
            Icons.menu_outlined,
            color: Colors.greenAccent,
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          'lets lift',
          style: TextStyle(
            color: Colors.redAccent,
          ),
        ),
      ),
      //body
      //we edit the body so that it matches the selected index
      body: _gnavpages[_gnavselectedindex],
      //

      //bottom navigation bar
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GNav(
          //this will be the selected index specified at the top
          selectedIndex: _gnavselectedindex,
          gap: 3,
          color: Colors.white,
          activeColor: Colors.redAccent,
          onTabChange: _gbottomnavbar,

          //backgroundColor: Colors.red,
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'home',
            ),
            GButton(
              icon: Icons.wallet_outlined,
              text: 'my credits',
            ),
            GButton(
              icon: Icons.fitness_center_outlined,
              text: 'fit',
            ),
            GButton(
              icon: Icons.shopping_cart_outlined,
              text: 'shop',
            ),
          ],
        ),
      ),
    );
  }
}
