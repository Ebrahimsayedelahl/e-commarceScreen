import 'package:flutter/material.dart';
class StarGesture extends StatefulWidget {
  const StarGesture({super.key});

  @override
  State<StarGesture> createState() => _StarGestureState();
}

class _StarGestureState extends State<StarGesture> {
  Color star1 = Color(0xFF2B2B2B);
  Color star2  = Color(0xFF2B2B2B);
  Color star3= Color(0xFF2B2B2B);
  Color star4 = Color(0xFF2B2B2B);
  Color star5 = Color(0xFF2B2B2B);
  String rate = '0.0';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              star1 = Colors.red;
              star2 = Color(0xFF2B2B2B);
              star3= Color(0xFF2B2B2B);
              star4 = Color(0xFF2B2B2B);
              star5 = Color(0xFF2B2B2B);
              rate = '1.0';
            });
          },
          child: Icon(Icons.star,color: star1,)
        ),
        SizedBox(width: 5,),
        GestureDetector(
            onTap: () {
              setState(() {
                star1 = Colors.red;
                star2 = star1;
                star3= Color(0xFF2B2B2B);
                star4 = Color(0xFF2B2B2B);
                star5 = Color(0xFF2B2B2B);
                rate = '2.0';
              });
            },
            child: Icon(Icons.star,color: star2,)
        ),
        SizedBox(width: 5,),
        GestureDetector(
            onTap: () {
              setState(() {
                star1 = Colors.red;
                star2 = star1;
                star3= star1;
                star4 = Color(0xFF2B2B2B);
                star5 = Color(0xFF2B2B2B);
                rate = '3.0';
              });
            },
            child: Icon(Icons.star,color: star3,)
        ),
        SizedBox(width: 5,),
        GestureDetector(
            onTap: () {
              setState(() {
                star1 = Colors.red;
                star2 = star1;
                star3= star1;
                star4 = star1;
                star5 = Color(0xFF2B2B2B);
                rate = '4.0';
              });
            },
            child: Icon(Icons.star,color: star4,)
        ),
        SizedBox(width: 5,),
        GestureDetector(
            onTap: () {
              setState(() {
                star1 = Colors.red;
                star2 = star1;
                star3= star1;
                star4 = star1;
                star5 = star1;
                rate = '5.0';
              });
            },
            child: Icon(Icons.star,color: star5,)
        ),
        SizedBox(width: 10,),
        Text(
          '$rate',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'myFont',
          ),
        ),

      ],
    );


  }
}
