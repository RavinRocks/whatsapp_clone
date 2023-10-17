import 'package:flutter/material.dart';
import 'package:whatsapp_clone/send_msg.dart';

import 'main.dart';

class tabthree extends StatefulWidget {

  @override
  _contact_listState createState() {
    return _contact_listState();
  }
}

class _contact_listState extends State<tabthree> {
  List data=['Bhavnagar Green','Only Shayri','Rajesh','piyush','Rajendra','priyanshu','hiren'];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    body:
    SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: PageScrollPhysics(),
      primary: true,
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
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            color: Colors.green,
                              padding: EdgeInsets.all(10,),child: Icon(Icons.link_sharp,color: Colors.white,size: 25,))
                          //Image.asset("assets/logo.png",height: 55,fit: BoxFit.fill),
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
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Create Call link",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              ],
                            ),
                            Text("Share a link for your whatsapp call",style: TextStyle(color: Colors.grey,fontSize: 14),),
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
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text("Recent",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
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
                                  Text(data[index].toString(),style: TextStyle(fontSize: 16),),
                                  Icon(Icons.call_made,color: Colors.redAccent,),
                                  //Text("10:45 AM",style: TextStyle(color: Colors.grey,fontSize: 12),),
                                ],
                              ),
                              Text("4 August call 7:53 pm,",style: TextStyle(color: Colors.grey,fontSize: 16)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //   Text("hello"),
                  ],
                ),
              ),
            );
          },),
        ],
      ),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        backgroundColor: MyApp.color,
        child: const Icon(Icons.call,color: Colors.white,),
      ),
    );
  }
}