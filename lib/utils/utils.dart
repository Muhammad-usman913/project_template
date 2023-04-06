
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils{

 static toastMessage(String message){
    Fluttertoast.showToast(msg: message);
  }


 static void flushBarErrorMessage(String message , BuildContext context){
   showFlushbar(context: context,
       flushbar: Flushbar(
         flushbarPosition: FlushbarPosition.TOP,
         forwardAnimationCurve: Curves.decelerate,
         margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
         padding: EdgeInsets.all(15),
         message: message,
         backgroundColor: Colors.red,
         titleColor: Colors.white,
         borderRadius: BorderRadius.circular(20),
         reverseAnimationCurve: Curves.easeInOut,
         positionOffset: 20,
         duration: Duration(seconds: 3) ,
         icon: Icon(Icons.error,size: 28,color: Colors.white ,),
       )..show(context));
 }

 static snackBar(String message ,BuildContext context){
   return ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(
       backgroundColor: Colors.red,
         content: Text(message))
   );
 }
}