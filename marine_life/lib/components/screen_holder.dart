import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenHolder extends StatefulWidget {
  final Widget body;
  final bool showDrawer;
  final bool loggedInUser;
  final Color backgroundColor;
  final GlobalKey<ScaffoldState> scaffoldKey;

  const ScreenHolder(
      {Key key,
        @required this.body,
        this.scaffoldKey,
        this.backgroundColor: Colors.white,
        this.loggedInUser: true,
        this.showDrawer: true})
      : super(key: key);

  @override
  ScreenHolderState createState() => ScreenHolderState();
}

class ScreenHolderState extends State<ScreenHolder> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


      return Scaffold(
        backgroundColor: widget.backgroundColor,
        appBar: AppBar(
          title: Text('Marine Life'),
          automaticallyImplyLeading: false,
        ),
        body: widget.body,
      );
    }

}
