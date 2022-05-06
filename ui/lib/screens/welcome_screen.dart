import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/constants.dart';
import 'package:ui/widgets/bottom_navigation.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height - 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
              ),
            ),
            Positioned(
              top: 200.0,
              left: 100.0,
              right: 100.0,
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    child: SvgPicture.asset(
                      "assets/icons/grad_cap.png",
                      height: 180.0,
                      width: 180.0,
                    ),
                  ),
                  Text(
                    "GoSchool",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 170.0,
              left: 50.0,
              right: 50.0,
              child: Column(
                children: <Widget>[
                  Text(
                    "Welcome",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 29.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    "Check your assignments, and exams dates in no time on the go!",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height - 130,
              left: 100.0,
              right: 100.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => BottomNavigation()),
                  );
                },
                child: Container(
                  width: 150.0,
                  height: 55.0,
                  padding: EdgeInsets.only(left: 40.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "GET STARTED",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 28.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
