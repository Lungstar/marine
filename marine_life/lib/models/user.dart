import 'dart:convert';

import 'package:marine_life/models/location.dart';


UserDetail UserDetailFromJson(String str) {
  final jsonData = json.decode(str);
  return UserDetail.fromMap(jsonData);
}

String UserDetailToJson(UserDetail data) {
  final dyn = data.toMap();
  return json.encode(dyn);
}

class UserDetail {
//  The time, date, GPS location, number and size of the animal should be gathered.
  DateTime time;
  Location location;//object long lat
  int number;
  int size;

  UserDetail(
      {this.time,
        this.location,
        this.number,
        this.size,
      });

  factory UserDetail.fromMap(Map<String, dynamic> map) => new UserDetail(
      time : map['time'],
      location : map['location'],
      number : map['number'],
      size : map['size'],
  );

  Map<String, dynamic> toMap() => {
    'time': time,
    'location': location,
    'number': number,
    'size': size,
  };
}
