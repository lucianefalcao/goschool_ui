import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:ui/constants.dart';
import 'package:ui/models/alert.dart';

class RecentsAlerts extends StatefulWidget {
  @override
  _RecentsAlertsState createState() => _RecentsAlertsState();
}

class _RecentsAlertsState extends State<RecentsAlerts> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: recentAlerts.length,
      itemBuilder: (BuildContext context, int index) {
        Alert alert = recentAlerts[index];
        return Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 30.0),
              height: 130.0,
              width: 15.0,
              decoration: BoxDecoration(
                color: kAccentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30.0),
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
              height: 130.0,
              width: 316.0,
              decoration: BoxDecoration(
                color: kCardColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        alert.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
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
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.receipt,
                            color: kAccentColor,
                            size: 18.0,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            alert.subject,
                            style: TextStyle(
                              color: kTextColor,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 13.0),
                  Icon(
                    Icons.account_circle,
                    size: 100.0,
                    color: kAccentColor,
                  ), // TODO: Substite for the countdown
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
