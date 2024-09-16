import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/home_view.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/first_list.dart';
import 'package:news_app/widgets/news.dart';
import 'package:news_app/widgets/news_list_view.dart';

void main() {
  NewsService(Dio()).getNews();
  runApp(const NewsApp());
}

final dio = Dio();

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: FirstList()),
            NewsListView(),
          ],
        ),
      ),
    );
  }
}
