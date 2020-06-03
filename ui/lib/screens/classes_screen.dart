import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/constants.dart';
import 'package:ui/widgets/build_classes.dart';

class ClassesScreen extends StatefulWidget {
  @override
  _ClassesScreenState createState() => _ClassesScreenState();
}

class _ClassesScreenState extends State<ClassesScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                radius: 25.0,
                backgroundImage: AssetImage("assets/images/44.jpg"),
              ),
            ],
          ),
        ),
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
                  Text(
                    "01",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    "02",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    "03",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    "04",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "05",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    "06",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    "07",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 158.0, top: 3.0),
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
            color: kPrimaryColor,
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
