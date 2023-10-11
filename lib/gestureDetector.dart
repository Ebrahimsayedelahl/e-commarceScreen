import 'package:flutter/material.dart';

class GestureDetectorExample extends StatefulWidget {
  const GestureDetectorExample({Key? key}) : super(key: key);

  @override
  _GestureDetectorExampleState createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<GestureDetectorExample> {
  Color s = Color(0xFF2B2B2B);
  Color l = Color(0xFF2B2B2B);
  Color m = Color(0xFF2B2B2B);
  Color xl = Color(0xFF2B2B2B);
  Color xxl = Color(0xFF2B2B2B);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     GestureDetector(
    onTap: () {
      setState(() {
        s = Colors.red;
        l = Color(0xFF2B2B2B);
        m = Color(0xFF2B2B2B);
        xl = Color(0xFF2B2B2B);
        xxl = Color(0xFF2B2B2B);
      });
    },
              child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
              color: s,
              borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
              child: Text(
              'S',
              style: TextStyle(fontSize: 30, color: Colors.white,fontFamily: 'myFont',)
              ),
              ),
              ),
              ),
        SizedBox(height: 15,),
        GestureDetector(
          onTap: () {
            setState(() {
              s = Color(0xFF2B2B2B);
              l = Colors.red;
              m = Color(0xFF2B2B2B);
              xl = Color(0xFF2B2B2B);
              xxl = Color(0xFF2B2B2B);
            });
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: l,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Text(
                'L',
                style: TextStyle(fontSize: 30, color: Colors.white,fontFamily: 'myFont',),
              ),
            ),
          ),
        ),
        SizedBox(height: 15,),
        GestureDetector(
          onTap: () {
            setState(() {
              s = Color(0xFF2B2B2B);
              l = Color(0xFF2B2B2B);
              m = Colors.red;
              xl = Color(0xFF2B2B2B);
              xxl = Color(0xFF2B2B2B);
            });
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: m,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Text(
                'm',
                style: TextStyle(fontSize: 30, color: Colors.white,fontFamily: 'myFont',),
              ),
            ),
          ),
        ),
        SizedBox(height: 15,),
        GestureDetector(
          onTap: () {
            setState(() {
              s = Color(0xFF2B2B2B);
              l = Color(0xFF2B2B2B);
              m =Color(0xFF2B2B2B);
              xl = Colors.red;
              xxl = Color(0xFF2B2B2B);
            });
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: xl,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Text(
                'XL',
                style: TextStyle(fontSize: 30, color: Colors.white,fontFamily: 'myFont',),
              ),
            ),
          ),
        ),
        SizedBox(height: 15,),
        GestureDetector(
          onTap: () {
            setState(() {
              s = Color(0xFF2B2B2B);
              l = Color(0xFF2B2B2B);
              m =Color(0xFF2B2B2B);
              xl = Color(0xFF2B2B2B);
              xxl = Colors.red;
            });
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: xxl,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Text(
                '2XL',
                style: TextStyle(fontSize: 24, color: Colors.white,fontFamily: 'myFont',),
              ),
            ),
          ),
        ),


      ],
    );
  }
}