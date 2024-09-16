import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = []; //1
  bool isLoading = true;
  @override
  void initState() {
    // inside init state
    super.initState();
    getGeneralNews(); //3 refactor
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getNews(); //2     2=1
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    NewsService(Dio()).getNews();
    return isLoading?const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())): SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: NewsContainer(
            articleModel: articles[index],
          ),
        );
      },
    ));
  }
}
