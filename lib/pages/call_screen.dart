import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         decoration: const BoxDecoration(
        color: Colors.white
      ),
      padding:const EdgeInsets.all(6.0),
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
                    trailing: const Icon(Icons.phone, color : Color(0xff128C7E)),
                    subtitle: Row(
                      children: const <Widget>[
                        Padding(
                          padding : EdgeInsets.all(5.0),
                          child:
                        Icon(Icons.call_made_sharp, color :  Color(0xff128C7E), size:15)),
                        Text('Today,10:45 AM')
                      ]
                    )
           ),

           ListTile(
              leading: const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage('assets/images/Image_4.jpg'),
                      
                    ),
                    title: const Text(
                      "Babe",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(Icons.phone, color : Color(0xff128C7E)),
                    subtitle: Row(
                      children: const <Widget>[
                        Padding(
                          padding : EdgeInsets.all(5.0),
                          child:
                        Icon(Icons.call_made_sharp, color :  Colors.red, size:15)),
                        Text('Today,10:45 AM')
                      ]
                    )
           ),
           ListTile(
              leading: const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage('assets/images/Image_1.jpg'),
                      
                    ),
                    title: const Text(
                      "Mom",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(Icons.phone, color : Color(0xff128C7E)),
                    subtitle: Row(
                      children: const <Widget>[
                        Padding(
                          padding : EdgeInsets.all(5.0),
                          child:
                        Icon(Icons.call_made_sharp, color :  Color(0xff128C7E), size:15)),
                        Text('Today,10:45 AM')
                      ]
                    )
           )
         ]
       )
      ),
      floatingActionButton: FloatingActionButton(
              backgroundColor: const Color(0xff128C7E),
              child: const Icon(
                Icons.phone,
                color: Colors.white,
              ),
              onPressed: () {},
            )
    );
  }
}
