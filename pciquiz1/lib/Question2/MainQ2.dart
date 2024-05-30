
import 'dart:io';

import '/Question2/LazyManager.dart';

class ConsoleUI{
  static var categories=LazyCategories();
  static var venuses=LazyVenues();
  static var languages=LazyLanguages();
  static void home(){
    print("=============Home===============");
    print("             Choose          ");
    print("1) Categories\n2) Venuse\n3) Languages");
    print("\nEnter Number: ");
    int numSelected=int.parse(stdin.readLineSync()!);
    print("===============================");
    switch(numSelected){
      case 1:
          categoriesUI();
        break;
      case 2:
          venuesUI();
        break;
      case 3:
        languagesUI();
        break;
        default:
          home();
          break;
    }
  }
  static void categoriesUI(){
    print("==========Categories=============");
    for(String s in categories.categories)
        print(s);
    print("\nPress any key: ");
    int idSelected=int.parse(stdin.readLineSync()!);
    print("===============================");
    home();
  }
  static void venuesUI(){
    print("=============Venues==============");
    for(String s in venuses.venues)
      print(s);
    print("\nPress any key: ");
    int idSelected=int.parse(stdin.readLineSync()!);
    print("===============================");
    home();
  }
  static void languagesUI() async{
    print("===========Languages=============");
    for(String s in await languages.languages)
      print(s);
    print("\nPress any key: ");
    int idSelected=int.parse(stdin.readLineSync()!);
    print("===============================");
    home();
  }
}
void main(){
  ConsoleUI.home();
}