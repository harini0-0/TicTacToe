import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/Screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Color(0xFF0A253E),
//         body: GridView.builder(
//           itemCount: 9,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
//           itemBuilder: (BuildContext context, int index){
//             return Container(
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.grey,),
//               ),
//               child: Center(
//                 child: Text(index.toString(), style: TextStyle(color: Colors.white, fontSize: 40 ),),
//               ),
//             );
//           }
//         ),
//       ),
//     );
//   }
// }
// // Container(
// // child: Column(
// // mainAxisAlignment: MainAxisAlignment.center,
// // crossAxisAlignment: CrossAxisAlignment.center,
// // children: <Widget>[
// // Expanded(
// // child: Center(
// // child: Text(
// // "Tic x Tac x Toe",
// // style: TextStyle(fontStyle: FontStyle.italic, fontSize: 40, color: Colors.grey),
// // ),
// // ),
// // ),
// // Visibility(
// // visible: trial,
// // child: Expanded(
// // child: Center(
// // child: Text(
// // "The winner is $winner!",
// // style: TextStyle(fontStyle: FontStyle.italic, fontSize: 40, color: Colors.grey),
// // ),
// // ),
// // ),
// // ),
// // Expanded(
// // flex: 3,
// // child: Container(
// // margin: EdgeInsets.symmetric(horizontal: 40),
// // // padding: EdgeInsets.all(10),
// // child: Column(
// // mainAxisAlignment: MainAxisAlignment.center,
// // crossAxisAlignment: CrossAxisAlignment.center,
// // children: <Widget>[
// // Row(
// // children: <Widget>[
// // ContainerFeed(b: bs[0], top: 0, bot: 2, left: 0, right: 3, id: 0, checker: checker,),
// // ContainerFeed(b: bs[1], top: 0, bot: 2, left: 2, right: 3, id: 1, checker: checker,),
// // ContainerFeed(b: bs[2], top: 0, bot: 2, left: 2, right: 0, id: 2, checker: checker,),
// // ],
// // ),
// // Row(
// // children: <Widget>[
// // ContainerFeed(b: bs[3], top: 3, bot: 3, left: 0, right: 3, id: 3, checker: checker,),
// // ContainerFeed(b: bs[4], top: 3, bot: 3, left: 3, right: 3, id: 4, checker: checker,),
// // ContainerFeed(b: bs[5], top: 3, bot: 3, left: 3, right: 0, id: 5, checker: checker,),
// // ],
// // ),
// // Row(
// // children: <Widget>[
// // ContainerFeed(b: bs[6], top: 2, bot: 0, left: 0, right: 2, id: 6, checker: checker,),
// // ContainerFeed(b: bs[7], top: 2, bot: 0, left: 3, right: 2, id: 7, checker: checker,),
// // ContainerFeed(b: bs[8], top: 2, bot: 0, left: 3, right: 0, id: 8, checker: checker,),
// // ],
// // ),
// // ],
// // ),
// // ),
// // ),
// // Container(
// // height: 70,
// // decoration: BoxDecoration(
// // // shape: BoxShape.circle,
// // borderRadius: BorderRadius.circular(25),
// // border: Border.all(color: Colors.green),
// // ),
// // child: Row(
// // mainAxisSize: MainAxisSize.min,
// // mainAxisAlignment: MainAxisAlignment.center,
// // crossAxisAlignment: CrossAxisAlignment.center,
// // children: <Widget>[
// // TextButton(onPressed: (){reset();},child: Text("Reset", style: TextStyle(fontSize: 40, letterSpacing: 5, fontStyle: FontStyle.italic,color: Colors.grey),),),
// // IconButton(onPressed: (){reset();}, icon: Icon(Icons.restart_alt, size: 35,color: Colors.grey,),splashRadius: 0.1,),
// // ],
// // ),
// // ),
// // SizedBox(height: 15,),
// // Expanded(
// // child: Row(
// // children: <Widget>[
// // Expanded(
// // child: Column(
// // children: [
// // Text("Player", style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic, color: Colors.grey, letterSpacing: 4),),
// // SizedBox(
// // height: 20,
// // ),
// // Text("0", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30, color: Colors.grey),),
// // ],
// // ),
// // ),
// // Expanded(
// // child: Column(
// // children: [
// // Text("Draws", style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic, color: Colors.grey, letterSpacing: 4),),
// // SizedBox(
// // height: 20,
// // ),
// // Text("0", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30, color: Colors.grey),),
// // ],
// // ),
// // ),
// // Expanded(
// // child: Column(
// // children: [
// // Text("Computer", style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic, color: Colors.grey, letterSpacing: 4),),
// // SizedBox(
// // height: 20,
// // ),
// // Text("0", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30, color: Colors.grey),),
// // ],
// // ),
// // ),
// // ],
// // ),
// // )
// // ],
// // ),
// // )
// // class ContainerFeed extends StatefulWidget {
// //   ContainerFeed({required this.b, required this.top, required this.bot, required this.left, required this.right, required this.id, required this.checker});
// //   final double top, bot, left, right, id;
// //   late String b;
// //   Function checker;
// //   @override
// //   _State createState() => _State();
// // }
// //
// // class _State extends State<ContainerFeed> {
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       height: 100,
// //       width: 100,
// //       child: TextButton(
// //         child: Text(widget.b, style: TextStyle(fontSize: 80, color: Colors.blueAccent),),
// //         onPressed: (){
// //           setState(() {
// //             if(widget.b=="" && trial == false){
// //               widget.b = flag? "o":"x";
// //               bt[widget.id.toInt()] = flag? 1 : -1;
// //               flag = !flag;
// //               rolls.remove(widget.id);
// //               counter++;
// //             }
// //           });
// //         },
// //       ),
// //       decoration: BoxDecoration(
// //         // color: Colors.redAccent,
// //           border: Border(
// //             bottom: BorderSide(width: widget.bot,color: Colors.grey),
// //             right: BorderSide(width: widget.right, color: Colors.grey),
// //             top: BorderSide(width: widget.top !=0 ? widget.top : 0.0 , color: Colors.grey),
// //             left: BorderSide(width: widget.left, color: Colors.grey),
// //           )
// //       ),
// //     );
// //   }
// // }
