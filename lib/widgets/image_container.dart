import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key, required this.categ});

  final CategoryModels categ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
              image: AssetImage(categ.image!), fit: BoxFit.fill),
        ),
        child: Center(
            child: Text(
          categ.text!,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        )),
      ),
    );
  }
}
