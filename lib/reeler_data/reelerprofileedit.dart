
import 'package:flutter/material.dart';
import 'package:flutterforms/reeler_data/reelerkycdetails.dart';
import 'package:flutterforms/reeler_data/reelerpaymentdetails.dart';
import 'package:flutterforms/reeler_data/reelerprofilemainform.dart';

import 'addressdetails.dart';

class ReelerProfileEdit extends StatefulWidget
{
  const ReelerProfileEdit({Key? key}) : super(key: key);

  @override
  State<ReelerProfileEdit> createState() => ReelerProfileEditState();

}

class ReelerProfileEditState extends State<ReelerProfileEdit>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
          children: <Widget>[
            Card(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0,top:5.0,right: 2.0,bottom: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('EDIT',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue)),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ReelerProfileMainForm()));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                         Expanded(
                          flex: 2,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: const Image(image: AssetImage('assets/images/man.png'),width: 80,height: 80,)
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text("UserName",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
                                  Text("Mobile Number",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.grey),),
                                  Text("Address",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.grey),)
                                  ]
                          ),
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(left: 15,top: 2,bottom: 2,right: 15)),
            Container(
              padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
              child: const Text("ADDRESS DETAILS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
            ),
            Card(
                margin: const EdgeInsets.only(left: 10,top: 5,bottom: 5,right: 10),
                child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child:Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        Image.asset(
                          "assets/images/correct.png",
                          width: 20,height: 20,
                          fit: BoxFit.fill,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Expanded(
                            flex: 5,
                            child: Text("Address",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                          ),
                        ),
                         Expanded(
                          child: Container(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddressDetailsForm()));
                              },
                                child: const Align(
                                  alignment: Alignment.centerRight,
                                  child: Text("EDIT",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 15)),
                                )
                            ),
                          )),
                ],
                    )
                )
            )
            ,
            const Padding(padding: EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15)),
            Container(
              padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
              child: const Text("PAYMENT DETAILS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
            ),
            Card(
                margin: const EdgeInsets.only(left: 10,top: 5,bottom: 5,right: 10),
                child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child:Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  <Widget> [
                        Image.asset(
                          "assets/images/correct.png",
                          width: 20,height: 20,
                          fit: BoxFit.fill,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Expanded(
                            flex: 5,
                            child: Text("Bank Account",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black  )),
                          ),
                        ),
                        Expanded(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReelerpaymentDetailsForm()));
                              },
                              child: const Align(
                                alignment: Alignment.centerRight,
                                child: Text("EDIT",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 15)),
                              )
                            )
                        ),
                      ],
                    )
                )

            ),
            const Padding(padding: EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15)),
            Container(
              padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
              child: const Text("KYC Details",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
            ),
            Card(
                margin: const EdgeInsets.only(left: 10,top: 5,bottom: 5,right: 10),
                child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child:Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  <Widget> [
                        Image.asset(
                          "assets/images/correct.png",
                          width: 20,height: 20,
                          fit: BoxFit.fill,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Expanded(
                            flex: 5,
                            child: Text("Update KYC",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black  )),
                          ),
                        ),
                        Expanded(
                            child: TextButton(
                                style: TextButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 20),
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReelerKYCDetailsForm()));
                                },
                                child: const Align(
                                  alignment: Alignment.centerRight,
                                  child: Text("UPDATE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 15)),
                                )
                            )
                        ),
                      ],
                    )
                )

            ),
            const Padding(padding: EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15)),
            Container(
              padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
              child: const Text("CREDIT SCORE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
            ),
            Card(
              margin: const EdgeInsets.only(left: 10,top: 5,bottom: 5,right: 10),
              child : SizedBox(
                height: 130,
                child : Center(
                  child:Column(
                    children: [
                      const Padding(padding: EdgeInsets.all(10)),
                      ElevatedButton(onPressed: () {
                      },
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text("GET CREDIT SCORE"),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.lightGreen,
                            textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: const Text("powered \nby",textAlign: TextAlign.end,style: TextStyle(color: Colors.grey),)
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/images/correct.png',width: 30,height: 30,),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ),
              ),
            ),
          ])
    );
  }

}