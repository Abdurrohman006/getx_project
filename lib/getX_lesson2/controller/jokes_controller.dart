import 'package:get/get.dart';
import 'package:getx_project/getX_lesson2/service/api_service.dart';

class JokesController extends GetxController {
  JokesController() {
    getJokes();
  }

  var isloading = false.obs;
  var jokes = [].obs;

  getJokes() async {
    changeLoading();
    jokes.value = await ApiService().getJokes();
    changeLoading();
  }

  changeLoading() {
    isloading.value = !isloading.value;
  }
}
