import 'package:freezed_annotation/freezed_annotation.dart';
import 'availability.dart';

part 'departments.freezed.dart';
part 'departments.g.dart';

@freezed
class Departments with _$Departments {
  const factory Departments({
    required String deptId,
    required String name,
    required String manager,
    required String meeting_time,
    int? year,
    required double budget,
    Availability? availability,
  }) = _Departments;

  factory Departments.fromJson(Map<String, dynamic> json) => _$DepartmentsFromJson(json);
}
