import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'file:///Users/fatima/Downloads/mojod-main/lib/Dashbord.dart';

class LoginWidget extends StatelessWidget {
  bool hide = true;
  
  //var emailController;
  //var PassController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child:
          Container(

            padding: EdgeInsets.all(8.0),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    colors:
                    [Color(0xFF3D9CA3), Color(0xFF004146)]

                )
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.all(50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      const SizedBox( // مسافه فاصله
                        height: 30,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),)
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Image.asset( // logo
                                  'assets/images/logo.png',
                                  alignment: Alignment.centerRight,
                                  height: 200,),

                                TextFormField(
                                  //   controller: authService.email,
                                  //controller: emailController,
                                  textDirection: TextDirection.rtl,
                                  decoration: InputDecoration(
                                      hintTextDirection: TextDirection.rtl,
                                      hintText: "البريد الالكتروني",
                                      prefixIcon: const Icon(Icons.email),
                                      focusedBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide: BorderSide(
                                            color: Color(0xFF3D9CA3), width: 2),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              10))),
                                  validator: (value) {
                                    if (value!.isEmpty || !RegExp(
                                        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                        .hasMatch(value)) {
                                      return "يجب أن يكون ايميل صحيح يحتوي على @ و.";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),

                                SizedBox(height: 10,),
                                // Divider(color: Colors.grey, height: 8),
                                TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  //  controller: authService.password,
                                 // controller: PassController,
                                  textDirection: TextDirection.rtl,
                                  obscureText: hide,
                                  onChanged: (value) {
                                    //   password = value; //get the value entered by user.
                                  },
                                  decoration: InputDecoration(
                                      hintText: "كلمة المرور",
                                      hintTextDirection: TextDirection.rtl,
                                      prefixIcon: const Icon(Icons.lock),
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          // setState(() {
                                          //   hide = !hide;
                                          // });
                                        },
                                        icon: hide
                                        // ignore: prefer_const_constructors
                                            ? Icon(
                                            Icons.visibility_off,
                                            color: Colors.black54)
                                        // ignore: prefer_const_constructors
                                            : Icon(
                                            Icons.visibility,
                                            color: Colors.black54),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide: BorderSide(
                                            color: Color(0xFF3D9CA3), width: 2),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              10))),
                                  validator: (value) {
                                    if (value!.isEmpty || !RegExp(
                                        "^(?=.{8,32}\$)(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#\$%^&*(),.?:{}|<>]).*")
                                        .
                                    hasMatch(value)) {
                                      return "يجب أن يتكون من 8 خانات تحتوي على رموز-أرقام-" +
                                          "\n" + "أحرف كبيرة-صغيرة";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                SizedBox(height: 15),
                                MaterialButton(
                                  minWidth: double.infinity,
                                  height: 45,
                                  onPressed: () async{
                                    //await Login();
                                    await Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => DashbordWidget()));
                                  },
                                  color: Color(0xFF3D9CA3),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Text(
                                    "تسجيل الدخول",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18
                                    ),
                                  ),
                                ),

                                // Text("نسيت كلمة المرور ؟",style: TextStyle(color: Colors.grey),),

                                // Text("تطبيق موجود -- 2023 ",style: TextStyle(color: Colors.grey,),),
                              ],
                            ),
                          ),


                          // Container(
                          //   height: 50,
                          //   margin: EdgeInsets.symmetric(horizontal: 50),
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(50),
                          //     color: Color(0xFF3D9CA3),
                          //   ),
                          //   child: Center(
                          //     child: Text("تسجيل الدخول",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                          //   ),
                          // ),
                          // SizedBox(height: 50,),


                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
 /* Future Login() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: PassController.text.trim()
    );
  }*/

}
