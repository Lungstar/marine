import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marine_life/components/roundButtonPrimary.dart';
import 'package:marine_life/screens/animals_details.dart';
import 'package:sqflite/sqflite.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.jpeg'),
                fit: BoxFit.cover)),
        child: Align(
          alignment: FractionalOffset.bottomCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('Discover the sea',style: TextStyle(fontSize: 30,color: Colors.grey[800]),),
              Padding(
                padding: EdgeInsets.all(20),
                child: ButtonPrimary(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => AnimalDetails(title: 'Animal',),
                    ));
                  },
                  buttonName: '>>',
                ),
              )
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}