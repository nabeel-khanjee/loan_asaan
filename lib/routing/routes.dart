const rootRoute = "/";

const homePageDisplayName = "Home";
const homePageRoute = "/home";

const loanPageDisplayName = "Loan";
const loanPageRoute = "/loan";

const featurePageDisplayName = "Featured Services";
const featuredPageRoute = "/featured";

const facilitationPageDisplayName = "Facilitation Centers";
const facilitationPageRoute = "/facilitation";

const appoinmentPageDisplayName = "Appoinment";
const appoinmentPageRoute = "/appoinment";
const aboutPageDisplayName = "About";
const aboutPageRoute = "/about";

const authenticationPageDisplayName = "Login";
const authenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(homePageDisplayName, homePageRoute),
  MenuItem(loanPageDisplayName, loanPageRoute),
  MenuItem(featurePageDisplayName, featuredPageRoute),
  MenuItem(facilitationPageDisplayName, facilitationPageRoute),
  MenuItem(appoinmentPageDisplayName, appoinmentPageRoute),
  MenuItem(aboutPageDisplayName, aboutPageRoute),
  
 MenuItem(authenticationPageDisplayName, authenticationPageRoute),
];
