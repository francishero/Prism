import 'package:Prism/routing_constants.dart';
import 'package:Prism/ui/pages/searchScreen.dart';
import 'package:Prism/ui/pages/splashScreen.dart';
import 'package:Prism/ui/pages/undefinedScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashRoute:
      return CupertinoPageRoute(builder: (context) => SplashWidget());
    case SearchRoute:
      return CupertinoPageRoute(builder: (context) => SearchScreen());
    default:
      return CupertinoPageRoute(
        builder: (context) => UndefinedScreen(
          name: settings.name,
        ),
      );
  }
}
