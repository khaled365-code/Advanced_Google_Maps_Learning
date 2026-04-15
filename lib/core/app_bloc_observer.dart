



import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer';

class GoogleMapsAppBlocObserver extends BlocObserver
{
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
   super.onChange(bloc, change);
   log('Bloc : $bloc has been changed to $change');

  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    log('Bloc : $bloc has been closed');

  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    log('Bloc : $bloc has been created');
  }





}