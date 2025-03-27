import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_flutter/models/weather.dart';
import 'package:weather_app_flutter/providers/current_weather_provider.dart';
import 'package:weather_app_flutter/views/gradient_container.dart';

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final WeatherData = ref.watch(currentWeatherPRovider);
    return WeatherData.when(
      data: (weather) {
        return GradientContainer(children: []);
      },
      error: (error, stackTrace) {
        return Center(child: Text(error.toString()));
      },
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
