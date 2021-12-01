import 'package:muzik/models/category.dart';

class CategoryOperation{
  CategoryOperation._(){}
  static List<Category> getCategory(){
    return <Category>[
      Category('Top Songs', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fappadvice.com%2Fapp%2Ftop-songs-music-discovery%2F914351673&psig=AOvVaw3UGxBGjN2pq6lTedEPaiqd&ust=1638379421845000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJDO_ZjNwPQCFQAAAAAdAAAAABAD'),
      Category('MJ Hits', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.podchaser.com%2Fpodcasts%2Fmichael-jackson-became-my-life-1144017&psig=AOvVaw3vgVs-UFB2ANpf6-J0czCp&ust=1638379545710000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJD8pczNwPQCFQAAAAAdAAAAABAD'),
      Category('JoJos', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.deviantart.com%2Fedgina36%2Fart%2FJoJo-no-Kimyou-na-Bouken-Ougon-no-Kaze-Folder-Icon-759916401&psig=AOvVaw2VKCnUXYfBfmy-yVt_yaAV&ust=1638379610524000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJjLpo3OwPQCFQAAAAAdAAAAABAD'),
    ];
  }
}