import 'package:crypto_pay/routes/route_error.dart';
import 'package:crypto_pay/view/home_view.dart';
import 'package:get/get.dart';


class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(name: '/', page: () =>  HomeView()),
    GetPage(name: '/route_error', page: () => const RouteErrorView()),

  ];
}
