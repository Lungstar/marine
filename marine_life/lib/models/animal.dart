import 'dart:convert';

import 'package:marine_life/models/location.dart';


AnimalDetail animalDetailFromJson(String str) {
  final jsonData = json.decode(str);
  return AnimalDetail.fromMap(jsonData);
}

String animalDetailToJson(AnimalDetail data) {
  final dyn = data.toMap();
  return json.encode(dyn);
}

class AnimalDetail {
//  The time, date, GPS location, number and size of the animal should be gathered.
  DateTime time;
  Location location;//object long lat
  int number;
  int size;

  AnimalDetail(
      {this.time,
        this.location,
        this.number,
        this.size,
      });

  factory AnimalDetail.fromMap(Map<String, dynamic> map) => new AnimalDetail(
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
