import 'package:muzik/models/category.dart';

class CategoryOperation{
  CategoryOperation._(){}
  static List<Category> getCategory(){
    return <Category>[
      Category('Top Songs', 'https://is1-ssl.mzstatic.com/image/thumb/Purple123/v4/0e/09/c4/0e09c462-c0cd-0a6c-d748-ea69b70442b7/source/256x256bb.jpg'),
      Category('MJ Hits', 'https://images.squarespace-cdn.com/content/v1/5616ac17e4b018d366f57f53/1626797617776-KUCUGCPY4USFQ3YFVP4U/256+LOGO+BLANK.png'),
      Category('JoJos', 'https://pbs.twimg.com/profile_images/631312464815067136/X9AqH9nO_400x400.jpg'),
      Category('BTS', 'https://i.pinimg.com/474x/eb/66/ec/eb66eca801a2bf5f6e8105e42a9eb3df.jpg'),
      Category('Bleach', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzKcfhRmG8KQPOl_cTi2eMe_8InmdKJJ8oHoeyamPDr9fOaXNqHRDkHF3mRxaobfIcJqY&usqp=CAU'),
      Category('Seventeen', 'https://cdn131.picsart.com/344125359027201.jpg?type=webp&to=crop&r=256'),
    ];
  }
}