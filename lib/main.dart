import 'package:dio/dio.dart';
import 'package:cuaca/models/brand_model.dart';

class BrandService {
  Future<brand_models> tampilkanBrand() async {
    try {
      var response = await Dio().get(
          'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline');
      return brand_models.fromJson({"data": response.data});
    } on DioError catch (e) {
      // ignore: avoid_print
      print(e);
      return brand_models.fromJson({});
    }
  }
}