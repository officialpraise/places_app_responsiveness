import 'package:flutter/material.dart';
import 'package:places_responsive_app/ui/widget.dart';
import '../model/place.dart';
import '../model/util.dart';


class PlaceDetail extends StatefulWidget {
  PlaceDetailState createState() => PlaceDetailState();
}

class PlaceDetailState extends State<PlaceDetail> {
  List places=placesList;
  @override
  Widget build(BuildContext context) {
    Widget widget;
    switch (getScreenSize(MediaQuery.of(context).size.width)) {
      case ScreenSize.small:
        widget =SmallScreen(places,context);
        break;
      case ScreenSize.medium:
        widget = MediumScreen();
        break;
      case ScreenSize.large:
        widget = LargeScreen();
        break;
    }
    return widget;
  }
}






