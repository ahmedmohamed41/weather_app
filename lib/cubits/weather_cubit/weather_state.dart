import 'package:weather_app/models/weather_model.dart';

class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherStartinglState extends WeatherState {}

class WeatherLoadingState extends WeatherState {}

class WeatherSuccessState extends WeatherState {
  final WeatherModel weatherModel;
  WeatherSuccessState(this.weatherModel);
}

class WeatherErrorState extends WeatherState {
  final String error;

  WeatherErrorState(this.error);
}
