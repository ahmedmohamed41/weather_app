import 'package:weather_app/models/weather_model.dart';

class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLoadingState extends WeatherState {
  final WeatherModel weatherModel;
  WeatherLoadingState(this.weatherModel);
}

class WeatherFailureState extends WeatherState {}
