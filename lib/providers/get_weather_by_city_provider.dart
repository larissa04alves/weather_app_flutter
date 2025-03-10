import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_flutter/models/weather.dart';
import '/services/api_helper.dart';

final getWeatherByCityNameProvider = FutureProvider.autoDispose.family<Weather, String>((ref, String cityName) async {
return ApiHelper. getWeatherByCityName(cityName: cityName);
});