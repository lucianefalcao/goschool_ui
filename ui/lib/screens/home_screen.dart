import 'package:flutter/material.dart';
import 'package:ui/constants.dart';
import 'package:ui/widgets/header.dart';
import 'package:ui/widgets/recents_alerts.dart';
import 'package:ui/widgets/recents_homeworks.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Header(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: TextField(
            style: TextStyle(color: kTextColor),
            cursorColor: kTextColor,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(8.0),
              border: InputBorder.none,
              fillColor: Theme.of(context).primaryColor,
              filled: true,
              hintText: "Search",
              hintStyle: TextStyle(color: kTextColor),
              prefixIcon: Icon(Icons.search, color: kTextColor, size: 26.0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
        ),
        SizedBox(height: 30.0),
        Container(
          padding: EdgeInsets.all(35.0),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0),
              topRight: Radius.circular(50.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Recent Alerts",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              RecentsAlerts(),
              Center(
                child: Text(
                  "View all",
                  style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 15.0),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                "Recent Homework",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              RecentHomeworks(),
              Center(
                child: Text(
                  "View all",
                  style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 15.0),
                ),
              ),
              SizedBox(height: 30.0),
            ],
          ),
        ),
      ],
    );
  }
}
