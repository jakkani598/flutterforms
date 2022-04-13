
import 'package:flutter/material.dart';

class ProfilePrimaryDetails extends StatefulWidget {
  const ProfilePrimaryDetails({Key? key}) : super(key: key);

  @override
  State<ProfilePrimaryDetails> createState() => _ProfilePrimaryDetailsState();
}

class _ProfilePrimaryDetailsState extends State<ProfilePrimaryDetails> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PROFILE"),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            onPressed: () {

            },
            child: Text("Save"),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Card(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:<Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
                      decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(0),
                          color:Colors.green
                      ),
                      child: Image.asset(
                        "assets/images/correct.png",
                        width: 50,height: 50,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Your Selfie",),
                          ElevatedButton(onPressed: () {  },
                              child: Text("CLICK SELFIE"))
                        ],
                      ),
                    ),
                  ]
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
              child: const Text("PRIMARY DETAILS",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Card(
              margin: const EdgeInsets.only(left: 10,top: 5,bottom: 5,right: 10),
              child: Column(
                children: <Widget>[
                  Container(
                      padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
                      child: const TextField(
                        decoration: InputDecoration(hintText: 'FIRST NAME',hintStyle: TextStyle(color: Colors.green),contentPadding: EdgeInsets.all(10.0),),
                      )
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
                      child: const TextField(
                        decoration: InputDecoration(hintText: 'MIDDLE NAME',hintStyle: TextStyle(color: Colors.green),contentPadding: EdgeInsets.all(10.0),),
                      )
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
                      child: const TextField(
                        decoration: InputDecoration(hintText: 'LAST NAME',hintStyle: TextStyle(color: Colors.green),contentPadding: EdgeInsets.all(10.0),),
                      )
                  ),
                  Container(

                    padding: const EdgeInsets.only(left: 15,top: 15,bottom: 5,right: 15),
                    child: Text("Date Of Birth",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
                      child: const TextField(
                        decoration: InputDecoration(hintText: '01-01-1970',hintStyle: TextStyle(color: Colors.green),contentPadding: EdgeInsets.all(10.0),),
                      )
                  )
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                    shadowColor: Colors.blue,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    minimumSize: Size(100, 40), //////// HERE
                  ),
                  onPressed: () {},
                  child: Text('SAVE CHANGES'),
                )
            )
                  ]
        )
      )
    );
  }
}