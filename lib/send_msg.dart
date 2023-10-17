import 'package:flutter/material.dart';
import 'package:whatsapp_clone/profile.dart';
import 'main.dart';

class send_msg extends StatefulWidget {
  @override
  _send_msgState createState() {
    return _send_msgState();
  }
}

class _send_msgState extends State<send_msg> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyApp.coorChatback,
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white, //change your color here
          ),
         // backgroundColor: MyApp.color,
          titleSpacing: 0.0,
          leadingWidth: 70,
          title: InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => profile(),));
          },child: Container(padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
              child: const Text("Rajesh",style: TextStyle(fontSize: 17,color: Colors.white),))),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.video_call,color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.call,color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.more_vert,color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
          leading:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 5,),
              Container(
                  child: const Icon(Icons.arrow_back_outlined)),
              Container(child: Image.asset("assets/profile.png",height: 35,fit: BoxFit.fill)),
           ],
          ),
        ),body: Container(
            height: double.infinity,
            child:  Image.asset("assets/chat_back.jpg",height: 55,fit: BoxFit.fill),
            color: MyApp.coorChatback,),
          bottomNavigationBar:
          Transform.translate(
            offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  margin: const EdgeInsets.all(5),
                color: Colors.white,
                 // padding: EdgeInsets.all(10),
                //  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black12,),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: () {

                        }, icon:const Icon(Icons.emoji_emotions_outlined,color: Colors.grey,)),

                         Container(
                           //color: Colors.redAccent,
                           width: MediaQuery.of(context).size.width/3.5,
                           child: TextFormField(decoration:
                          const InputDecoration(border: InputBorder.none,hintText: "Message",hintStyle:
                          TextStyle(color: Colors.grey)),),

                         ),
                        IconButton(
                          onPressed: () {
                            showGeneralDialog(
                              context: context,
                              barrierLabel: "showGeneralDialog",
                              barrierDismissible: true,
                              barrierColor: Colors.black.withOpacity(0.0),
                              transitionDuration: const Duration(
                                  milliseconds: 400),
                              pageBuilder: (context, animation,
                                  secondaryAnimation) {
                                return Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    margin: const EdgeInsets.fromLTRB(10, 0, 10, 60),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    height: 280,
                                    child:  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Material(
                                          child: Container(
                                            color: Colors.white,
                                            width: MediaQuery.of(context).size.width-50,
                                            height: MediaQuery.of(context).size.height/3,
                                            child:  Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                 Column(
                                                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                                  children: [
                                                    ClipRRect(borderRadius: BorderRadius.circular(100),
                                                    child: Container(padding: EdgeInsets.all(12),
                                                    color: Colors.purple,child:
                                                    Icon(Icons.contact_page_sharp,color: Colors.white,size: 30,))),
                                                    Text("Contacts"),

                                                    ClipRRect(borderRadius: BorderRadius.circular(100),
                                                    child: Container(padding: EdgeInsets.all(12),
                                                    color: Colors.orangeAccent,child:
                                                    Icon(Icons.photo,color: Colors.white,size: 30,))),
                                                    Text("Gallery"),

                                                    ClipRRect(borderRadius: BorderRadius.circular(100),
                                                    child: Container(padding: EdgeInsets.all(12),
                                                    color: Colors.green,child:
                                                    Icon(Icons.file_copy,color: Colors.white,size: 30,))),
                                                    Text("Documents"),

                                                  ],
                                                ),Column(
                                                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                                  children: [

                                                    ClipRRect(borderRadius: BorderRadius.circular(100),
                                                        child: Container(padding: EdgeInsets.all(12),
                                                            color: Colors.blueAccent,child:
                                                            Icon(Icons.photo,color: Colors.white,size: 30,))),
                                                    Text("Photo"),

                                                    ClipRRect(borderRadius: BorderRadius.circular(100),
                                                        child: Container(padding: EdgeInsets.all(12),
                                                            color: Colors.pink,child:
                                                            Icon(Icons.poll,color: Colors.white,size: 30,))),
                                                    Text("Poll"),

                                                    ClipRRect(borderRadius: BorderRadius.circular(100),
                                                        child: Container(padding: EdgeInsets.all(12),
                                                            color: Colors.purpleAccent,child:
                                                            Icon(Icons.camera_alt,color: Colors.white,size: 30,))),
                                                    Text("Camera"),
                                                  ],
                                                ),Column(
                                                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                                  children: [
                                                    ClipRRect(borderRadius: BorderRadius.circular(100),
                                                        child: Container(padding: EdgeInsets.all(12),
                                                            color: Colors.orangeAccent,child:
                                                            Icon(Icons.location_on,color: Colors.white,size: 30,))),
                                                    Text("Loation"),

                                                    ClipRRect(borderRadius: BorderRadius.circular(100),
                                                        child: Container(padding: EdgeInsets.all(12),
                                                            color: Colors.pink,child:
                                                            Icon(Icons.audio_file,color: Colors.white,size: 30,))),
                                                    Text("Audio"),

                                                    ClipRRect(borderRadius: BorderRadius.circular(100),
                                                        child: Container(padding: EdgeInsets.all(12),
                                                            color: Colors.greenAccent,child:
                                                            Icon(Icons.video_call,color: Colors.white,size: 30,))),
                                                    Text("Video"),

                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),);
                              },);

                          },
                          icon:const Icon(Icons.attachment,color: Colors.grey,size: 25,),),

                        Container(
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            onPressed: () {
                          }, icon:const Icon(Icons.currency_rupee,color: Colors.grey,size: 25,),),
                        ),

                        IconButton(onPressed: () {
                        }, icon:const Icon(Icons.camera_alt,color: Colors.grey,size: 25,),),

                  ]),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    color: MyApp.color,
                    child: IconButton(onPressed: () {
                    }, icon:const Icon(Icons.send,color: Colors.white,size: 25,),),
                  ),
                ),
              ],
            ),
          ),
    );
    }
}