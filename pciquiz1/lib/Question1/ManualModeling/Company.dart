
import 'package:intl/intl.dart';

class HelperFun{
  static String convertUTC(DateTime utc){
    DateFormat dateFormat = DateFormat("d-MMM, yyyy");
    String formattedDate = dateFormat.format(utc);
    return formattedDate;
  }
}

mixin JsonFormat{
  Map<String, dynamic> toJson();
}

class Company with JsonFormat{
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

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      isActive: json['isActive'],
      name: json['name'],
      address: json['address'] != null ? Address.fromjson(json['address']) : null,
      established: DateTime.parse(json['established']),
      departments: json['departments'] != null ? (json['departments'] as List).map((i) => Departments.fromjson(i)).toList() : null,
    );
  }
  @override
  Map<String, dynamic> toJson() {
    return {
      'isActive': isActive,
      'name': name,
      'address': address?.toJson(),
      'established': established.toIso8601String(),
      'departments': departments?.map((i) => i.toJson()).toList(),
    };
  }
}

class Address with JsonFormat{
  String? street,city,state,postalCode;

  Address({this.street, this.city, this.state, this.postalCode});

  factory Address.fromjson(Map<String, dynamic> json){
    return Address(
      street:json["street"],
      city:json["city"],
      state:json["state"],
      postalCode:json["postalCode"],
    );
  }
  @override
  Map<String, dynamic> toJson(){
    return{
      'street':street,
      'city':city,
      'state':state,
      'postalCode':postalCode,
    };
  }
}

class Availability with JsonFormat{
  bool online,inStore;

  Availability({required this.online,required this.inStore});
  factory Availability.fromjson(Map<String, dynamic> json){
    return Availability(
      online:json["online"],
      inStore:json["inStore"],
    );
  }
  @override
  Map<String, dynamic> toJson(){
    return{
      'online':online,
      'inStore':inStore,
    };
  }
}


class Departments with JsonFormat{
  String deptId,name,manager,meeting_time;
  int? year;
  double budget;
  Availability? availability;

  Departments({required this.deptId,required this.name,required this.manager,required this.meeting_time, this.year,required this.budget, this.availability}) ;
  factory Departments.fromjson(Map<String, dynamic> json){
    return Departments(
      deptId:json["deptId"],
      name:json["name"],
      manager:json["manager"],
      meeting_time:json["meeting_time"],
      year:json["year"],
      budget:json["budget"],
      availability:json["availability"] != null ? Availability.fromjson(json["availability"]):null,
    );
  }
  @override
  Map<String, dynamic> toJson(){
    return{
      'deptId':deptId,
      'name':name,
      'manager':manager,
      'meeting_time':meeting_time,
      'year':year,
      'budget':budget,
      'availability':availability?.toJson(),
    };
  }
}