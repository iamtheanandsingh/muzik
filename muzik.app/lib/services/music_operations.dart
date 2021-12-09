import 'package:muzik/models/music.dart';

class MusicOperations{
    static List<Music> getMusic(){
      return <Music>[
        Music('BTS',
              'https://static.wikia.nocookie.net/the-bangtan-boys/images/0/05/Map_of_the_Soul_7_The_Journey_Regular_Edition.jpg/revision/latest?cb=20200528031633',
              'Map Of Soul; Journey',
        'https://music.youtube.com/watch?v=VD2D7HcI4S8&list=RDAMVMVD2D7HcI4S8'),
        Music('Ateez',
              'https://i.pinimg.com/originals/1b/4c/40/1b4c403c71d27b7b5e3e94d987358a15.jpg',
              'Treasure',
        'https://music.youtube.com/watch?v=05oOopLedWY&feature=share'),
        Music('Seventeen',
              'https://static.wikia.nocookie.net/girlgroup/images/8/8a/An_Ode_digital_cover.jpg/revision/latest?cb=20190916091132',
              'An Ode',
        'https://music.youtube.com/watch?v=oxr-iKJEgAU&list=RDAMVMoxr-iKJEgAU'),
        Music('BlackPink',
                'https://i.pinimg.com/originals/47/85/75/478575020faa80e850cab8440584fdb7.jpg',
                'Vylette Bloom',
        'https://music.youtube.com/watch?v=IPzouyj7FLA&list=RDAMVMIPzouyj7FLA'),
        Music('VALORANT, Grabbitz',
              'https://i.scdn.co/image/ab67616d0000b27308074b6de9b696b218c4b57a',
              'Die For You',
        'https://music.youtube.com/watch?v=lolzJzmv8Ig&list=RDAMVMlolzJzmv8Ig')
      ];
    }
  }
