import 'package:faker/faker.dart';
import 'dart:io';

class UserCach{
  UserCach._internal();
  static final UserCach _instance =UserCach._internal();
  factory UserCach() {
    return _instance;
  }
  List<Map<String,dynamic>> userCache=[];
  User? getUserById(int? id) {
    if (id == null || id < 0) return null;
    for(int i=0;i<userCache.length;i++){
      if (userCache[i]["id"] ==id) {
        if(userCache[i]["first_name"]!=null){
          return User.fromJson(userCache[i]);
        }else{
          Map<String, dynamic> json = {
            "id": id,
            "first_name": faker.person.firstName(),
            "last_name": faker.person.lastName(),
            "about": faker.lorem.words(3).join(' '),
            "image": faker.image.image(),
          };
          userCache[i]=json;
          return User.fromJson(userCache[i]);
        }
      }
    }
  }

}
class User{
  int id;
  String? first_name,last_name,about;
  String? image;
  User({required this.id, this.first_name, this.last_name,this.about, this.image});
  String fullName(){
    return "$first_name $last_name";
  }
  String infoUser(){
    return "id:$id \nfull Name: ${fullName()}\nFirst Name:${first_name}\nLast Name:${last_name}\nAbout:$about\nimage:$image";
  }
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      first_name: json['first_name'],
      last_name: json['last_name'],
      about: json['about'],
      image: json['image'],
    );
  }
  Map<String,dynamic> toJson(){
    return {
      'id':id,
      'first_name':first_name,
      'last_name':last_name,
      'about':about,
      'image':image,
    };
  }

}
class ConsoleUI{
  static var users=UserCach();
  static void showUser(int id){
    print("===========showUser=============");
    print("         user info           ");
    User? crrentUser=users.getUserById(id);
    if(crrentUser !=null)
      print(crrentUser!.infoUser());
    else
      print("Error id !!");
    print("\nPress any key: ");
    int idSelected=int.parse(stdin.readLineSync()!);
    print("===============================");
    home();
  }
  static void home(){
    print("=============Home===============");
    print("         Chose id user          ");
    int i=1;
    for(Map<String,dynamic> u in users.userCache){
      print('$i) ${u["id"]}');
      i++;
    }
    print("\nEnter Number: ");
    int idSelected=int.parse(stdin.readLineSync()!);
    print("===============================");
    showUser(idSelected);
  }
}
