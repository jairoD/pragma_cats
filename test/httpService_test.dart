import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pragma_cats/data/services/http_service.dart';
import 'package:pragma_cats/models/request_model.dart';
import 'package:pragma_cats/models/response_model.dart';

import 'httpService_test.mocks.dart';

@GenerateMocks([HttpService])
void main() {
  final httpMockService = MockHttpService();
  test('test 400', () async {
    var responseModel = ResponseModel(
        data: {}, statusCode: 400, message: 'Error', succes: false);
    when(httpMockService.get(any)).thenAnswer((_) async => responseModel);
    var requestModel = RequestModel(method: HTTPMethods.get, path: '/breeds');
    var response = await httpMockService.get(requestModel);
    expect(response, isA<ResponseModel>());
    expect(response?.statusCode, 400);
  });
  test('test 200', () async {
    var responseModel =
        ResponseModel(data: {[]}, statusCode: 200, message: 'Ok', succes: true);
    when(httpMockService.get(any)).thenAnswer((_) async => responseModel);
    var requestModel = RequestModel(method: HTTPMethods.get, path: '/breeds');
    var response = await httpMockService.get(requestModel);
    expect(response, isA<ResponseModel>());
    expect(response?.statusCode, 200);
  });
}
