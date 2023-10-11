import 'package:flutter/material.dart';
import 'widgets.dart';
import 'slider.dart';
import 'gestureDetector.dart';
import 'starGesture.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int count = 1;
  int? price;
  void decrementCount() {
    if (count > 0) {
      setState(() {
        count--;
      });
    }
  }

  void incrementCount() {
    setState(() {
      count++;

    });
  }

  @override
  Widget build(BuildContext context) {
    price = count*89;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF1E1E1E),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.favorite_border_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.shopping_bag_outlined),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
         color: Color(0xFF1E1E1E),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    color: Colors.cyan,
                    height: 399,
                  width: 280,
                  child: ImageSlider(),
                  ),

                  SizedBox(width: 20,),
                  GestureDetectorExample(),
                ],
              ),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Belgium Euro',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'myFont',
                          ),
                        ),
                        Text(
                          '20/21 Away by Adidas',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontFamily: 'myFont',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  StarGesture(),
                  SizedBox(width: 10,),
                  SizedBox(width: 60,),
                  Container(
                    height: 40,
                    width: 106,
                    decoration: BoxDecoration(
                      color: Color(0xFF353535),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 25,
                          width: 25,
                          child: FloatingActionButton.small(
                            onPressed: decrementCount,
                            child: Icon(Icons.remove),
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        SizedBox(width: 14,),
                        Text(
                          '$count',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'myFont',
                          ),
                        ),
                        SizedBox(width: 12,),
                        SizedBox(
                          height: 25,
                          width: 25,
                          child: FloatingActionButton.small(
                            onPressed: incrementCount,
                            child: Icon(Icons.add),
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Details',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                            fontFamily: 'myFont',
                          ),
                        ),
                        buildText('material: ', 'polyster'),
                        SizedBox(height: 10,),
                        buildText('shipping: ', 'in 5 to 6 Days'),
                        SizedBox(height: 10,),
                        buildText('Returns: ', 'within 20 Days'),
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: SizedBox.fromSize(
                        size: Size(80, 100),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Container(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.shopping_bag_outlined,size: 30,),
                                  Text('\$ $price',style: TextStyle(fontSize: 17),)
                                ],
                              ),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            primary: Colors.red, // Background color
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}