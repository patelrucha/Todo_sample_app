// import 'package:flutter/material.dart';
// import 'package:flutter_tasks_app/Apiservice/ApiService.dart';
// import 'ApiService.dart';
// import 'ApiService.dart';
// class Showapidatascreen extends StatefulWidget {
//   const Showapidatascreen({Key? key}) : super(key: key);
//
//   @override
//   State<Showapidatascreen> createState() => _ShowapidatascreenState();
// }
//
// class _ShowapidatascreenState extends State<Showapidatascreen> {
//   @override
//   void initState() {
//     super.initState();
//     setState(() {
//
//       callmyapi();
//     });
//   }
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//     );
//   }
//   var apires;
//   List Apilistdata=[];
//   Future<void> callmyapi() async {
//     ApiService apiservice = new ApiService();
//     ApiService().GetDataapicall().then((value) =>
//     setState((){
//       apires =value;
//       if(apires['status']=="success"){
//         Apilistdata = apires['data'];
//         print("objectData"+Apilistdata.toString());
//       }else{
//         print("object"+apires['meta'].toString());
//       }
//
//     }),
//     );
//   }
// }
