import 'package:flutter/material.dart';
import 'package:loan_asaan/constants/controllers.dart';
import 'package:loan_asaan/constants/style.dart';
import 'package:loan_asaan/helpers/reponsiveness.dart';
import 'package:loan_asaan/routing/routes.dart';
import 'package:loan_asaan/widgets/custom_text.dart';
import 'package:loan_asaan/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),

                Row(
                  children: [
                    SizedBox(width: _width / 48),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Image.asset("assets/images/loan-asaan.png"),
                      ),
                    ),
                    Divider(),
                    // Flexible(
                    //   child: CustomText(
                    //     text: "Dash",
                    //     size: 20,
                    //     weight: FontWeight.bold,
                    //     color: active,
                    //   ),
                    // ),
                    SizedBox(width: _width / 48),
                  ],
                ),
                // Container(
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(100),
                //     image: DecorationImage(image: AssetImage("assets/images/loan-asaan.png")
                //     )
                //   ),
                // ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          Divider(
            color: lightGrey.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItemRoutes
                .map((item) => SideMenuItem(
                    itemName: item.name,
                    onTap: () {
                      if (item.route == authenticationPageRoute) {
                        Get.offAllNamed(authenticationPageRoute);
                        menuController.changeActiveItemTo(homePageDisplayName);
                      }
                      if (!menuController.isActive(item.name)) {
                        menuController.changeActiveItemTo(item.name);
                        if (ResponsiveWidget.isSmallScreen(context)) Get.back();
                        navigationController.navigateTo(item.route);
                      }
                    }))
                .toList(),
          )
        ],
      ),
    );
  }
}
