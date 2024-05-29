import 'package:pragma_cats/data/services/http_service.dart';
import 'package:pragma_cats/models/request_model.dart';
import 'package:pragma_cats/models/response_model.dart';

class BreedsRepository {
  final HttpService _httpService;

  BreedsRepository({required HttpService httpService})
      : _httpService = httpService;
  Future<ResponseModel?> listCatBreeds(int page) async {
    try {
      return await _httpService.get(RequestModel(
          path: '/v1/breeds', queryParams: {'limit': '10', 'page': '$page'}));
    } catch (e) {
      return null;
    }
  }

  Future<ResponseModel?> searcch(String search) async {
    try {
      return await _httpService.get(
          RequestModel(path: '/v1/breeds/search', queryParams: {'q': search}));
    } catch (e) {
      return null;
    }
  }
}
