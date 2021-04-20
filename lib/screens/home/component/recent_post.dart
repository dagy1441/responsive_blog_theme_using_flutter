import 'package:flutter/material.dart';
import 'package:news/screens/home/component/sidebar_container.dart';

import '../../../constants.dart';

class RecentPosts extends StatelessWidget {
  const RecentPosts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Recent Post",
      child: Column(
        children: [
          RecentPostCard(
            image: "assets/images/recent_1.png",
            title: "Ours 'Secret' formula to Online Workshop ",
            doPress: () {},
          ),
          SizedBox(height: kDefaultPadding),
          RecentPostCard(
            image: "assets/images/recent_2.png",
            title: "Ours 'Secret' formula to Online Workshop ",
            doPress: () {},
          ),
        ],
      ),
    );
  }
}

class RecentPostCard extends StatelessWidget {
  final String image, title;
  final VoidCallback doPress;
  const RecentPostCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.doPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: doPress,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(image),
            ),
            SizedBox(width: kDefaultPadding),
            Expanded(
              flex: 5,
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: "Raleway",
                  color: kDarkBlackColor,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
