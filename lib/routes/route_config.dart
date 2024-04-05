import 'package:crypto_pay/routes/route_error.dart';
import 'package:crypto_pay/view/login/phone_login_view.dart';
import 'package:crypto_pay/view/login/email_login_view.dart';
import 'package:crypto_pay/view/signup/email_signup_view.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(name: '/', page: () => SignupView()),
    GetPage(name: '/login_view', page: () => LoginView()),
    GetPage(name: '/phone_login_view', page: ()=>PhoneLoginView()),
    GetPage(name: '/route_error', page: () => const RouteErrorView()),
  ];
}
