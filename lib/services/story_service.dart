import 'package:intagram_ui_teste/models/story_model.dart';

class StoryService {
  static Future<List<StoryModel>> getAllStory() async {
    List<StoryModel> stories = [];

    stories.addAll([
       StoryModel(
        id: 1,
        image: "https://platinaline.com/wp-content/uploads/2021/07/annajoyce_55744835_131972444546410_6642497573871775725_n-e1557826751439.jpg", 
        name: "Anna Joyce"
        ),
        StoryModel(
        id: 2,
        image: "https://images.wsj.net/im-689715?width=700&size=1.5023474178403755", 
        name: "Justin Bieber"
        ),

        StoryModel(
        id: 3,
        image: "https://cdn.apollo.audio/one/media/64ca/78d8/a56f/7c05/a26c/78bb/anne-marie-singer.jpg?quality=80&format=jpg&crop=0,0,539,960&resize=crop", 
        name: "Anna Marie"
        ),
        StoryModel(
        id: 4,
        image: "https://targeting.ao/wp-content/uploads/2023/09/transferir-1.jpg", 
        name: "Gilmario Vemba"
        ),

        StoryModel(
        id: 5,
        image: "https://media1.popsugar-assets.com/files/thumbor/Au0cyL3pIK546uYDlbGvbM6Pty4=/fit-in/1584x1056/top/filters:format_auto():upscale()/2018/02/06/004/n/1922398/tmp_simaD1_a3fed0bdf843dd22_GettyImages-884133414.jpg", 
        name: "Sofia Carson"
        ),
        StoryModel(
        id: 6,
        image: "https://cdn-5be86f13f911c81bb8517500.closte.com/wp-content/uploads/2021/09/screenshot-20210907-122335-instagram-1-e1631024971536.jpg.webp", 
        name: "Gerilson Insrael"
        ),

        StoryModel(
        id: 7,
        image: "https://ca-times.brightspotcdn.com/dims4/default/109a987/2147483647/strip/true/crop/3533x4824+0+0/resize/1200x1638!/format/webp/quality/75/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F62%2F77%2F6150892d42999e3050b057b59186%2Fla-en-giveon-grammys-issue-086.JPG", 
        name: "Giveon"
        ),
        StoryModel(
        id: 8,
        image: "https://cdn-5be86f13f911c81bb8517500.closte.com/wp-content/uploads/2020/03/foto-anselmo-ralph-momentos.png.webp", 
        name: "Anselmo Ralph"
        )
    ]);

    return stories;
  }
}