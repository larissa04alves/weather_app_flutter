import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_flutter/services/api_helper.dart';

final currentWeatherPRovider = FutureProvider.autoDispose((ref){
  return ApiHelper.getCurrentWeather();
});
