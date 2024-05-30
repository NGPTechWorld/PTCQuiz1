
import 'ManualModeling/Company.dart';


void main(List<String> arguments) {
  Company company1=Company.fromJson({
      "is_active": 0,
      "name": "Tech Innovators Inc.",
      "address": {
        "street": "123 Innovation Drive",
        "city": "Techville",
        "state": "CA",
        "postalCode": "94043"
      },
      "established": "2023-05-24T00:00:00Z",
      "departments": [
        {
          "deptId": "D001",
          "name": "Engineering",
          "manager": "Carol Davis",
          "budget": 500000.00,
          "year": 2023,
          "availability": {
            "online": true,
            "inStore": false
          },
          "meeting_time": "14:30"
        },
        {
          "deptId": "D002",
          "name": "Marketing",
          "manager": "David Wilson",
          "budget": 300000.00,
          "meeting_time": "10:00 AM"
        }
      ]
  });
  Company company2=Company.fromJson({
    "isActive": 1,
    "name": "Tech Innovators Inc.",
    "address": null,
    "established": "2023-05-24T00:00:00Z",
    "departments": []
  });
  print("\n\n");
  print(company1.toJson());
  print("\nTime Format: ${HelperFun.convertUTC(company1.established)}");
  print("\n\n");
  print(company2.toJson());
  print("\nTime Format: ${HelperFun.convertUTC(company1.established)}");
}
