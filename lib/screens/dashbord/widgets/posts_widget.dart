import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intagram_ui_teste/models/post_model.dart';

class PostWidget extends StatefulWidget {
  final List<PostModel> posts;
  const PostWidget({super.key, required this.posts});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: ListView.builder(
        itemCount: widget.posts.length,
        itemBuilder: (context, index) {
          PostModel item = widget.posts[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              clipBehavior: Clip.none,
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    NetworkImage(item.userImage),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  item.username,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const Icon(Icons.more_horiz)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: NetworkImage(item.postImage),
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/vectores/Like.svg'),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: SvgPicture.asset(
                                          'assets/vectores/Comment.svg'),
                                    ),
                                    SvgPicture.asset(
                                        'assets/vectores/Messanger.svg'),
                                  ],
                                ),
                              ),
                              SvgPicture.asset('assets/vectores/Save.svg'),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '${item.username}  ',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: item.postDescription,
                                    style: const TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.grey.shade500,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
