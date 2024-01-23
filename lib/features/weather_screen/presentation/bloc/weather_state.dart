part of 'weather_bloc.dart';

class WeatherState extends Equatable {
  final WeatherEntity temperatures;



  const WeatherState({
    required this.temperatures,
  });

  WeatherState copyWith({
    WeatherEntity? temperatures,

  }) {
    return WeatherState(
      temperatures: temperatures ?? this.temperatures,
    );
  }



  @override
  List<Object?> get props => [temperatures];
}

enum WeatherStatus {
  unknown,
  loading,
  success,
  failure,
}





