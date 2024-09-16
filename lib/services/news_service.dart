import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews() async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=12d7405666f7469d9e03f86bcdbf98d9&country=us&category=general',
      );

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        // Handling potential null values
        ArticleModel articleModel = ArticleModel(
          source: Source(
            id: article['source']['id'] ?? 'Unknown',
            name: article['source']['name'] ?? 'Unknown',
          ),
          image: article['urlToImage'] ?? '',
          title: article['title'] ?? 'No Title',
          subTitle: article['description'] ?? 'No Description',
        );
        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      // Handle exceptions
      print('Error fetching news: $e');
      return [];
    }
  }
}
