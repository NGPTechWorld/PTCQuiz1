//use quicktype.io

class Company {
  CompanyClass company;

  Company({
    required this.company,
  });

}

class CompanyClass {
  int isActive;
  String name;
  Address address;
  DateTime established;
  List<Department> departments;

  CompanyClass({
    required this.isActive,
    required this.name,
    required this.address,
    required this.established,
    required this.departments,
  });

}

class Address {
  String street;
  String city;
  String state;
  String postalCode;

  Address({
    required this.street,
    required this.city,
    required this.state,
    required this.postalCode,
  });

}

class Department {
  String deptId;
  String name;
  String manager;
  int budget;
  int? year;
  Availability? availability;
  String meetingTime;

  Department({
    required this.deptId,
    required this.name,
    required this.manager,
    required this.budget,
    this.year,
    this.availability,
    required this.meetingTime,
  });

}

class Availability {
  bool online;
  bool inStore;

  Availability({
    required this.online,
    required this.inStore,
  });

}
