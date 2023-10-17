import 'package:flutter/material.dart';
import 'package:whatsapp_clone/send_msg.dart';

import 'main.dart';

class contact_list extends StatefulWidget {

  @override
  _contact_listState createState() {
    return _contact_listState();
  }
}

class _contact_listState extends State<contact_list> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
            //change your color here
        ),
        backgroundColor: MyApp.color,
        title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start
        ,children: [Text("Select Contacts",style: TextStyle(fontSize: 17,color: Colors.white),),
        Text("200 Contacts",style: TextStyle(fontSize: 11,color: Colors.white),)]), //Text("Contacts",style: TextStyle(fontSize: 17,color: Colors.white),),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.search,color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.more_vert,color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    body:ListView.builder(itemCount: 25,itemBuilder: (context, index) {
       return Padding(
         padding: const EdgeInsets.all(8.0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Column(
               children: [
                 ClipRRect(
                   borderRadius: BorderRadius.circular(25),
                   child: Image.asset("assets/profile.png",height: 55,fit: BoxFit.fill),
                 )
               ],
             ),
             InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => send_msg(),));
               },
               child: SizedBox(
                 width: MediaQuery.of(context).size.width-80,
                 child: const Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                          Text("This is My Group 🔵",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          Text("10:45 AM",style: TextStyle(color: Colors.grey,fontSize: 12),),
                         ],
                       ),
                          Text("This is msg",style: TextStyle(color: Colors.grey,fontSize: 16)),
                     ],
                   ),
                 ),
               ),
             ),
           ],
         ),
       );
     },));
  }
}