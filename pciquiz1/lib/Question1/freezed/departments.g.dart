// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'departments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DepartmentsImpl _$$DepartmentsImplFromJson(Map<String, dynamic> json) =>
    _$DepartmentsImpl(
      deptId: json['deptId'] as String,
      name: json['name'] as String,
      manager: json['manager'] as String,
      meeting_time: json['meeting_time'] as String,
      year: (json['year'] as num?)?.toInt(),
      budget: (json['budget'] as num).toDouble(),
      availability: json['availability'] == null
          ? null
          : Availability.fromJson(json['availability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DepartmentsImplToJson(_$DepartmentsImpl instance) =>
    <String, dynamic>{
      'deptId': instance.deptId,
      'name': instance.name,
      'manager': instance.manager,
      'meeting_time': instance.meeting_time,
      'year': instance.year,
      'budget': instance.budget,
      'availability': instance.availability,
    };
