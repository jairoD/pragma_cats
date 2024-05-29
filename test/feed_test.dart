import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pragma_cats/models/response_model.dart';
import 'package:pragma_cats/pages/feed_page.dart/feed_page.dart';

import 'httpService_test.mocks.dart';

Future<void> main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  List<dynamic> cats = [
    {
      'weight': {'imperial': '8 - 15', 'metric': '4 - 7'},
      'id': 'chee',
      'name': 'Cheeto',
      'vetstreetUrl': '',
      'temperament': 'Affectionate, Gentle, Intelligent, Social',
      'origin': 'United States',
      'countryCodes': '',
      'countryCode': '',
      'description':
          'The Cheetoh has a super affectionate nature and real love for their human companions; they are intelligent with the ability to learn quickly. You can expect that a Cheetoh will be a fun-loving kitty who enjoys playing, running, and jumping through every room in your house.',
      'life_span': '12 - 14',
      'indoor': 0,
      'altNames': '',
      'adaptability': 5,
      'affectionLevel': 0,
      'child_friendly': 4,
      'dog_friendly': 5,
      'energyLevel': 0,
      'grooming': 1,
      'healthIssues': 0,
      'intelligence': 5,
      'sheddingLevel': 0,
      'socialNeeds': 0,
      'strangerFriendly': 0,
      'vocalisation': 5,
      'experimental': 0,
      'hairless': 0,
      'natural': 0,
      'rare': 0,
      'rex': 0,
      'suppressedTail': 0,
      'shortLegs': 0,
      'wikipediaUrl': '',
      'hypoallergenic': 0,
      'referenceImageId': '',
      'image': null,
      'reference_image_id': 'IFXsxmXLm',
    }
  ];

  final httpMockService = MockHttpService();
  Widget app() {
    return MaterialApp(
      home: FeedPage(
        httpService: httpMockService,
      ),
    );
  }

  testWidgets('test feed page', (widgetTester) async {
    var responseModel =
        ResponseModel(data: cats, statusCode: 200, message: 'Ok', succes: true);
    when(httpMockService.get(any)).thenAnswer((_) async => responseModel);
    await widgetTester.pumpWidget(app());
    expect(find.text('Cat Breeds'), findsOneWidget);
    await widgetTester.pump();
    expect(find.text('Cheeto'), findsOneWidget);
    await widgetTester.pump();
  });
}
