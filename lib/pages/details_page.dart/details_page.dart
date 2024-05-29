// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:pragma_cats/models/cat_model.dart';

class DetailsPage extends StatelessWidget {
  final CatModel catInfo;
  const DetailsPage({
    super.key,
    required this.catInfo,
  });

  @override
  Widget build(BuildContext context) {
    print(catInfo.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text(catInfo.name),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                child: Image.network(
                  fit: BoxFit.cover,
                  'https://cdn2.thecatapi.com/images/${catInfo.reference_image_id}.jpg',
                  errorBuilder:
                      (BuildContext context, Object error, dynamic stackTrace) {
                    return Image.network(
                      'https://cdn2.thecatapi.com/images/${catInfo.reference_image_id}.png',
                      errorBuilder: (context, error, stackTrace) => Center(
                        child: Icon(Icons.error),
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Text(
                        catInfo.description,
                        style: const TextStyle(fontSize: 22),
                      ),
                      Wrap(
                        spacing: 20,
                        children: [
                          Chip(
                            label: Text('Origin: ${catInfo.origin}'),
                          ),
                          Chip(
                            label:
                                Text('Intelligence: ${catInfo.intelligence}'),
                          ),
                          Chip(
                            label:
                                Text('Adaptability: ${catInfo.adaptability}'),
                          ),
                          Chip(
                            label: Text('Life Span: ${catInfo.life_span}'),
                          ),
                          Chip(
                            label:
                                Text('Dog friendly: ${catInfo.dog_friendly}'),
                          ),
                          Chip(
                            label: Text(
                                'Child friendly: ${catInfo.child_friendly}'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
