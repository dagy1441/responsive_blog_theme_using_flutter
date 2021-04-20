import 'package:flutter/material.dart';
import 'package:news/screens/home/component/sidebar_container.dart';

import '../../../constants.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Categories",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Category(
            title: ' Aritificial Intelligence',
            numOfItem: 3,
            doPress: () {},
          ),
          Category(
            title: 'Web / Mobile Development',
            numOfItem: 5,
            doPress: () {},
          ),
          Category(
            title: ' UI/UX Design',
            numOfItem: 18,
            doPress: () {},
          ),
          Category(
            title: ' Augmented reality',
            numOfItem: 32,
            doPress: () {},
          ),
          Category(
            title: ' Aritificial Intelligence',
            numOfItem: 13,
            doPress: () {},
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String title;
  final int numOfItem;
  final VoidCallback doPress;
  const Category({
    Key key,
    @required this.title,
    @required this.numOfItem,
    @required this.doPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: TextButton(
        onPressed: () {},
        child: Text.rich(
          TextSpan(
            text: title,
            style: TextStyle(color: kDarkBlackColor),
            children: [
              TextSpan(
                text: ' ($numOfItem)',
                style: TextStyle(color: kBodyTextColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
