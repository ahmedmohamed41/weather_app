import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit/weather_state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/shared/weather_service.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitialState());

  static WeatherCubit get(context) => BlocProvider.of(context);

  WeatherModel? weatherModel;

  void getWeather({required String cityName}) {
    emit(WeatherLoadingState());
    HttpHelper().getCurrentWeather(cityName: cityName).then((value) {
      weatherModel = value;
      print(value.cityName);
      emit(WeatherSuccessState(weatherModel!));
    }).catchError((error) {
      print(error);
      emit(WeatherErrorState(error));
    });
  }

  // void getWeather({required String cityName}) async {
  //   try {
  //     WeatherModel weatherModel =
  //         await WeatherService(Dio()).getCurrentWeather(cityName: cityName);
  //     emit(WeatherSuccessState(weatherModel));
  //   } catch (e) {
  //     emit(WeatherErrorState());
  //   }
  // }
}
