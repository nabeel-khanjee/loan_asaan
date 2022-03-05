import 'package:flutter/cupertino.dart';
import 'package:loan_asaan/constants/controllers.dart';
import 'package:loan_asaan/routing/router.dart';
import 'package:loan_asaan/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: homePageRoute,
    );
