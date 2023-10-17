import 'dart:async';
import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const color =  Color(0xff128C6E);
  static const coorChatback =  Color(0xffECE5DD);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: color),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'WhatsApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const dashboard(title: 'Whatsapp',))));
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Center(
         child: Container(
           height: 75,
           width: 75,
           decoration: const BoxDecoration(
               image: DecorationImage(image: AssetImage('assets/logo.png'),fit: BoxFit.cover)
           ),
         ),
       ),bottomNavigationBar: Column(
         mainAxisSize: MainAxisSize.min,
         children: [
           const Text("From",textAlign: TextAlign.center,style:
           TextStyle(color: Colors.grey,fontSize: 15,fontWeight:FontWeight.bold,),),
           Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
               Image.asset('assets/meta.png',height: 30,width: 30,color: Colors.green,),
               const Text("Meta",textAlign: TextAlign.center,style:
               TextStyle(color: Colors.green,fontSize: 18,fontWeight:FontWeight.bold,),),
            ],
           ),
         ],
       ) ,
     );
  }
}
