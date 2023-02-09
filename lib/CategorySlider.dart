import 'package:flutter/material.dart';

class CategorySlider extends StatelessWidget {
  const CategorySlider({super.key});

  @override
  Widget build(BuildContext context) {
    var imageurl;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [
            _categoryslide(
              Image.asset(
                'images/pizza.jpg',
                width: 50,
                height: 50,
              ),
            ),
            _categoryslide(
              Image.asset(
                'images/burger.jpg',
                width: 50,
                height: 50,
              ),
            ),
            _categoryslide(
              Image.asset(
                'images/cake.png',
                width: 50,
                height: 50,
              ),
            ),
            _categoryslide(
              Image.asset(
                'images/pazzta.png',
                width: 50,
                height: 50,
              ),
            ),
            _categoryslide(
              Image.asset(
                'images/juice.jpg',
                width: 50,
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _categoryslide(Image imageurl) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                  color: Colors.black12)
            ]),
        child: imageurl),
  );
}
