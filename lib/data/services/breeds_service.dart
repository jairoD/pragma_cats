import 'package:pragma_cats/data/repositories/breeds_repository.dart';
import 'package:pragma_cats/data/services/http_service.dart';
import 'package:pragma_cats/models/cat_model.dart';
import 'package:pragma_cats/models/response_model.dart';

class BreedsService {
  final HttpService _httpService;

  BreedsService({required HttpService httpService})
      : _httpService = httpService;
  Future<List<CatModel>?> listCatBreeds(int page) async {
    try {
      final ResponseModel? res =
          await BreedsRepository(httpService: _httpService).listCatBreeds(page);
      if (res != null) {
        List<dynamic> aux = res.data;
        return aux.map((e) => CatModel.fromMap(e)).toList();
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  Future<List<CatModel>?> search(String search) async {
    try {
      final ResponseModel? res =
          await BreedsRepository(httpService: _httpService).searcch(search);
      if (res != null) {
        List<dynamic> aux = res.data;
        return aux.map((e) => CatModel.fromMap(e)).toList();
      }
    } catch (e) {
      return null;
    }
    return null;
  }
}
