import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key});
  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int currentPage = 0;
  List sliderList = [
    {'image': 'images/1.png'},
    {'image': 'images/2.png'},
    {'image': 'images/3.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF000000),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (val) {
                  setState(() {
                    currentPage = val;
                  });
                },
                itemCount: sliderList.length,
                itemBuilder: (context, i) {
                  return TextAndImages(list: sliderList[i]);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                sliderList.length,
                    (index) => buildControlPageView(index, currentPage),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextAndImages extends StatelessWidget {
  final list;
  const TextAndImages({Key? key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            "${list['image']}",
            height: 380,
            width: 280,
          ),
        ],
      ),
    );
  }
}

AnimatedContainer buildControlPageView(int index, int currentPage) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 500),
    margin: EdgeInsets.symmetric(horizontal: 2),
    height: 5,
    width: currentPage == index ? 15 : 5,
    decoration: BoxDecoration(
      color:currentPage == index ?  Colors.red : Colors.grey,
      borderRadius: BorderRadius.circular(5),
    ),
  );
}