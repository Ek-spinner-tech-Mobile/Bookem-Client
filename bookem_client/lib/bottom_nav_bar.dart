import 'package:bookem_client/pages/fragments/appointment.dart';
import 'package:bookem_client/pages/fragments/experts.dart';
import 'package:bookem_client/pages/fragments/profile.dart';

import 'extentions.dart';
import 'package:flutter/material.dart';

class BasicBottomNavBar extends StatefulWidget {
  const BasicBottomNavBar({Key? key}) : super(key: key);

  @override
  _BasicBottomNavBarState createState() => _BasicBottomNavBarState();
}

class _BasicBottomNavBarState extends State<BasicBottomNavBar> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Text(""),
    Experts(),
   MyAppointmentList(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: const Color(0xFFBBBBBB),
        selectedItemColor: const Color(0xFF169BB9),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/images/home.png',
                height: 25,
                width: 25,
                color: const Color(0xFF169BB9),
              ),
              icon:
                  Image.asset('assets/images/home.png', height: 25, width: 25 , color: const Color(0xFFBBBBBB),),
              label: "Home"),
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/images/group.png',
                height: 25,
                width: 25,
                color: const Color(0xFF169BB9),
              ),
              icon:
              Image.asset('assets/images/group.png', height: 25, width: 25 , color: const Color(0xFFBBBBBB),),
              label: "Experts"),
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/images/calender.png',
                height: 25,
                width: 25,
                color: const Color(0xFF169BB9),
              ),
              icon:
              Image.asset('assets/images/calender.png', height: 25, width: 25 , color: const Color(0xFFBBBBBB),),
              label: "Appointments"),
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/images/proflie.png',
                height: 25,
                width: 25,
                color: const Color(0xFF169BB9),
              ),
              icon:
              Image.asset('assets/images/proflie.png', height: 25, width: 25 , color: const Color(0xFFBBBBBB),),
              label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
