import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/image_container.dart';

class FirstList extends StatelessWidget {
  const FirstList({super.key});
  final List<CategoryModels> categories = const [
    CategoryModels(image: 'images/business.avif', text: 'Bussines'),
    CategoryModels(image: 'images/entertaiment.avif', text: 'Entertaiment'),
    CategoryModels(image: 'images/general.avif', text: 'general'),
    CategoryModels(image: 'images/health.avif', text: 'health'),
    CategoryModels(image: 'images/science.avif', text: 'Science'),
    CategoryModels(image: 'images/sports.avif', text: 'Sports'),
    CategoryModels(image: 'images/technology.jpeg', text: 'technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return ImageContainer(categ: categories[index]);
          }),
    );
  }
}
