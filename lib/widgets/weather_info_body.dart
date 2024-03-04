import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                weatherModel.cityName,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'updated at ${weatherModel.data.hour}:${weatherModel.data.minute}',
                style: const TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Expanded(child: Image.network("https:${weatherModel.image}")),
                  Expanded(
                    child: Center(
                      child: Text(
                        '${weatherModel.temp}',
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Maxtemp:${weatherModel.maxTemp.round()}',
                          style: const TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Mintemp:${weatherModel.minTemp.round()}',
                          style: const TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                weatherModel.weatherCondition,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
