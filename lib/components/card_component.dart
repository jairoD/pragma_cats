import 'package:flutter/material.dart';
import 'package:pragma_cats/models/cat_model.dart';
import 'package:pragma_cats/pages/details_page.dart/details_page.dart';

class CardComponent extends StatefulWidget {
  final CatModel catInfo;
  const CardComponent({super.key, required this.catInfo});

  @override
  State<CardComponent> createState() => _CardComponentState();
}

class _CardComponentState extends State<CardComponent>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.catInfo.name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailsPage(catInfo: widget.catInfo),
                              ))
                        },
                    icon: const Icon(Icons.keyboard_arrow_right))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://cdn2.thecatapi.com/images/${widget.catInfo.reference_image_id}.jpg',
                errorBuilder:
                    (BuildContext context, Object error, dynamic stackTrace) {
                  return Image.network(
                    'https://cdn2.thecatapi.com/images/${widget.catInfo.reference_image_id}.png',
                    errorBuilder: (context, error, stackTrace) => Center(
                      child: Icon(Icons.error),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Chip(
                  label: Text('Origin: ${widget.catInfo.origin}'),
                ),
                const SizedBox(width: 15),
                Chip(
                  label: Text('Intelligence: ${widget.catInfo.intelligence}'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
