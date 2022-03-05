import 'package:flutter/material.dart';
import 'package:loan_asaan/pages/authentication/authentication.dart';
import 'package:loan_asaan/pages/clients/clients.dart';
import 'package:loan_asaan/pages/drivers/drivers.dart';
import 'package:loan_asaan/pages/overview/overview.dart';
import 'package:loan_asaan/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homePageRoute:
      return _getPageRoute(HomePage());
    case loanPageRoute:
      return _getPageRoute(AboutPage());
    case featuredPageRoute:
      return _getPageRoute(ResumePage());
    case facilitationPageRoute:
      return _getPageRoute(ResumePage());
    case appoinmentPageRoute:
      return _getPageRoute(ResumePage());
    case aboutPageRoute:
      return _getPageRoute(ResumePage());
    case authenticationPageRoute:
      return _getPageRoute(AuthenticationPage());
    default:
      return _getPageRoute(HomePage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
