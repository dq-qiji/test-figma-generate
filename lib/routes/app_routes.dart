import 'package:c_qun_s_application2/presentation/ng_k_ng_nh_p_screen/ng_k_ng_nh_p_screen.dart';
import 'package:c_qun_s_application2/presentation/ng_k_ng_nh_p_screen/binding/ng_k_ng_nh_p_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String ngKNgNhPScreen = '/ng_k_ng_nh_p_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: ngKNgNhPScreen,
      page: () => NgKNgNhPScreen(),
      bindings: [
        NgKNgNhPBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => NgKNgNhPScreen(),
      bindings: [
        NgKNgNhPBinding(),
      ],
    )
  ];
}
