import 'package:dio/dio.dart';
import 'package:getx_project/getX_lesson2/data/model/joke_model.dart';

class ApiService {
  Future getJokes() async {
    final dio = Dio();
    final response =
        await dio.get('https://official-joke-api.appspot.com/jokes/ten');
    if (response.statusCode == 200) {
      List jokes =
          response.data.map((json) => JokeModel.fromJson(json)).toList();
      // print(" +==============${jokes}");
      return jokes;
    }
  }
}
