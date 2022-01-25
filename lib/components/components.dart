import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildRegistertextfield(
    {
      required TextEditingController controller,
      required TextInputType type ,
      required String lable,
      required IconData prefix,
      required double circle,
      IconData? suffix,
      bool? encry

    }
    )=> TextFormField(
  cursorColor: Colors.orange,
  keyboardType:type,
  controller: controller,
  obscureText: encry??false,
  validator: (value){

    if (value!.isEmpty)
    {
      return 'Field Must Not Be Empty';
    }
    return null;
  },
  decoration: InputDecoration(
    labelText: lable,
    labelStyle:TextStyle(color: Colors.deepOrange,),
    prefixIcon:Icon(
      prefix,color:Colors.orange ,
    ),
    suffixIcon:Icon(
      suffix,color:Colors.orange ,
    ),
      border: OutlineInputBorder(
      borderRadius: BorderRadius.only(topLeft:
      Radius.circular(circle),bottomRight:Radius.circular(circle),
      ),
      borderSide: BorderSide(color: Colors.deepOrange,),
    ),
     focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.only(topLeft:
      Radius.circular(circle),bottomRight:Radius.circular(circle),
      ),
      borderSide: BorderSide(color: Colors.deepOrange,),
    ),

  ),
  onFieldSubmitted: (value){
    print(value);
  },
  onChanged:(value){
    print(value);
  },
);