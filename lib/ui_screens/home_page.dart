import 'package:flutter/material.dart';
import 'package:uidesigning/ui_screens/bottom_screens/home_screen.dart';
import 'package:uidesigning/ui_screens/bottom_screens/screen_account.dart';
import 'package:uidesigning/ui_screens/bottom_screens/screen_activities.dart';
import 'package:uidesigning/ui_screens/bottom_screens/screen_cart.dart';
import 'package:uidesigning/ui_screens/bottom_screens/screen_menu.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

int currentIndex = 0;
final List page = [
  ScreenFirst(),
  ScreenActivities(),
  // ScreenMenu(),
  ScreenCart(),
  ScreenAccount()
];

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .03),
        child: Container(
          padding: const EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width * .15,
          height: MediaQuery.of(context).size.height * 0.07,
          decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow(blurRadius: 2, color: Colors.white, spreadRadius: 3)
            // ],
            // for change the color go to colors.dart in Domain/Constants
            color: Colors.red,
            borderRadius: BorderRadius.circular(15),
          ),
          child: RawMaterialButton(
            // for change the color go to colors.dart in Domain/Constants
            // fillColor: Colors.red,
            shape: const CircleBorder(),
            elevation: 0.0,
            child: const Text(
              "Menu",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ),
      extendBodyBehindAppBar: false,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: "Activities",
              backgroundColor: Colors.blueAccent),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.menu),
          //     label: "Menu",
          //     backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "My Account",
              backgroundColor: Colors.blueAccent),
        ],
        onTap: (index) {
          //  pageController.animateToPage(index, duration: Duration(milliseconds: 5), curve: Curves.ease);
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: page[currentIndex],
    );
  }
}
