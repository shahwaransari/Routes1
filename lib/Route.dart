import 'package:flutter/material.dart';
import 'FormPage.dart';
import "Profile.dart";

class Routes{
  static const defaultRoute = "f";
  static const profile = "/movies";
  static const moviesdetail = "/secscreen";
static Route<dynamic>generateRoute(RouteSettings settings){
  switch(settings.name){
      case(defaultRoute):
     
      return MaterialPageRoute (builder: (_) => Login());
      case (profile):
      
      return MaterialPageRoute(builder: (_) => Profile());
      default:
      return MaterialPageRoute(builder: (_) => Scaffold(
        body: Center(
          child: Text("No Route Defines For ${settings.name}"),
        ),
      )
      
      );
  }
}
}
