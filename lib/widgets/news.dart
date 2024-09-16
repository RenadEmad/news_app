import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(articleModel.image!,
              height: 200, width: double.infinity, fit: BoxFit.fill),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title! ?? '',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle! ?? '',
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        )
      ],
    );
  }
}
