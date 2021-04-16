import 'package:flutter/material.dart';
import 'package:news/models/Blog.dart';
import 'package:news/screens/home/component/blog_post.dart';

import '../../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      constraints: BoxConstraints(maxWidth: kMaxWidth),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: List.generate(
                  blogPosts.length,
                  (index) => BlogPostCard(
                        blog: blogPosts[index],
                      )),
            ),
          ),
          SizedBox(
            width: kDefaultPadding,
          ),
          Expanded(
            child: Container(
              height: 400,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
