import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/services/api_helper.dart';

final weeklyForecastProvider = FutureProvider.autoDispose((ref) async {
return ApiHelper.getWeeklyForecast();
});