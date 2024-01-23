import '../../../../core/either/either.dart';
import '../../../../core/exception/exception.dart';
import '../../../../core/failure/failure.dart';
import '../../domain/repositoriy/weather_repo.dart';
import '../data_source/data_source.dart';
import '../model/models.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDataSource _dataSource;


   WeatherRepositoryImpl(
      {required WeatherRemoteDataSource dataSource})
   : _dataSource = dataSource;


  @override
  Future<Either<Failure, List<Temperatures>>> getInfo() async {
    try {
      final response = await _dataSource.getInfo();
      return Right(response);
    } on ServerException catch (error) {
      return Left(ServerFailure(message: error.message, code: error.code));
    }
  }
}

















