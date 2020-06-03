import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:intl/intl.dart';
import 'package:ui/constants.dart';
import 'package:ui/helper/color_helper.dart';
import 'package:ui/models/alert.dart';
import 'package:ui/widgets/radial_painter.dart';

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
        int hoursLeft = alert.time.difference(DateTime.now()).inHours;
        hoursLeft = hoursLeft < 0 ? -hoursLeft : hoursLeft;
        double percent = hoursLeft / 48;
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
              width: 326.0,
              decoration: BoxDecoration(
                color: kCardColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                ),
              ),
              child: Stack(
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
                            size: 17.0,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            "${DateTime.now().weekday == alert.time.weekday ? "Today" : DateFormat.EEEE().format(alert.time)}, ${DateFormat.jm().format(alert.time)}",
                            style: TextStyle(
                              color: kTextColor,
                              fontSize: 15.0,
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
                            size: 17.0,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            alert.subject,
                            style: TextStyle(
                              color: kTextColor,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // SizedBox(width: 30.0),
                  Positioned(
                    right: 0.0,
                    child: CustomPaint(
                      foregroundPainter: RadialPainter(
                        bgColor: kBGColor,
                        lineColor: getColor(context, percent),
                        percent: percent,
                        width: 4.0,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "$hoursLeft",
                              style: TextStyle(
                                color: getColor(context, percent),
                                fontSize: 26.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "hours left",
                              style: TextStyle(
                                color: getColor(context, percent),
                                fontSize: 13.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
