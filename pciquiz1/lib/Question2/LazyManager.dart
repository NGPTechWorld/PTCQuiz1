import 'dart:io';
import 'package:faker/src/faker.dart';
import 'dart:convert';

class LazyCategories{
  LazyCategories._internal();
  static final LazyCategories _instance = LazyCategories._internal();
  factory LazyCategories() {
    return _instance;
  }
  List<String>? _categories;
  List<String> get categories{
    if(_categories == null)
      _categories=_getCategories();
    return _categories!;
  }
  List<String> _getCategories(){
    List<String> items=[];
    for(int i=0;i<1000;i++) {
      items.add(faker.lorem.words(3).join(' '));
    }
    return items;
  }
}
class LazyVenues{
  LazyVenues._internal();
  static final LazyVenues _instance = LazyVenues._internal();
  factory LazyVenues() {
    return _instance;
  }
  List<String>? _venues;
  List<String> get venues{
    if(_venues == null)
      _venues=_getVenues();
    return _venues!;
  }
  List<String> _getVenues(){
    List<String> items=[];
    for(int i=0;i<1000;i++)
      items.add(faker.lorem.words(2).join(' '));
    return items;
  }
}
class LazyLanguages{
  LazyLanguages._internal();
  static final LazyLanguages _instance = LazyLanguages._internal();
  factory LazyLanguages() {
    return _instance;
  }
  List<String>? _languages;
  Future<List<String>> get languages async {
    _languages ??= await _getLanguages();
    return _languages!;
  }
  Future<List<String>> _getLanguages() async {
    List<String> items;
    String filePath="assets/languages.json";
    File file=File(filePath);
    final contents = await file.readAsString();
    print(contents);
    // String jsonString = await rootBundle.loadString(filePath);
    final List<dynamic> jsonData = jsonDecode(contents);
    items = jsonData.cast<String>();
    return items;
  }
}