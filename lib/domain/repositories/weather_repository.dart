import 'package:simple_weather/data/remote_data_sources/weather_remote_data_source.dart';
import 'package:simple_weather/domain/models/weather_model.dart';

class WeatherRepository {
final WeatherRemoteDataSource _weatherRemoteDataSource;

  WeatherRepository(this._weatherRemoteDataSource);

  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async { 
      final json = await _weatherRemoteDataSource.getWeatherData(
        city: city,
      );
  
if (json == null) {
  return null;
}
return WeatherModel.fromJson(json);
  }
}
