import '../../data/model/models.dart';

class WeatherEntity {
  final String temperatures;

  const WeatherEntity({
    required this.temperatures,
  });

  @override
  bool operator == (Object other) {
    if (identical(this, other)) return true;

    return other is WeatherEntity &&
        other.temperatures == temperatures;
  }

  @override
  int get hashCode => super.hashCode;

  @override
  String toString() => 'WeatherEntity(temperatures: $temperatures)';

  WeatherEntity copyWith({
    String? temperatures,
  }) {
    return WeatherEntity(
      temperatures: temperatures ?? this.temperatures,
    );
  }

}