import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:news/controllers/menu_controller.dart';

import '../../../constants.dart';

class SideMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          color: kDarkBlackColor,
          child: Obx(
            () => ListView(
              children: [
                DrawerHeader(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 3.5),
                    child: SvgPicture.asset("assets/icons/logo.svg"),
                  ),
                ),
                ...List.generate(
                  _controller.menuItems.length,
                  (index) => DrawerItem(
                    title: _controller.menuItems[index],
                    isActive: index == _controller.selectedIndex,
                    doPress: () {
                      _controller.setMenuIndex(index);
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback doPress;
  const DrawerItem({
    Key key,
    @required this.title,
    @required this.isActive,
    @required this.doPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        selected: isActive,
        selectedTileColor: kPrimaryColor,
        onTap: doPress,
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
