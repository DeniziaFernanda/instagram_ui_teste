import 'package:intagram_ui_teste/models/post_model.dart';

class PostService {
  static Future<List<PostModel>> getAllPosts() async {
    List<PostModel> posts = [];

    posts.addAll([
        PostModel(
        id: 1,
        userImage: 'https://www.itcadre.com/assets/JimH_Headshot.jpg',
        username: 'JimH_H120',
        postDescription: 'Tokyo is the most popular',
        postImage:
            'https://c0.wallpaperflare.com/preview/900/707/759/shinjuku-japan-night-tokyo.jpg',
      ),
      PostModel(
        id: 2,
        userImage: 'https://www.itcadre.com/assets/Rick_Headshot.jpg',
        username: 'Rickkk0',
        postDescription:
            'Cristiano Ronaldo será el mejor pagado de la historia, deja el United en enero',
        postImage:
            'https://www.elnacional.cat/uploads/s1/37/21/98/03/cristiano-ronaldo-portugal-espana-efe.jpeg',
      ),
      PostModel(
        id: 3,
        userImage: 'https://www.itcadre.com/assets/Maria_Headshot2.jpg',
        username: 'Maria_34',
        postDescription:
            'A Holanda, também conhecida como Países Baixos (The Netherlands em inglês), é um país europeu pequeno, possui um pouco mais de 17 milhões de habitantes',
        postImage:
            'https://tanomundo.com/wp-content/uploads/2022/07/tudo-sobre-holanda-scaled.jpg.webp',
      ),
      PostModel(
        id: 4,
        userImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkGOg0Hx5p33QwokRbvD7-8WMVrtBFHCrZxwzqH-GOZJ5BcYbqprsEpx0ww40Yg8YB5hQ&usqp=CAU',
        username: 'Mmarcos',
        postDescription:
            'A aurora boreal é um fenômeno atmosférico que acontece somente no norte do planeta e é caracterizado pela formação de desenhos luminosos e coloridos no céu.',
        postImage:
            'https://static.mundoeducacao.uol.com.br/mundoeducacao/2022/07/aurora-boreal-canada.jpg',
      )
    ]);

    return posts;
  }
}