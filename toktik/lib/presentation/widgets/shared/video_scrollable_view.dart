// kevin briam valencia perez 10230008
import 'package:flutter/material.dart';
import 'package:toktik/domian/entities/videos_post.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideosPost> videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      children: [
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.pink),
        Container(color: Colors.yellow),
        Container(color: Colors.tealAccent),
      ],
    );
  }
}
