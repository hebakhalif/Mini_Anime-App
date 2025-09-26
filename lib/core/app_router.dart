import 'package:anime_app/core/router.dart';
import 'package:anime_app/featuers/home/presenation/screens/details_screen.dart';
import 'package:anime_app/featuers/home/presenation/screens/home_screen.dart';
import 'package:anime_app/featuers/home/presenation/screens/upgrade_plan.dart';
import 'package:anime_app/featuers/home/presenation/widget/view_row.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
       case Routes.viewRow:
        return MaterialPageRoute(builder: (_) => ViewRow());
          case Routes.detailsScreen:
        return MaterialPageRoute(builder: (_) => DetailsScreen());
         case Routes.upgradePlun:
        return MaterialPageRoute(builder: (_) => UpgradePlan());

      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(body: Center(child: Text('Page not found!'))),
              
        );
    }
  }
}
