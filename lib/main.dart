import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc_observer.dart';
import 'package:weather_app/cubits/weather_cubit/weather_cubit.dart';

import 'package:weather_app/views/home_view.dart';

void main() {

  Bloc.observer = MyBlocObserver();
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(),
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.red),
        home: const HomeView(),
      ),
    );
  }

  // MaterialColor getThemeColor(String condition) {
  //   if (condition == 'sunny') {
  //     return Colors.amber;
  //   } else if (condition == 'Heavy snow') {
  //     return Colors.lightBlue;
  //   }
  // }
}
