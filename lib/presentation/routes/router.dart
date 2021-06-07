import 'package:auto_route/annotations.dart';
import 'package:todo/presentation/core/splash_page.dart';
import 'package:todo/presentation/sign_in/sign_in_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: "Page,Route",
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
  ],
)
class $AppRouter {}
