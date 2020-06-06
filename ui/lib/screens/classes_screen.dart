import 'package:flutter/material.dart';
import 'package:ui/constants.dart';
import 'package:ui/widgets/build_classes.dart';
import 'package:ui/widgets/header.dart';

class ClassesScreen extends StatefulWidget {
  @override
  _ClassesScreenState createState() => _ClassesScreenState();
}

class _ClassesScreenState extends State<ClassesScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Header(),
        Padding(
          padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Jun",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("01", style: kCalendarDay),
                  Text("02", style: kCalendarDay),
                  Text("03", style: kCalendarDay),
                  Text(
                    "04",
                    style: kCalendarDay.copyWith(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text("05", style: kCalendarDay),
                  Text("06", style: kCalendarDay),
                  Text("07", style: kCalendarDay),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 157.0, top: 3.0),
                child: Text(
                  "THU",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(40.0),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0),
              topRight: Radius.circular(50.0),
            ),
          ),
          child: Column(
            children: <Widget>[
              BuildClasses(),
            ],
          ),
        ),
      ],
    );
  }
}
