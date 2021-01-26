import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_id_mobile/CustomView/inputCustomBox.dart';
import 'package:qr_id_mobile/pages/DashBoardPage.dart';
import 'package:qr_id_mobile/pages/SignUpPage.dart';

import 'LogInPage.dart';

class LogInPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return SafeArea(

      child: Scaffold(


        body: SingleChildScrollView(

          physics: BouncingScrollPhysics(),
          child: Stack(
            children: [

              Column(

                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Align(

                    alignment: Alignment.center,

                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 150),
                        child: Text('PIOPIAYAY',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                        ),

                      ),
                    ),


                  ),
                  SizedBox(height: 30,),

                  Container(
                    margin: EdgeInsets.only(top: 0, bottom: 10),
                      child: Text('Login', style: TextStyle(
                      ),
                    ),
                  ),
                  inputCustomBox(inputHint: 'Email or Phone', ),
                  inputCustomBox(inputHint: 'Password',),

                  RichText(
                    text: TextSpan(
                      children: [

                        TextSpan(

                           text: 'Remember me',
                           style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff8f9db5).withOpacity(0.45),


                          ),

                        ),

                        TextSpan(text: '               '),
                        TextSpan(
                          text: 'Forgot Password',

                          style: TextStyle(
                            fontFamily: 'Product Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff90b7ff),

                          ),
                        ),


                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 250,
                    height: 40.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
                      onPressed: () {
                        Navigator.push(context, new MaterialPageRoute(
                            builder: (context)=> DashBoardPage()),);

                      },
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white,
                      textColor: Colors.blueGrey,
                      child: Text("Log in",
                          style: TextStyle(fontSize: 15)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 250,
                    height: 40.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
                      onPressed: () {
                        Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => SignUpPage())
                        );
                      },
                      padding: EdgeInsets.all(10.0),
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text("Sign Up",
                          style: TextStyle(fontSize: 15)),
                    ),
                  ),




                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}