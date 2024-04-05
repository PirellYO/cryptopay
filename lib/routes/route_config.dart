import 'package:crypto_pay/routes/route_error.dart';
import 'package:crypto_pay/view/signup_view.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(name: '/', page: () => SignupView()),
    GetPage(name: '/route_error', page: () => const RouteErrorView()),
  ];
}
