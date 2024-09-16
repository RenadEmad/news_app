import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:news_app/main.dart';
import 'package:news_app/widgets/image_container.dart';
import 'package:news_app/widgets/first_list.dart';
import 'package:news_app/widgets/news.dart';
import 'package:news_app/widgets/news_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 230, 231, 233),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          title: const Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Text('Clouds',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          // child: Column(
          //   children: [
          //     MyList(),
          //     SizedBox(height: 40),
          //     Expanded(child: NewsListView())
          //   ],
          // ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: FirstList()),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 40,
                ),
              ),
              NewsListView()
            ],
          ),
        ));
  }
}
