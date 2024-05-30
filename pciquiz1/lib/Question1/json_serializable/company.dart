import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart'; // This will be the generated file

@JsonSerializable()
class Company {
  int? isActive;
  String name;
  Address? address;
  DateTime established;
  List<Departments>? departments;

  Company({
    required this.isActive,
    required this.name,
    this.address,
    required this.established,
    this.departments,
  });

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}

@JsonSerializable()
class Address {
  String? street, city, state, postalCode;

  Address({this.street, this.city, this.state, this.postalCode});

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

@JsonSerializable()
class Availability {
  bool online, inStore;

  Availability({required this.online, required this.inStore});

  factory Availability.fromJson(Map<String, dynamic> json) => _$AvailabilityFromJson(json);

  Map<String, dynamic> toJson() => _$AvailabilityToJson(this);
}

@JsonSerializable()
class Departments {
  String deptId, name, manager, meeting_time;
  int? year;
  double budget;
  Availability? availability;

  Departments({
    required this.deptId,
    required this.name,
    required this.manager,
    required this.meeting_time,
    this.year,
    required this.budget,
    this.availability,
  });

  factory Departments.fromJson(Map<String, dynamic> json) => _$DepartmentsFromJson(json);

  Map<String, dynamic> toJson() => _$DepartmentsToJson(this);
}
