import 'package:dio/dio.dart';


class WeatherRemoteDataSource {
  
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
   
    final response = await Dio().get<Map<String,dynamic>>(
      'http://api.weatherapi.com/v1/current.json?key=080327b0eab945559a1220655221912&q=$city&aqi=no');
     
      return  response.data;

  }
}
