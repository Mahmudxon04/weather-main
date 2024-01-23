// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Temperatures _$TemperaturesFromJson(Map<String, dynamic> json) => Temperatures(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      current: Current.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TemperaturesToJson(Temperatures instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
      lastUpdated: json['last_updated'] as String,
      tempC: json['temp_c'] as int,
      isDay: json['is_day'] as int,
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
      windKph: (json['wind_kph'] as num).toDouble(),
      humidity: json['humidity'] as int,
      cloud: json['cloud'] as int,
    );

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'last_updated': instance.lastUpdated,
      'temp_c': instance.tempC,
      'is_day': instance.isDay,
      'condition': instance.condition,
      'wind_kph': instance.windKph,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
    };

Condition _$ConditionFromJson(Map<String, dynamic> json) => Condition(
      text: json['text'] as String,
    );

Map<String, dynamic> _$ConditionToJson(Condition instance) => <String, dynamic>{
      'text': instance.text,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      name: json['name'] as String,
      region: json['region'] as String,
      country: json['country'] as String,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      tzId: json['tz_id'] as String,
      localtimeEpoch: json['localtime_epoch'] as int,
      localtime: json['localtime'] as String,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
      'tz_id': instance.tzId,
      'localtime_epoch': instance.localtimeEpoch,
      'localtime': instance.localtime,
    };
