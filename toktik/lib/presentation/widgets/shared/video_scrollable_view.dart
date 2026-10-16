// kevin briam valencia perez 10230008
import 'package:flutter/material.dart';
import 'package:toktik/domian/entities/videos_post.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';
import 'package:toktik/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideosPost> videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideosPost videosPost = videos[index];
        return Stack(
          children: [
            SizedBox.expand(
              child: FullscreenPlayer(
                caption: videosPost.caption,
                videoUrl: videosPost.videoUrl,
              ),
            ),
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videosPost),
            ),
          ],
        );
      },
    );
  }
}
