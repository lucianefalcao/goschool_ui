import 'package:flutter/cupertino.dart';
import 'package:ui/constants.dart';

Color getColor(BuildContext context, double percent) {
  if (percent >= 0.4) 
    return kAccentColor;
  
  return kHourColor;
}