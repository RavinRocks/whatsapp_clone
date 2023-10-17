import 'package:flutter/material.dart';
import 'package:whatsapp_clone/send_msg.dart';
import 'contact_list.dart';
import 'main.dart';

class tabone extends StatefulWidget {
  @override
  _contact_listState createState() {
    return _contact_listState();
  }
}

class _contact_listState extends State<tabone> {

List data=['Bhavnagar Green','Only Shayri','Rajesh','piyush','Rajendra','priyanshu','hiren'];


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: ListView.builder(itemCount: data.length,itemBuilder: (context, index) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: ()
            {         showGeneralDialog(
                      context: context,
                      barrierLabel: "showGeneralDialog",
                      barrierDismissible: true,
                      barrierColor: Colors.black.withOpacity(0.30),
                      transitionDuration: const Duration(
                      milliseconds: 400),
                      pageBuilder: (context, animation,
                      secondaryAnimation) 
                      {
                      return Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 290,
                          width: 250,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            //borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            children: [
                              Container(
                                //padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Image.asset('assets/profile.png',fit: BoxFit.fitWidth,),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.message,size: 30,),
                                  Icon(Icons.call,size: 30,),
                                  Icon(Icons.info,size: 30,),
                                ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                      }
                      );
                   setState(() {});
          },
                  child: Container(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset("assets/profile.png",height: 55,fit: BoxFit.fill),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => send_msg(),));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width-80,
                    child:  Padding(
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
                          Text("This is msg",style: TextStyle(color: Colors.grey,fontSize: 16)),
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
    ),floatingActionButton: FloatingActionButton(
      backgroundColor: MyApp.color,
      onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => contact_list(),));
          setState((){});
      },
      child: const Icon(Icons.message,color: Colors.white,),
    ),
    );
  }
}