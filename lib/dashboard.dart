import 'package:flutter/material.dart';
import 'package:whatsapp_clone/tabone.dart';
import 'package:whatsapp_clone/tabthree.dart';
import 'package:whatsapp_clone/tabtwo.dart';
import 'contact_list.dart';
import 'main.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class dashboard extends StatefulWidget {
  const dashboard({super.key, required this.title});
  final String title;
  @override
  State<dashboard> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<dashboard> {

  SampleItem? selectedMenu;

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyApp.color,
        title: Text(widget.title,style: const TextStyle(color: Colors.white),),
        actions:  [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.camera_alt_outlined,color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.search,color: Colors.white),
                ),

                PopupMenuButton<SampleItem>(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  initialValue: selectedMenu,
                  color: Colors.white,

                  onSelected: (SampleItem item) {
                    setState(() {
                      selectedMenu = item;
                    });
                  },
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                    const PopupMenuItem<SampleItem>(
                      value: SampleItem.itemOne,
                      child: Text('Settings'),
                    ),
                    const PopupMenuItem<SampleItem>(
                      value: SampleItem.itemTwo,
                      child: Text('Linked devices'),
                    ),
                    const PopupMenuItem<SampleItem>(
                      value: SampleItem.itemThree,
                      child: Text('Payments'),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TabBar(
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Colors.white70,
                  labelColor: Colors.white,
                  tabs: [
                    Tab(text: "Chats"),
                    Tab(text: "Status"),
                    Tab(text: "Call"),
                  ],
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              tabone(),
              tabtwo(),
              tabthree(),
            ],
          ),
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
