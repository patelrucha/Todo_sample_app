// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
// class ApiService{
//   final String baseurl = "https://dummy.restapiexample.com/api/v1/employees";
//
//
//   Future GetDataapicall() async {
//     var DataResponse;
//
//     try{
//       print(baseurl);
//       http.Response response = await http.get(
//         Uri.parse(baseurl));
//       print("Response--------------"+ response.body);
//       if(response.statusCode==['success']){
//         DataResponse = json.decode(response.body);
//         print("Response Success-------------"+ response.body);
//         return DataResponse;
//       }
//     }catch(E){
//       print("Error"+E.toString());
//     }
//   }
// }