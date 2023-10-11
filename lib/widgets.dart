import 'package:flutter/material.dart';

Widget buildText(String label1,String label2) {
  return RichText(
    text: TextSpan(
      text: label1,
      style: TextStyle(
          color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'myFont'),
      children: <TextSpan>[
        TextSpan(
            text: label2 , style: TextStyle(color: Colors.grey,fontSize: 16,fontFamily: 'myFont')),
      ],
    ),
  );
}


class RatingWidget extends StatefulWidget {
  @override
  _RatingWidgetState createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  Color _myColorOne = Colors.grey;
  Color _myColorTwo = Colors.grey;
  Color _myColorThree = Colors.grey;
  Color _myColorFour = Colors.grey;
  Color _myColorFive = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Row(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.star),
                onPressed: () => setState(() {
                  _myColorOne = Colors.red;
                  _myColorTwo = Color(0xFF81272D);
                  _myColorThree = Color(0xFF81272D);
                  _myColorFour = Color(0xFF81272D);
                  _myColorFive = Color(0xFF81272D);
                }),
                color: _myColorOne,
              ),
              IconButton(
                icon: Icon(Icons.star),
                onPressed: () => setState(() {
                  _myColorOne = Colors.red;
                  _myColorTwo = Colors.red;
                  _myColorThree = Color(0xFF81272D);
                  _myColorFour = Color(0xFF81272D);
                  _myColorFive = Color(0xFF81272D);
                }),
                color: _myColorTwo,
              ),
              IconButton(
                icon: Icon(Icons.star),
                onPressed: () => setState(() {
                  _myColorOne = Colors.red;
                  _myColorTwo = Colors.red;
                  _myColorThree = Colors.red;
                  _myColorFour = Color(0xFF81272D);
                  _myColorFive = Color(0xFF81272D);
                }),
                color: _myColorThree,
              ),
              IconButton(
                icon: Icon(Icons.star),
                onPressed: () => setState(() {
                  _myColorOne = Colors.red;
                  _myColorTwo = Colors.red;
                  _myColorThree = Colors.red;
                  _myColorFour = Colors.red;
                  _myColorFive = Color(0xFF81272D);
                }),
                color: _myColorFour,
              ),
              IconButton(
                icon: Icon(Icons.star),
                onPressed: () => setState(() {
                  _myColorOne = Colors.red;
                  _myColorTwo = Colors.red;
                  _myColorThree = Colors.red;
                  _myColorFour = Colors.red;
                  _myColorFive = Colors.red;
                }),
                color: _myColorFive,
              ),
            ],
          ),

    );
  }
}
