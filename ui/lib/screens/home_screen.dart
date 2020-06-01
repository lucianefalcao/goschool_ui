import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              SvgPicture.asset(
                "assets/icons/grad_cap.png",
                height: 70.0,
              ),
              Text(
                "My School",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage("assets/images/44.jpg"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
