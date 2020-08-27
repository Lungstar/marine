
class InvoiceItemFields {
  static String longitude = 'longitude';
  static String latitude = 'latitude';
}

class Location {
  String longitude;
  String latitude;

  Location.fromMap(Map<dynamic, dynamic> map)
      : longitude = map[InvoiceItemFields.longitude],
    latitude =map[InvoiceItemFields.latitude];

}
