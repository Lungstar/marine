import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marine_life/components/screen_holder.dart';

class AnimalDetails extends StatefulWidget {
  AnimalDetails({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AnimalDetailsState createState() => _AnimalDetailsState();
}

class _AnimalDetailsState extends State<AnimalDetails> {
  @override
  Widget build(BuildContext context) {
    return ScreenHolder(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          buildAnimalCard(),
        ],
      ),
    );
  }
  Widget buildAnimalCard(){
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        height: 124.0,
        width: MediaQuery.of(context).size.width,
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: new Offset(0.0, 10.0),
            ),
          ],
        ),
        child: (Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text('Place holder Name'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text('Place holder Hieght'),
                    Text('Place holder Size'),
                  ],
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
