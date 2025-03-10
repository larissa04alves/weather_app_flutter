import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_flutter/services/api_helper.dart';

final hourlyWeather = FutureProvider.autoDispose((ref) async{
  return ApiHelper.getHourlyForecast();
});