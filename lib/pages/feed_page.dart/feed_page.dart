import 'package:flutter/material.dart';
import 'package:pragma_cats/components/card_component.dart';
import 'package:pragma_cats/components/search_component.dart';
import 'package:pragma_cats/data/services/breeds_service.dart';
import 'package:pragma_cats/data/services/http_service.dart';
import 'package:pragma_cats/models/cat_model.dart';

class FeedPage extends StatefulWidget {
  final HttpService httpService;
  const FeedPage({super.key, required this.httpService});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  late HttpService _httpService;
  final ScrollController _scrollController = ScrollController();
  final List<CatModel> cats = [];
  var page = 0;
  final myController = TextEditingController();

  Future<void> fetch() async {
    final response =
        await BreedsService(httpService: _httpService).listCatBreeds(page);
    if (response != null) {
      setState(() {
        cats.addAll(response);
        page++;
      });
    }
  }

  Future<void> search(String search) async {
    final response =
        await BreedsService(httpService: _httpService).search(search);
    if (response != null) {
      setState(() {
        cats.clear();
        cats.addAll(response);
      });
    }
  }

  void _onScroll() {
    if (_scrollController.position.atEdge) {
      if (_scrollController.position.pixels == 0) {¿
      } else {
        fetch();
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _httpService = widget.httpService;
    fetch();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cat Breeds'),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            children: [
              SearchComponent(
                controller: myController,
                iconButton: IconButton(
                    onPressed: () {
                      if (myController.text == '') {
                        setState(() {
                          cats.clear();
                          page = 0;
                          fetch();
                        });
                      } else {
                        search(myController.text);
                      }
                    },
                    icon: const Icon(Icons.search)),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  child: ListView.separated(
                      cacheExtent: 100,
                      addAutomaticKeepAlives: true,
                      controller: _scrollController,
                      itemBuilder: (context, index) => CardComponent(
                            key: ValueKey(cats[index].id),
                            catInfo: cats[index],
                          ),
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 10,
                          ),
                      itemCount: cats.length))
            ],
          ),
        ));
  }
}
