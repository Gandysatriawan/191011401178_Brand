import 'package:cuaca/models/brand_model.dart';
import 'package:flutter/material.dart';
import 'package:cuaca/services/brand_service.dart';

class BrandProvider extends ChangeNotifier {
  late brand_models brandModel = brandModel;
  final BrandService _BrandService = BrandService();

  tampilkanBrand() async {
    brandModel = await _BrandService.tampilkanBrand();
    // ignore: avoid_print
    print(brandModel.data!.length);
    notifyListeners();
  }

  BrandProvider() {
    tampilkanBrand();
  }
}