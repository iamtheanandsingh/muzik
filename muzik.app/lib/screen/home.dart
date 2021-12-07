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
        color: Colors.blueGrey,
        child: Row(
          children: [
            Image.network(category.imageURL, fit: BoxFit.cover),
            Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(category.name,
                    style: const TextStyle(color: Colors.white)))
          ],
        ));
  }

  List<Widget> createListOfCategories() {
    List<Category> categoryList = CategoryOperation.getCategory();
    List<Widget> categories = categoryList
        .map<Widget>((Category category) => createCategory(category)).toList();
    return categories;
  }

  createGrid() {
    return Container(
        height: 50,
        padding: const EdgeInsets.all(5),
        child: GridView.count(
          childAspectRatio: 5 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: createListOfCategories(),
        )
    );
  }

  createMusic(Music music) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          SizedBox(
              height: 200,
              width: 200,
              child: Image.network(music.image, fit: BoxFit.cover)),
          Text(music.name),
          Text(music.desc),
        ],
      ),
    );
  }

  createMusicList(String label) {
    List<Music> musicList = MusicOperations.getMusic();
    return SizedBox(
        height: 400,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            return createMusic(musicList[index]);
          },
          itemCount: musicList.length,
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            createAppBar("Good Morning"),
            const SizedBox(height: 5),
            createGrid(),
            createMusicList('Music For You')
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
    );
  }
}
