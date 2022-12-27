import 'package:simple_weather/data/remote_data_sources/weather_remote_data_source.dart';
import 'package:simple_weather/domain/models/weather_model.dart';

class WeatherRepository {
final WeatherRemoteDataSource _weatherRemoteDataSource;

  WeatherRepository(this._weatherRemoteDataSource);

  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async { 
      final responseData = await _weatherRemoteDataSource.getWeatherData(
        city: city,
      );
  
if (responseData == null) {
  return null;
}

final name = responseData ['location']['name'] as String;
final temperature = (responseData['current']['temp_c'] + 0.0) as double;
    
    http://api.weatherapi.com/v1/current.json?key=080327b0eab945559a1220655221912&q=Lublin&aqi=no
    return  WeatherModel(city: name, temperature: temperature);
  }
}
