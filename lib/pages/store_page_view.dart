import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  StoryPageView({ Key? key }) : super(key: key);
  // ignore: unused_field
  final _storyController = StoryController();

  @override
  Widget build(BuildContext context) {
     final controller = StoryController();
     final List<StoryItem> storyItems = [
       StoryItem.text(title : "It's only a fool that says in his heart that there is no God",
       backgroundColor : Colors.pink
       ),
       
       StoryItem.pageProviderImage(
         const AssetImage('assets/images/Status_1.png'),
          imageFit : BoxFit.contain,
          
       ),
       
     ];
    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: controller,
        inline: false,
        repeat: true,
       // onVerticalSwipeComplete 
      ),
    );
  }
}