import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marine_life/screens/animals_details.dart';
import 'package:marine_life/screens/home.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<TabNavigationItem> get items => [
    TabNavigationItem(
      page: MyHomePage(),
      icon: Icon(Icons.home),
      title: Text("Home"),
    ),
    TabNavigationItem(
      page: AnimalDetails(),
      icon: Icon(Icons.description),
      title: Text("Selected Animal"),
    ),
    TabNavigationItem(
      page: AnimalDetails(),
      icon: Icon(Icons.mobile_screen_share),
      title: Text("Trip"),
    ),
  ];
}