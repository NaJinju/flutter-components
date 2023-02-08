import 'package:flutter/material.dart';
import 'package:flutter_components/screens/feed_full_scroll_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: const Color(0XFF72777B),
            bottom: const TabBar(
              indicatorColor: Color(0XFF93979B),
              indicatorWeight: 3.0,
              labelColor: Color(0XFF72777B),
              tabs: [
                Tab(
                  text: '피드',
                ),
                Tab(
                  text: '라이브',
                ),
                Tab(
                  text: '코스',
                ),
                Tab(
                  text: '카페',
                ),
                Tab(
                  text: '맴버십',
                )
              ],
            ),
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ChatGPT & flutter',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Icon(
                  Icons.search,
                ),
              ],
            ),
            centerTitle: false,
          ),
          body: const TabBarView(
            children: [
              FeedFullScrollScreen(),
              Icon(Icons.directions_boat),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_boat),
              Icon(Icons.directions_rounded),
            ],
          ),
        ),
      ),
    );
  }
}
