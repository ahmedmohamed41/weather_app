import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
 
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red
        ),
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
