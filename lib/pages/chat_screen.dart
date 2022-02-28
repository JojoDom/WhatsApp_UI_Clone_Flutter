import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/chats.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({ Key? key }) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder : (context, i) => Column(
        children: <Widget>[
         const SizedBox(height:10.0),
          ListTile (
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(dummyData[i].image)
              
            ),
            
            title: 
                Text(
                        dummyData[i].name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      
                        
            trailing: Text(
                        dummyData[i].time,
                        style: const TextStyle(color: Colors.grey, fontSize: 14.0),
                      ),
            subtitle: Container(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      dummyData[i].message,
                      style: const TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                  ),
          )
        ],
      )

      
    );
  }
}