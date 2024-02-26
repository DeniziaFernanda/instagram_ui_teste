import 'package:flutter/material.dart';
import 'package:intagram_ui_teste/models/story_model.dart';

class StoryWidget extends StatefulWidget {
  final List<StoryModel> usersimages;
  const StoryWidget({super.key, required this.usersimages});

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.usersimages.length,
        itemBuilder: (context, index) {
          StoryModel item = widget.usersimages[index];
          return Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: Container(
                  width: 95,
                  height: 95,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFFBAA47),
                          Color(0xFFD91A46),
                          Color(0xFFA60F93),
                        ],
                      )),
                ),
              ),
              Center(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      width: 85,
                      height: 85,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage(item.image),
                            fit: BoxFit.cover),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 114),
                child: Text(
                  item.name,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}