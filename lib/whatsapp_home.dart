import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/call_screen.dart';
import 'package:flutter_application_3/pages/camera_screen.dart';
import 'package:flutter_application_3/pages/chat_screen.dart';
import 'package:flutter_application_3/pages/status_screen.dart';


class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({ Key? key }) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> 
   with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool showFab = true;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar( 
        backgroundColor: const Color(0xff128C7E),
        title : const Text('WhatsApp', style : TextStyle(color: Colors.white)),
      actions : [
        InkWell(child:const Icon(Icons.search), onTap:(){}),

        PopupMenuButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1.0)
          ),
          itemBuilder :(context) {
           return [
              const PopupMenuItem(child: Text('New Group')),
              const PopupMenuItem(child: Text('New BroadCast')),
              const PopupMenuItem(child: Text('Linked Devices')),
              const PopupMenuItem(child: Text('Starred Messages')),
              const PopupMenuItem(child: Text('Settings'))
            ];
          }
        ),
      ],
       bottom :   TabBar(
         controller: _tabController,
         indicatorSize: TabBarIndicatorSize.tab,
         indicatorColor: Colors.white,
         labelColor: Colors.white,
         indicatorPadding: const EdgeInsets.all(10.0),
         tabs:  const <Widget> [
             
          Tab ( 
            child: 
              Icon(
               Icons.camera_alt_rounded),
           ),

                  Tab(
               child: Text('CHATS'),
             ),

           Tab (
             child : Text('STATUS')
           ),
            Tab (
             child : Text('CALLS')
           ),

          ],
       )
        
    ),
    body: TabBarView(
      controller: _tabController,
      children: const [
      CameraScreen(),
      ChatScreen(),
      StatusScreen(),
      CallScreen()
    ],
    ),
    floatingActionButton: showFab
          ? FloatingActionButton(
              backgroundColor: const Color(0xff128C7E),
              child: const Icon(
                Icons.message,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          : null
    );
      
  }
}