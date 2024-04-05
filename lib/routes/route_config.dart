import 'package:crypto_pay/routes/route_error.dart';
import 'package:crypto_pay/view/notification_view.dart';
import 'package:crypto_pay/view/transaction_view.dart';
import 'package:crypto_pay/view/login/phone_login_view.dart';
import 'package:crypto_pay/view/login/email_login_view.dart';
import 'package:crypto_pay/view/navigation_view.dart';
import 'package:crypto_pay/view/signup/email_signup_view.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(name: '/', page: () => SignupView()),
    GetPage(name: '/navigation_view', page: () => const NavigationView()),
    GetPage(name: '/login_view', page: () => LoginView()),
    GetPage(name: '/phone_login_view', page: () => PhoneLoginView()),
    GetPage(name: '/transaction_view', page: () => const TransactionView()),
    GetPage(name: '/notification_view', page: () => const NotificationView()),
    GetPage(name: '/route_error', page: () => const RouteErrorView()),
  ];
}
