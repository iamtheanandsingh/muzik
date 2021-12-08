import 'package:flutter/material.dart';
import 'package:muzik/models/category.dart';
import 'package:muzik/services/category_operations.dart';
import 'package:muzik/services/music_operations.dart';
import 'package:muzik/models/music.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  createAppBar(String message) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(message),
      actions: const [
        Padding(
            padding: EdgeInsets.only(right: 20), child: Icon(Icons.settings)),
      ],
    );
  }

  createCategory(Category category) {
    return Container(
        color: Colors.blueGrey.shade400,
        child: Row(
          children: [
            Image.network(category.imageURL, fit: BoxFit.cover),
            Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(category.name,
                    style: const TextStyle(color: Colors.white)))
          ],
        ),
    );
  }

  List<Widget> createListOfCategories() {
    List<Category> categoryList = CategoryOperation.getCategory();
    List<Widget> categories = categoryList
        .map<Widget>((Category category) => createCategory(category))
        .toList();
    return categories;
  }

  createGrid() {
    return Container(
        padding: const EdgeInsets.all(10),
        height: 210,
        child: GridView.count(
          childAspectRatio: 7 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: createListOfCategories(),
        )
    );
  }

  createMusic(Music music) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12, 12, 12),
      child: Column(
        children: [
          SizedBox(
              height: 200,
              width: 200,
              child: Image.network(music.image, fit: BoxFit.cover)),
          Text(music.name, style: const TextStyle(color: Colors.white)),
          Text(music.desc, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  createMusicList(String label) {
    List<Music> musicList = MusicOperations.getMusic();
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
              height: 270,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return createMusic(musicList[index]);
                },
                itemCount: musicList.length,
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          child: Column(
            children: [
              createAppBar("Welcome"),
              const SizedBox(height: 5),
              createGrid(),
              createMusicList('Music For You'),
              createMusicList('Popular Artists')
            ],
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blueGrey.shade100,
                Colors.black,
                Colors.black,
                Colors.black
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
    );
  }
}
