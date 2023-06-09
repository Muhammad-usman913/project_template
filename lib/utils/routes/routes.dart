

import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:mvvm/view/home_screen.dart';
import 'package:mvvm/view/login_screen.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    print('control comes here');
    switch(settings.name){
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) => HomeScreen());

      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context) => LoginScreen());

      default:
        return MaterialPageRoute(builder: (BuildContext contex){
         return Scaffold(
           body: Center(
             child: Text('No route define'),
           ),

          );
        });
    }
  }
}