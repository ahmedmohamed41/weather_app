import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

class HttpHelper {
  final String baseURL = 'https://api.weatherapi.com/v1';

  final String apiKay = 'a1361d4bcb1c427097375154230612';

   Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    Uri url =
        Uri.parse('$baseURL/forecast.json?key=$apiKay&q=$cityName&days=1');
    http.Response response = await http.get(url);
    if (response.statusCode == 400) {
       
        
    }
    Map<String, dynamic> data = jsonDecode(response.body);
    WeatherModel weather = WeatherModel.fromJson(data);
    return weather;
    // try {
    //   Response response = await dio
    //       .get('$baseURL/forecast.json?key=$apiKay&q=$cityName&days=1');
    //   WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    //   return weatherModel;
    // } on DioException catch (e) {
    //   final String errorMessage = e.response?.data['error']['message'] ??
    //       'oops thre is error , try later';
    //   throw Exception(errorMessage);
    // } catch (e) {
    //   log(e.toString());
    //   throw Exception('oops thre is error , try later');
    // }
  }
}
