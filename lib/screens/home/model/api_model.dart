
import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String username;
  String sex;
  String address;
  String name;
  String email;
  DateTime birthday;

  UserModel({
    required this.username,
    required this.sex,
    required this.address,
    required this.name,
    required this.email,
    required this.birthday,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    username: json["username"],
    sex: json["sex"],
    address: json["address"],
    name: json["name"],
    email: json["email"],
    birthday: DateTime.parse(json["birthday"]),
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "sex": sex,
    "address": address,
    "name": name,
    "email": email,
    "birthday": "${birthday.year.toString().padLeft(4, '0')}-${birthday.month.toString().padLeft(2, '0')}-${birthday.day.toString().padLeft(2, '0')}",
  };
}
