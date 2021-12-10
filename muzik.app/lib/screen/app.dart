import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:muzik/models/music.dart';
import 'package:muzik/screen/home.dart';
import 'package:muzik/screen/search.dart';
import 'package:muzik/screen/yourlibrary.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  var screens = [];

  Music? music;
  AudioPlayer _audioPlayer = new AudioPlayer();

  bool isPlaying = false;

  miniPlayer(Music? music, {bool stop = false}) {
    this.music = music;
    if(music == null){
      return const SizedBox();
    }
    if(stop){
      isPlaying = false;
      _audioPlayer.stop();
    }
    setState(() {});
    Size deviceSize = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      color: Colors.blueGrey,
      width: deviceSize.width,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(music.image, fit: BoxFit.cover),
          Text(music.name, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
          Text(music.desc),
          IconButton(
              onPressed: () async{
                isPlaying = !isPlaying;
                if(isPlaying){
                  await _audioPlayer.play(music.audioURL);
                }
                else{
                  await _audioPlayer.pause();
                }
                setState(() {});
              },
              icon: isPlaying
                  ? const Icon(Icons.pause, color: Colors.white)
            : const Icon(Icons.play_arrow),color: Colors.white),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    screens = [
      Home(miniPlayer),
      const Search(),
      Library(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: screens[index],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          miniPlayer(music),
          CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: index,
            height: 55.0,
            items: const <Widget>[
              Icon(Icons.home_outlined, size: 30, color: Colors.black),
              Icon(Icons.search, size: 30, color: Colors.black),
              Icon(Icons.library_add_outlined, size: 30, color: Colors.black),
            ],
            color: Colors.white,
            backgroundColor: Colors.transparent,
            animationCurve: Curves.easeInOutCubic,
            animationDuration: const Duration(milliseconds: 200),
            onTap: (index) {
              setState(() {
                this.index = index;
              });
            },
            letIndexChange: (index) => true,
          ),
        ],
      ),
    );
  }
}
