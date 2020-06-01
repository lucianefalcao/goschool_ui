import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/constants.dart';
import 'package:ui/screens/classes_screen.dart';
import 'package:ui/screens/home_screen.dart';
import 'package:ui/widgets/recents_alert.dart';
import 'package:ui/widgets/recents_homework.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedTab = 0;
  Widget _currentPage;
  List<Widget> _pages;
  HomeScreen _homeScreen;
  ClassesScreen _classesScreen;

  @override
  void initState() {
    super.initState();
    _homeScreen = HomeScreen();
    _classesScreen = ClassesScreen();
    _pages = [_homeScreen, _classesScreen];
    _currentPage = _homeScreen;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: <Widget>[
          _currentPage,
          _bn(),
        ],
      ),
    );
  }

  _updateTabSelection(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  _bn() {
    return Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: kBackgroundColor,
          currentIndex: _selectedTab,
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
              _currentPage = _pages[index];
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/house.svg",
                width: 35.0,
                color: _selectedTab == 0 ? kAccentColor : kTextColor,
              ),
              title: SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/read_book2.svg",
                width: 35.0,
                color: _selectedTab == 1 ? kAccentColor : kTextColor,
              ),
              title: SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/homework.svg",
                width: 35.0,
                color: _selectedTab == 2 ? kAccentColor : kTextColor,
              ),
              title: SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/comment.svg",
                width: 35.0,
                color: _selectedTab == 3 ? kAccentColor : kTextColor,
              ),
              title: SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
