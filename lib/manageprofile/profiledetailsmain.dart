
import 'package:flutter/material.dart';
import 'package:flutterforms/manageprofile/profileprimarydetails.dart';

class ProfileDatailsMain extends StatefulWidget {
  const ProfileDatailsMain({Key? key}) : super(key: key);

  @override
  State<ProfileDatailsMain> createState() => _ProfileDatailsMainState();
}

class _ProfileDatailsMainState extends State<ProfileDatailsMain> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
            children: <Widget>[
              Card(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('EDIT',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue)),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfilePrimaryDetails()));
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/man.png"), // no matter how big it is, it won't overflow
                      ),
                      title: Text('Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                      subtitle: Text('9010080408 \nLocation',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18)),
                    ),

                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(5)),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text('FILL YOUR CHAWKI DETAILS'),
                    onPressed: () {
                      //pressed
                    },
                  )
              ),
              const Padding(padding: EdgeInsets.only(left: 15,top: 2,bottom: 2,right: 15)),
              Container(
                padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
                child: const Text("ADDRESS DETAILS",style: TextStyle(fontWeight: FontWeight.bold),),
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
                          const Expanded(
                            flex: 5,
                            child: Text("Address",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          const Expanded(
                            child: Text("EDIT",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ],
                      )
                  )

              )
              ,
              const Padding(padding: EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15)),
              Container(
                padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
                child: const Text("PAYMENT DETAILS",style: TextStyle(fontWeight: FontWeight.bold),),
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
                          const Expanded(
                            flex: 5,
                            child: Text("Bank Account",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          const Expanded(
                            child: Text("EDIT",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ],
                      )
                  )

              ),
              Card(
                margin: const EdgeInsets.only(left: 10,top: 5,bottom: 5,right: 10),
                child : Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child : const TextField(
                    decoration: InputDecoration(hintText: 'Govt Registration Id',hintStyle: TextStyle(color: Colors.green)),
                  ),

                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15)),
              Container(
                padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
                child: const Text("Documents",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Card(
                margin: const EdgeInsets.only(left: 10,top: 5,bottom: 5,right: 10),
                child : Container(
                  height: 500,
                  margin: const EdgeInsets.only(left: 5,top: 10,bottom: 5,right: 10),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child:Column(
                    children: <Widget>[
                      const Padding(
                          padding: EdgeInsets.all(8.0)
                      ),
                      const Text("Registration Certificate"),
                      const Padding(
                          padding: EdgeInsets.all(8.0)
                      ),
                      Image.asset(
                        "assets/images/plaindoc.png",
                        width: 400,height: 200,
                        fit: BoxFit.fill,
                      ),
                      const Padding(
                          padding: EdgeInsets.all(8.0)
                      ),
                      const Text("Training Certificate"),
                      const Padding(
                          padding: EdgeInsets.all(8.0)
                      ),
                      Image.asset(
                        "assets/images/plaindoc.png",
                        width: 400,height: 200,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15)),
              Container(
                padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
                child: const Text("CHAWKI DETAILS",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Card(
                margin: const EdgeInsets.only(left: 10,top: 5,bottom: 5,right: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                        padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
                        child: const TextField(
                          decoration: InputDecoration(hintText: 'DFL/Month',hintStyle: TextStyle(color: Colors.green),contentPadding: EdgeInsets.all(10.0),),
                        )
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
                        child: const TextField(
                          decoration: InputDecoration(hintText: 'Batches/Month',hintStyle: TextStyle(color: Colors.green),contentPadding: EdgeInsets.all(10.0),),
                        )
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
                        child: const TextField(
                          decoration: InputDecoration(hintText: 'Average size of batch',hintStyle: TextStyle(color: Colors.green),contentPadding: EdgeInsets.all(10.0),),
                        )
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
                        child: const TextField(
                          decoration: InputDecoration(hintText: 'No. of labour',hintStyle: TextStyle(color: Colors.green),contentPadding: EdgeInsets.all(10.0),),
                        )
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
                        child: const TextField(
                          decoration: InputDecoration(hintText: 'Name Of Egg Grainage',hintStyle: TextStyle(color: Colors.green),contentPadding: EdgeInsets.all(10.0),),
                        )
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
                        child: const TextField(
                          decoration: InputDecoration(hintText: 'Your Secondary Phone number',hintStyle: TextStyle(color: Colors.green),contentPadding: EdgeInsets.all(10.0),),
                        )
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
                        child: const TextField(
                          decoration: InputDecoration(hintText: 'Farm Area (acres)',hintStyle: TextStyle(color: Colors.green),contentPadding: EdgeInsets.all(10.0),),
                        )
                    )
                  ],
                ),
              ),
            ])
    );
  }
}