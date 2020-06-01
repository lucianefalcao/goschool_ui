import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:ui/constants.dart';
import 'package:ui/models/homework.dart';

class RecentHomeworks extends StatefulWidget {
  @override
  _RecentHomeworksState createState() => _RecentHomeworksState();
}

class _RecentHomeworksState extends State<RecentHomeworks> {

  bool _isDone = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: recentHomeworks.length,
      itemBuilder: (BuildContext context, int index) {
        Homework homework = recentHomeworks[index];
        return Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 30.0),
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 10.0),
              height: 100.0,
              width: 330.0,
              decoration: BoxDecoration(
                color: kCardColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        homework.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        children: <Widget>[
                          Icon(
                            AntDesign.clockcircle,
                            color: kAccentColor,
                            size: 18.0,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            "Today, 12:30 PM", // FIXME: Display day and time
                            style: TextStyle(
                              color: kTextColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  _todoButton(homework),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  _todoButton(Homework homework) {
    return RaisedButton(
      onPressed: () {
        setState(() {
          homework.isDone = !homework.isDone;
        });
      },
      shape: CircleBorder(
        side: BorderSide(color: kAccentColor),
      ),
      color: homework.isDone ? kAccentColor : Colors.transparent,
      child: homework.isDone ? Icon(Icons.check, color: Colors.white) : null,
    );
  }
}
