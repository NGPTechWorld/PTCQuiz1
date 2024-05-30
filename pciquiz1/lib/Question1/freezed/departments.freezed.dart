// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'departments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Departments _$DepartmentsFromJson(Map<String, dynamic> json) {
  return _Departments.fromJson(json);
}

/// @nodoc
mixin _$Departments {
  String get deptId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get manager => throw _privateConstructorUsedError;
  String get meeting_time => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;
  double get budget => throw _privateConstructorUsedError;
  Availability? get availability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartmentsCopyWith<Departments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentsCopyWith<$Res> {
  factory $DepartmentsCopyWith(
          Departments value, $Res Function(Departments) then) =
      _$DepartmentsCopyWithImpl<$Res, Departments>;
  @useResult
  $Res call(
      {String deptId,
      String name,
      String manager,
      String meeting_time,
      int? year,
      double budget,
      Availability? availability});

  $AvailabilityCopyWith<$Res>? get availability;
}

/// @nodoc
class _$DepartmentsCopyWithImpl<$Res, $Val extends Departments>
    implements $DepartmentsCopyWith<$Res> {
  _$DepartmentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deptId = null,
    Object? name = null,
    Object? manager = null,
    Object? meeting_time = null,
    Object? year = freezed,
    Object? budget = null,
    Object? availability = freezed,
  }) {
    return _then(_value.copyWith(
      deptId: null == deptId
          ? _value.deptId
          : deptId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as String,
      meeting_time: null == meeting_time
          ? _value.meeting_time
          : meeting_time // ignore: cast_nullable_to_non_nullable
              as String,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as Availability?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AvailabilityCopyWith<$Res>? get availability {
    if (_value.availability == null) {
      return null;
    }

    return $AvailabilityCopyWith<$Res>(_value.availability!, (value) {
      return _then(_value.copyWith(availability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DepartmentsImplCopyWith<$Res>
    implements $DepartmentsCopyWith<$Res> {
  factory _$$DepartmentsImplCopyWith(
          _$DepartmentsImpl value, $Res Function(_$DepartmentsImpl) then) =
      __$$DepartmentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String deptId,
      String name,
      String manager,
      String meeting_time,
      int? year,
      double budget,
      Availability? availability});

  @override
  $AvailabilityCopyWith<$Res>? get availability;
}

/// @nodoc
class __$$DepartmentsImplCopyWithImpl<$Res>
    extends _$DepartmentsCopyWithImpl<$Res, _$DepartmentsImpl>
    implements _$$DepartmentsImplCopyWith<$Res> {
  __$$DepartmentsImplCopyWithImpl(
      _$DepartmentsImpl _value, $Res Function(_$DepartmentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deptId = null,
    Object? name = null,
    Object? manager = null,
    Object? meeting_time = null,
    Object? year = freezed,
    Object? budget = null,
    Object? availability = freezed,
  }) {
    return _then(_$DepartmentsImpl(
      deptId: null == deptId
          ? _value.deptId
          : deptId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as String,
      meeting_time: null == meeting_time
          ? _value.meeting_time
          : meeting_time // ignore: cast_nullable_to_non_nullable
              as String,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as Availability?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartmentsImpl implements _Departments {
  const _$DepartmentsImpl(
      {required this.deptId,
      required this.name,
      required this.manager,
      required this.meeting_time,
      this.year,
      required this.budget,
      this.availability});

  factory _$DepartmentsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartmentsImplFromJson(json);

  @override
  final String deptId;
  @override
  final String name;
  @override
  final String manager;
  @override
  final String meeting_time;
  @override
  final int? year;
  @override
  final double budget;
  @override
  final Availability? availability;

  @override
  String toString() {
    return 'Departments(deptId: $deptId, name: $name, manager: $manager, meeting_time: $meeting_time, year: $year, budget: $budget, availability: $availability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentsImpl &&
            (identical(other.deptId, deptId) || other.deptId == deptId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.meeting_time, meeting_time) ||
                other.meeting_time == meeting_time) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.availability, availability) ||
                other.availability == availability));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deptId, name, manager,
      meeting_time, year, budget, availability);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentsImplCopyWith<_$DepartmentsImpl> get copyWith =>
      __$$DepartmentsImplCopyWithImpl<_$DepartmentsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepartmentsImplToJson(
      this,
    );
  }
}

abstract class _Departments implements Departments {
  const factory _Departments(
      {required final String deptId,
      required final String name,
      required final String manager,
      required final String meeting_time,
      final int? year,
      required final double budget,
      final Availability? availability}) = _$DepartmentsImpl;

  factory _Departments.fromJson(Map<String, dynamic> json) =
      _$DepartmentsImpl.fromJson;

  @override
  String get deptId;
  @override
  String get name;
  @override
  String get manager;
  @override
  String get meeting_time;
  @override
  int? get year;
  @override
  double get budget;
  @override
  Availability? get availability;
  @override
  @JsonKey(ignore: true)
  _$$DepartmentsImplCopyWith<_$DepartmentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
