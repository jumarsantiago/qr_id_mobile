import 'package:flutter/material.dart';
import 'package:qr_id_mobile/CustomView/TextSection.dart';

class DashBoardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffBEF0F3),
      appBar: AppBar(
        title:Text('Dashboard'),
        leading: IconButton(
          icon: Icon(Icons.view_headline),
          onPressed: (){print('Clicked');},
        ),
        actions: [
          Icon(Icons.add_alert),

          SizedBox(width: 15),

        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: <Widget>[
        ////////FIRST
          Container(
            child: Row(
              children: [

                Container(
                  child: Text('Great! Your account is\nalmost complete'),
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,

            ),
            height: 110,
            margin: EdgeInsets.only(top: 20,right: 20,left: 20),
          ),

          ///////SECOND
          Container(
            child: Row(
              children: [
                Image.asset('assets/qrsample.jpg'),

                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text( 'MY DIGITAL ID',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,

                  ),),
                  Text( 'Letran, Nielle Vince J.',style: TextStyle(
                    fontSize: 15,

                  ),),
                      Container(
                        margin: EdgeInsets.only(top: 40, left: 5),
                        child:Row(children:[
                      Container(

                         child: RaisedButton(
                           color: Colors.white,
                              onPressed: (){
                              },
                              child: Text('Details', style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue,
                              ),)
                         )
                      ),
                      Container(
                          alignment: Alignment.bottomRight,
                          child: RaisedButton(
                              color: Colors.blue,
                              onPressed: (){
                              },
                              child: Text('Scan', style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),)
                          ),
                      ),
  ],
                      ),
                ),
                    ],

                   ),


                ),


              ],
            ),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,

            ),
            height: 150,
            margin: EdgeInsets.only(top: 20,right: 20,left: 20),
          ),

          ///////THIRD BUTTON MY WALLET
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [

                Container(
                  margin: EdgeInsets.only(right: 30),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8),
    side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
                        color: Colors.white,
                        onPressed: (){
                        },
                        child: Text('My Wallet', style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                        ),)
                    )
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,

            ),
            height: 110,
            margin: EdgeInsets.only(top: 20,right: 20,left: 20),
          ),

        ],
        
      ),
    );
  }
}