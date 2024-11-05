import 'package:flutter/material.dart';
import 'package:route_version/Page1.dart';
import 'package:route_version/Page2.dart';

class RoutePage extends ChangeNotifier {
  Route createRouteToPage2() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = const Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;
        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Route createRouteToPage3() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Page3(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = const Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;
        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}


