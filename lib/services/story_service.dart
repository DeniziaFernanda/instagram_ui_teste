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
        id: 2,
        image: "https://platinaline.com/wp-content/uploads/2021/07/annajoyce_55744835_131972444546410_6642497573871775725_n-e1557826751439.jpg", 
        name: "Anna Joyce"
        ),
        StoryModel(
        id: 3,
        image: "https://platinaline.com/wp-content/uploads/2021/07/annajoyce_55744835_131972444546410_6642497573871775725_n-e1557826751439.jpg", 
        name: "Anna Joyce"
        ),

        StoryModel(
        id: 4,
        image: "https://platinaline.com/wp-content/uploads/2021/07/annajoyce_55744835_131972444546410_6642497573871775725_n-e1557826751439.jpg", 
        name: "Anna Joyce"
        ),
        StoryModel(
        id: 5,
        image: "https://platinaline.com/wp-content/uploads/2021/07/annajoyce_55744835_131972444546410_6642497573871775725_n-e1557826751439.jpg", 
        name: "Anna Joyce"
        ),

        StoryModel(
        id: 6,
        image: "https://platinaline.com/wp-content/uploads/2021/07/annajoyce_55744835_131972444546410_6642497573871775725_n-e1557826751439.jpg", 
        name: "Anna Joyce"
        ),
        StoryModel(
        id: 7,
        image: "https://platinaline.com/wp-content/uploads/2021/07/annajoyce_55744835_131972444546410_6642497573871775725_n-e1557826751439.jpg", 
        name: "Anna Joyce"
        )
    ]);

    return stories;
  }
}