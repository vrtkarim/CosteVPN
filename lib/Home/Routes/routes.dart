import 'package:flutter/material.dart';
import 'package:kvpn/Home/Home.dart';

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      default:
        return error();
    }
  }

  Route error() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(
          child: Text('something went wrong'),
        ),
      );
    });
  }
}
