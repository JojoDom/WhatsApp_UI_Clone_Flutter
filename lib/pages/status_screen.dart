import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/store_page_view.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
    body:
    Container(
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Colors.white,
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Stack(
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor : Colors.grey,
                      backgroundImage: AssetImage('assets/images/Image_4.jpg')
                      
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 1.0,
                      child: Container(
                        height: 20,
                        width: 20,
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                ),
                title: const Text(
                  "My Status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text("Tap to add status update"),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Viewed updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
           Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage('assets/images/Image_3.jpg'),
                      
                    ),
                    title: const Text(
                      "Sylvia",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text("Today, 20:16 PM"),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoryPageView())),
                  ),
                ],
              ),
            ),
          ),
          
        ]
      ),
   
     ),
    
         

           floatingActionButton : Column(
             mainAxisAlignment: MainAxisAlignment.end,
             children : [
                 FloatingActionButton(
              backgroundColor: Colors.white10,
              heroTag: null,
              child: const Icon(
                Icons.edit,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            const SizedBox(height:5.0),

             FloatingActionButton(
              backgroundColor: const Color(0xff128C7E),
              heroTag: null,
              child: const Icon(
                Icons.camera_alt_rounded,
                color: Colors.white,
              ),
              onPressed: () {},
            ),


             ]
           )
      );
  }
}