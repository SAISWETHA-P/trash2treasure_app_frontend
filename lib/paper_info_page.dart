import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PaperInfoPage extends StatelessWidget {
  final String videoUrl = "https://www.youtube.com/watch?v=jAqVxsEgWIM"; // YouTube video link

  @override
  Widget build(BuildContext context) {
    final videoId = YoutubePlayer.convertUrlToId(videoUrl); // Extract video ID for YouTube player

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
        centerTitle: true, // Center the title
        title: Row(
          mainAxisSize: MainAxisSize.min, // Center within available space
          children: [
            Icon(Icons.description, color: Colors.white),
            SizedBox(width: 8),
            Text("Paper"),
          ],
        ),
        backgroundColor: Colors.green,
        actions: [
          Icon(Icons.account_circle),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Quote Section
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "“We need to address our Nation's mounting garbage problem by generating less garbage, particularly paper waste.” – Wendell H. Ford",
                  style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(height: 20),
              // Subtitle Section
              Text(
                "How Improper Paper Disposal Harms Our Planet?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // Bullet Points
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• Leads to deforestation."),
                  Text("• Wastes water resources."),
                  Text("• Releases CO₂ when burned."),
                  Text("• Emits methane in landfills."),
                ],
              ),
              SizedBox(height: 20),
              // Image and Subtitle
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Take a look at how the paper waste collected from households is recycled.",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    'assets/images/paper.jpeg',
                    width: 100, // Larger size for the image
                    height: 75,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              SizedBox(height: 20),
              // YouTube Video Section
              videoId != null
                  ? YoutubePlayer(
                controller: YoutubePlayerController(
                  initialVideoId: videoId!,
                  flags: YoutubePlayerFlags(
                    autoPlay: false,
                    mute: false,
                  ),
                ),
                showVideoProgressIndicator: true,
              )
                  : Center(child: Text("Error loading video")),
            ],
          ),
        ),
      ),
    );
  }
}
