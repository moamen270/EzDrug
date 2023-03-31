import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../Constant/color.dart';

class HomeScreen extends StatefulWidget {
  static const RouteName = 'homeScreen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
        var Posts ;

  Future getPost() async {
    
   final response = await Dio().get( "http://ezdrug.somee.com/api/category/getall");
      
          setState(() {
            Posts = response.data["categories"] as List ;
          });
    
  }
@override
  void initState() {
    // TODO: implement initState
    print(getPost());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Posts == null ? Center(child: CircularProgressIndicator())
      : GridView.builder(
        itemCount: Posts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: ((context, i) {
          return Card(
            color: AppColor.primaryAppColor,
            child: GestureDetector(
              onTap: () {
                
              },
              child: Column(
                children: [
                  Image.network(Posts[i]['imgURL']),
                  Text(Posts[i]['name'],
                  style:TextStyle(fontSize: 24)
                   ),
            
                ],
              ),
            ),
          );
        })
        ),
    );
  }
}