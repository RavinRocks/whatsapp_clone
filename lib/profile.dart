import 'package:flutter/material.dart';
import 'main.dart';

class profile extends StatefulWidget {

  @override
  _send_msgState createState() {
    return _send_msgState();
  }
}

class _send_msgState extends State<profile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          titleSpacing: 0.0,
          leadingWidth: 70,
          title: const Text("Rajesh",style: TextStyle(fontSize: 17,color: Colors.white),),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.more_vert,color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
          leading:const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 5,),
              Icon(Icons.arrow_back_outlined,color: Colors.grey),
             // Image.asset("assets/profile.png",height: 35,fit: BoxFit.fill),
           ],
          ),
        ),body: Container(
            height: double.infinity,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Center(child: Image.asset("assets/profile.png",height: 140,fit: BoxFit.fill)),
                      const SizedBox(height: 5,),
                      const Text("Rajesh",style: TextStyle(fontSize: 20),),
                      const SizedBox(height: 5,),
                      const Text("+91 98765 43210",style: TextStyle(color: Colors.grey,fontSize: 20),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            child:
                            const Column(children: [
                              Icon(Icons.call,size: 30,color:MyApp.color),
                              SizedBox(height: 10,),
                              Text("Audio",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: MyApp.color),),
                            ],),
                          ),
                          const Column(children: [
                            Icon(Icons.video_call,size: 30,color: MyApp.color),
                            SizedBox(height: 10,),
                            Text("video",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: MyApp.color),),
                          ],),
                          const Column(children: [
                            Icon(Icons.currency_rupee,size: 30,color: MyApp.color),
                            SizedBox(height: 10,),
                            Text("Pay",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: MyApp.color),),
                          ],),
                          const Column(children: [
                            Icon(Icons.search,size: 30,color: MyApp.color),
                            SizedBox(height: 10,),
                            Text("Search",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: MyApp.color),),
                          ],),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(20, 8, 8, 8),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hey There, I am using WhatsApp!"),
                            Text("25 July 2023",style: TextStyle(color: Colors.grey)),
                          ]),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(title: Text("Mute Notification"),leading: Icon(Icons.notification_important_rounded),),
                      ListTile(title: Text("Custom notification"),leading: Icon(Icons.music_note),),
                      ListTile(title: Text("Media visibility"),leading: Icon(Icons.photo),),
                      ListTile(title: Text("Payments"),leading: Icon(Icons.currency_rupee),),
                    ],
                  ),
                ),
              ],
            ),
             ),
    );
    }
}