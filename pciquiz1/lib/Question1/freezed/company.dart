import 'package:freezed_annotation/freezed_annotation.dart';
import 'address.dart';
import 'departments.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
  const factory Company({
    int? isActive,
    required String name,
    Address? address,
    required DateTime established,
    List<Departments>? departments,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
}
