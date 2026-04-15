



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_google_maps/core/routes/routes.dart';
import 'package:study_google_maps/features/example/presenation/views/screens/first_screen.dart';

abstract class AppRouter
{


  static Route? onGenerateRoutes(RouteSettings settings)
  {

    switch(settings.name)
    {
      case Routes.firstScreen:
        return _buildScreen(widget: FirstScreen());


      default:
        return _buildDefaultScreen();


    }



  }


  static Route _buildScreen({required Widget widget,RouteSettings? settings})
  {
    return MaterialPageRoute(builder: (_)=>widget , settings: settings);
  }

  static Route _buildDefaultScreen()
  {
    return MaterialPageRoute(builder: (_)=>Scaffold(
      body: SafeArea(child: Center(child: Text('No Route Found'),)),
    ));
  }


}