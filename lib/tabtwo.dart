import 'package:flutter/material.dart';
import 'package:whatsapp_clone/send_msg.dart';

import 'main.dart';

class tabtwo extends StatefulWidget {

  @override
  _contact_listState createState() {
    return _contact_listState();
  }
}

class _contact_listState extends State<tabtwo> {
  List data=['Bhavnagar Green','Only Shayri','Rajesh','piyush','Rajendra','priyanshu','hiren'];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    body:SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(

                  child: Column(
                    children: [

                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Stack(
                          children: <Widget>[

                            Container(
                                alignment: Alignment.topLeft,
                                child: Image.asset("assets/logo.png",height: 55,fit: BoxFit.fill)
                            ),
                            // Positioned(
                            //   bottom: -10, right: -5, //give the values according to your requirement
                            //   child: Icon(Icons.add,color: Colors.green,size: 40,),
                            // ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => send_msg(),));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width-80,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("My status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            ],
                          ),
                          Text("Tap to add status update",style: TextStyle(color: Colors.grey,fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: Text("Recent update",style: TextStyle(color: Colors.grey,fontSize: 15),),
          ),
          ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: data.length,itemBuilder: (context, index) {
            return Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(

                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset("assets/profile.png",height: 55,fit: BoxFit.fill),
                          )
                        ],
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => send_msg(),));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width-80,
                        child:Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(data[index].toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  Text("10:45 AM",style: TextStyle(color: Colors.grey,fontSize: 12),),
                                ],
                              ),
                              Text("35 minutes ago",style: TextStyle(color: Colors.grey,fontSize: 16)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },),
        ],
      ),
    ),floatingActionButton: FloatingActionButton(
        backgroundColor: MyApp.color,
        child: const Icon(Icons.camera_alt,color: Colors.white,),
        onPressed: () {

    },),

    );
  }
}