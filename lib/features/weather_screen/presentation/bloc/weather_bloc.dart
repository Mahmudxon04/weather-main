import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:weather/features/weather_screen/domain/entities/weather_entitie.dart';

import '../../data/model/models.dart';

part 'weather_event.dart';

part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc()
      : super(
          WeatherState(
            temperatures: WeatherStatus.unknown,
          ),
        ) {
    on<WeatherEvent>((event, emit) {});
  }
}
