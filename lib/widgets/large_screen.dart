import 'package:flutter/material.dart';
import 'package:loan_asaan/helpers/local_navigator.dart';
import 'package:loan_asaan/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Expanded(
        //     child: SideMenu()),
        Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                const BoxShadow(
                    color: Color.fromARGB(120, 206, 201, 201),
                    offset: Offset(3, 6),
                    blurRadius: 50,
                    spreadRadius: 0.0)
              ]),
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: localNavigator(),
            ))
      ],
    );
  }
}
