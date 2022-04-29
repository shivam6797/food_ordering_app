import 'package:flutter/material.dart';
import 'package:food_ordering_app/config/colors.dart';
import 'package:food_ordering_app/screens/home/drawer_side.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        iconTheme:IconThemeData(color:textColor),
        backgroundColor:primaryColor,
        elevation:0.0,
        title: Text("My Profile",style:TextStyle(fontSize:18,color:textColor),),
      ),
      drawer: DrawerSide(),
     body: Stack(
       children: [
         Column(
           children: [
             Container(
               height:100,
               color: primaryColor,

             )
           ],
         ),
         Padding(
           padding: const EdgeInsets.only(top:40,left:10),
           child: CircleAvatar(
             radius:50,
             backgroundColor:primaryColor,
             child: CircleAvatar(
               radius:45,
               backgroundColor:scaffoldBackgroundColor,
               backgroundImage: const NetworkImage("https://s3.envato.com/files/328957910/vegi_thumb.png",),
             ),
           ),
         )
       ],
     ),
   
    );
  }
}