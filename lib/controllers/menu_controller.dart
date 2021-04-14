import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class MenuController extends GetxController {
  RxInt _selectedIndex = 0.obs;

  int get selectedIndex => _selectedIndex.value;

  List<String> get menuItems => [
        "Cases",
        "Services",
        "About Us",
        "Careers",
        "Blog",
        "Contact",
      ];

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}
