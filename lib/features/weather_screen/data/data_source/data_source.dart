import 'package:dio/dio.dart';
import 'package:weather/features/weather_screen/data/model/models.dart';

abstract class WeatherRemoteDataSource{
  Future<List<Temperatures>> getInfo();

  factory WeatherRemoteDataSource() => _WeatherRemoteDataSourceImpl();
}


class _WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource{
  final dio = Dio(BaseOptions(baseUrl:'http://api.weatherapi.com' ),);




  @override
  Future<List<Temperatures>> getInfo() async {
    try{
      final response = await dio.get('/v1/current.json?key=e76d154ceb2a4e05a2c62513241901&q=Tashkent&aqi=no');

      if (response.statusCode! >= 200 && response.statusCode! < 300){
        return(response.data as List)
            .map((e) => Temperatures.fromJson(e))
            .toList();
      } else {
        throw 'Response failed!';
      }
    } catch (error) {
      throw 'Something went wrong!';
    }
  }
}
