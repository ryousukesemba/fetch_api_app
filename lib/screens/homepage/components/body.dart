import 'package:fetch_api_app/screens/homepage/components/news_item.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          NewsItem(),
        ],
      ),
    );
  }
}
