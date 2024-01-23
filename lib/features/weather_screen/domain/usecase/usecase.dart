import 'package:weather/core/either/either.dart';

import 'package:weather/core/failure/failure.dart';
import 'package:weather/features/weather_screen/domain/entities/weather_entitie.dart';

import '../../../../core/usecase/usecase.dart';
import '../repositoriy/weather_repo.dart';

class WeatherUseCase implements UseCase<WeatherEntity,Params> {
  final WeatherRepository _repository;

  WeatherUseCase(WeatherRepository repository) : _repository = repository;

  @override
  Future<Future<Either<Failure, WeatherEntity>>> call(Params params) async {
    if(params is Params){
      return _repository.getInfo();
    }else if(params is Params){
      return _repository.getInfo();
    }else{
      throw UnimplementedError();
    }
  }
}

class WeatherUsecaseResponse {}

abstract class Params{}


// class AuthenticateUseCaseResponse {}
//
// abstract class Params {}
//
// class GetStatusParams extends Params {}
//
// class LoginParams extends Params {
//   final String email;
//   final String password;
//
//   LoginParams({required this.email, required this.password});
// }




//
// @override
// Future<Either<Failure, AuthenticatedUserEntity>> call(Params params) async {
//   if (params is GetStatusParams) {
//     return _repository.getUser();
//   } else if (params is LoginParams) {
//     return _repository.login(params.email, params.password);
//   } else {
//     throw UnimplementedError();
//   }
// }
// }




// class AuthenticateUseCase
//     implements UseCase<AuthenticatedUserEntity, Params> {
//
//   final AuthenticationRepository _repository;
//
//   AuthenticateUseCase(AuthenticationRepository repository) : _repository = repository;
