import '../controller/ng_k_ng_nh_p_controller.dart';
import 'package:get/get.dart';

class NgKNgNhPBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NgKNgNhPController());
  }
}
