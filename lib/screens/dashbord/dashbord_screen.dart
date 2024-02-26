import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intagram_ui_teste/models/post_model.dart';
import 'package:intagram_ui_teste/models/story_model.dart';
import 'package:intagram_ui_teste/screens/dashbord/widgets/posts_widget.dart';
import 'package:intagram_ui_teste/screens/dashbord/widgets/storys_widget.dart';
import 'package:intagram_ui_teste/services/post_service.dart';
import 'package:intagram_ui_teste/services/story_service.dart';

class DashbordScreen extends StatefulWidget {
  const DashbordScreen({super.key});

  @override
  State<DashbordScreen> createState() => _DashbordState();
}

class _DashbordState extends State<DashbordScreen> {
  List<StoryModel> usersimages = [];
  List<PostModel> posts = [];

  Future<void> loadingAllData() async {
    try {
      usersimages = await StoryService.getAllStory();
      posts = await PostService.getAllPosts();
      setState(() {});
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("something is wrong, please try later"),
          backgroundColor: Colors.blue,
        ),
      );
    }
  }

  @override
  void initState() {
    loadingAllData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 0,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/vectores/Camera Icon.svg'),
                      SvgPicture.asset('assets/images/Instagram Logo.svg',
                          height: 30),
                      Row(
                        children: [
                          SvgPicture.asset('assets/vectores/IGTV.svg'),
                          const SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset('assets/vectores/Messanger.svg'),
                        ],
                      )
                    ],
                  ),
                ),
              ])),
          StoryWidget(usersimages: usersimages),
          PostWidget(posts: posts)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/vectores/Icon f (4).svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/vectores/Icon f (3).svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/vectores/Icon f (2).svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/vectores/Icon f (1).svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/image profile.jpg'),
                  )),
            ),
            label: '',
          ),
        ],
      ),
    ));
  }
}
