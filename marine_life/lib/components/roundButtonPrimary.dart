import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final String buttonName;
  final VoidCallback onTap;

  final EdgeInsets margin;
  final Color buttonColor;
  final Color shadowColor;
  final Color textColor;
  final bool loading;
  final double height;
  final double width;
  final Widget buttonIcon;

  //passing props in react style
  ButtonPrimary({
    @required this.buttonName,
    @required this.onTap,
    this.margin: const EdgeInsets.all(0.0),
    this.buttonColor: Colors.white,
    this.textColor: Colors.black,
    this.shadowColor: Colors.white,
    this.loading: false,
    this.height: 50.0,
    this.width: 100.0,
    this.buttonIcon
  });

  @override
  Widget build(BuildContext context) {
    final customButton = Container(
      child:FlatButton(
        onPressed: onTap,
        child: buttonChild(),
        shape: RoundedRectangleBorder(side: BorderSide(
            width: 1,
            style: BorderStyle.solid,

        ), borderRadius: BorderRadius.circular(50)),
        color: this.buttonColor,
        textColor: Colors.black,
      ),
      height: this.height,
      margin: this.margin,
      padding: EdgeInsets.all(0.0),
      width: this.width,
    );

    return customButton;
  }

  Widget buttonChild() {
    bool hasIcon;
    if(buttonIcon != null)
      hasIcon = true;
    else
      hasIcon = false;

    if (this.loading) {
      return CircularProgressIndicator(backgroundColor: Colors.black,valueColor: new AlwaysStoppedAnimation<Color>(Colors.white));
    } else {
      return hasIcon ? Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buttonIcon,
          SizedBox(width: 5),
          Text(
            buttonName,
            style: TextStyle(fontFamily: "arial.ttf",fontWeight: FontWeight.bold,fontSize: 12.0,color: this.textColor),
            textAlign: TextAlign.center,
          )
        ],
      ): Text(
        buttonName,
        style: TextStyle(fontFamily: "arial.ttf",fontWeight: FontWeight.bold,fontSize: 12.0,color: this.textColor),
        textAlign: TextAlign.center,
      );
    }
  }
}
