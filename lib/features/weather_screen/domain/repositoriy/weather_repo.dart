import 'package:weather/features/weather_screen/domain/entities/weather_entitie.dart';

import '../../../../core/either/either.dart';
import '../../../../core/failure/failure.dart';

class WeatherRepository{
  Future<Either<Failure, WeatherEntity >> getInfo();

}