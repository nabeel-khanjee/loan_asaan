import 'package:flutter/material.dart';
import 'package:loan_asaan/constants/controllers.dart';
import 'package:loan_asaan/helpers/reponsiveness.dart';
import 'package:loan_asaan/pages/clients/widgets/clients_table.dart';
import 'package:loan_asaan/widgets/custom_text.dart';
import 'package:get/get.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Obx(
            () => Row(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                    child: CustomText(
                      text: menuController.activeItem.value,
                      size: 24,
                      weight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              Clientstable(),
            ],
          )),
        ],
      ),
    );
  }
}
