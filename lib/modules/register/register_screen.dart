import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register/components/components.dart';

class RegisterScreen extends StatelessWidget {
  var formkey =GlobalKey<FormState>();
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var fullnamecotroller = TextEditingController();
  var usernamecontroller = TextEditingController();
  var phonecontroller = TextEditingController();
  var confirmcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle:true,
        leading:Icon(Icons.menu,),
        actions: [Icon(Icons.notification_add)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key:formkey ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Register",
                  style:TextStyle(
                      fontSize:40.0,
                      fontWeight: FontWeight.bold,
                     color: Colors.deepOrange,
                  ),
                ),
                SizedBox(
                  height:40.0,
                ),
                buildRegistertextfield(lable:"Full Name",controller:fullnamecotroller,prefix:Icons.person,circle: 25.0,type:TextInputType.name),
                SizedBox(
                  height:15.0,
                ),
                buildRegistertextfield(lable:"User Name",controller:usernamecontroller,prefix:Icons.person,circle: 25.0,type:TextInputType.name),
                SizedBox(
                  height:15.0,
                ),
                buildRegistertextfield(lable:"Phone Number",controller:phonecontroller,prefix:Icons.phone,circle: 25.0,type:TextInputType.phone),
                SizedBox(
                  height:15.0,
                ),
                buildRegistertextfield(lable:"E-mail",controller:emailcontroller,prefix:Icons.email,circle: 25.0,type:TextInputType.emailAddress),
                SizedBox(
                  height:15.0,
                ),
                buildRegistertextfield(lable:"Password",controller:passwordcontroller,prefix: Icons.lock,suffix:Icons.remove_red_eye ,circle: 25.0,type:TextInputType.visiblePassword,encry:true),
                SizedBox(
                  height:15.0,
                ),
                buildRegistertextfield(lable:"Confirm Password",controller:confirmcontroller,prefix: Icons.lock,suffix:Icons.remove_red_eye ,circle: 25.0,type:TextInputType.visiblePassword,encry:true),
                SizedBox(
                  height:20.0,
                ),
                Container(
                  width:double.infinity,
                  child:ElevatedButton(
                    onPressed: () {
                      if(formkey.currentState!.validate())
                      {
                        print(emailcontroller.text);
                        print(passwordcontroller.text);
                      }
                    },
                    child: Text('Submit'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15), // <-- Radius
                      ),

                    ),
                  )
                ),
                SizedBox(
                  height:10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('I need help!'),
                    TextButton(onPressed: (){}, child: Text('Help me',style:TextStyle(color:Colors.deepOrange),)),

                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}