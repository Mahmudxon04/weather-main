import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class Temperatures {
  @JsonKey(name: "location")
  Location location;
  @JsonKey(name: "current")
  Current current;

  Temperatures({
    required this.location,
    required this.current,
  });

  factory Temperatures.fromJson(Map<String, dynamic> json) => _$TemperaturesFromJson(json);

  Map<String, dynamic> toJson() => _$TemperaturesToJson(this);
}

@JsonSerializable()
class Current {
  @JsonKey(name: "last_updated")
  String lastUpdated;
  @JsonKey(defaultValue: 0)
  int tempC;
  @JsonKey(defaultValue: 0)
  int isDay;
  @JsonKey(name: "condition")
  Condition condition;
  @JsonKey(defaultValue: 0)
  double windKph;
  @JsonKey(defaultValue: 0)
  int humidity;
  @JsonKey(defaultValue: 0)
  int cloud;

  Current({
    required this.lastUpdated,
    required this.tempC,
    required this.isDay,
    required this.condition,
    required this.windKph,
    required this.humidity,
    required this.cloud,
  });

  factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}

@JsonSerializable()
class Condition {
  @JsonKey(name: "text")
  String text;

  Condition({
    required this.text,
  });

  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}

@JsonSerializable()
class Location {
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "region")
  String region;
  @JsonKey(name: "country")
  String country;
  @JsonKey(defaultValue: 0.0)
  double lat;
  @JsonKey(defaultValue: 0.0)
  double lon;
  @JsonKey(name: "tz_id")
  String tzId;
  @JsonKey(defaultValue: 0)
  int localtimeEpoch;
  @JsonKey(name: "localtime")
  String localtime;

  Location({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.tzId,
    required this.localtimeEpoch,
    required this.localtime,
  });

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
