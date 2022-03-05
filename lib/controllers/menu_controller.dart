import 'package:flutter/material.dart';
import 'package:loan_asaan/constants/style.dart';
import 'package:loan_asaan/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = homePageDisplayName.obs;

  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isHovering(String itemName) => hoverItem.value == itemName;

  isActive(String itemName) => activeItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case homePageDisplayName:
        return _customIcon(Icons.home, itemName);
      case loanPageDisplayName:
        return _customIcon(Icons.person_outline_outlined, itemName);
      case featurePageDisplayName:
        return _customIcon(Icons.verified_outlined, itemName);
      case facilitationPageDisplayName:
        return _customIcon(Icons.smart_display_outlined, itemName);
      case appoinmentPageDisplayName:
        return _customIcon(Icons.miscellaneous_services_rounded, itemName);
      case aboutPageDisplayName:
        return _customIcon(Icons.contact_page_outlined, itemName);
      case authenticationPageDisplayName:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: dark);

    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
