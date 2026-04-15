import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_google_maps/core/app_bloc_observer.dart';
import 'package:study_google_maps/core/routes/app_router.dart';
import 'package:study_google_maps/features/example/presenation/views/screens/first_screen.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const GoogleMapsApp());
  Bloc.observer = GoogleMapsAppBlocObserver();
}

class GoogleMapsApp extends StatelessWidget {
  const GoogleMapsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      onGenerateRoute: AppRouter.onGenerateRoutes,
    );
  }
}

