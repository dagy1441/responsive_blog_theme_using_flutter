import 'package:flutter/material.dart';
import 'package:news/models/Blog.dart';

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
              children: [
                AspectRatio(
                  aspectRatio: 1.78,
                  child: Image.asset(blogPosts[0].image),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(10),
                      // topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Design".toUpperCase()),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
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
