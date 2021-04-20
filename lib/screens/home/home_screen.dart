import 'package:flutter/material.dart';
import 'package:news/models/Blog.dart';
import 'package:news/responsive.dart';
import 'package:news/screens/home/component/blog_post.dart';
import 'package:news/screens/home/component/sidebar_container.dart';

import '../../constants.dart';
import 'component/categories.dart';
import 'component/recent_post.dart';
import 'component/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(kDefaultPadding),
      // constraints: BoxConstraints(maxWidth: kMaxWidth),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: kDefaultPadding,
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: List.generate(
                blogPosts.length,
                (index) => BlogPostCard(
                  blog: blogPosts[index],
                ),
              ),
            ),
          ),
          if (!Responsive.isMobile(context))
            SizedBox(
              width: kDefaultPadding,
            ),
          if (!Responsive.isMobile(context))
            Expanded(
              child: Column(
                children: [
                  Search(),
                  SizedBox(height: kDefaultPadding),
                  Categories(),
                  SizedBox(height: kDefaultPadding),
                  RecentPosts()
                ],
              ),
            ),
        ],
      ),
    );
  }
}
