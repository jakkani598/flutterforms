
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../radiotheme/myradiolisttile.dart';

class KYCeditUpdate extends StatefulWidget {
   final String docType;
   KYCeditUpdate({Key? key,required this.docType}) : super(key: key);

  @override
  State<KYCeditUpdate> createState() => KYCeditUpdateState();
}

class KYCeditUpdateState extends State<KYCeditUpdate> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("KYC"),
        ),
        body: ListView(children: <Widget>[
          const Padding(padding: EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15)),
          Container(
            padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
            child:  const Text("Front Image",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: const SizedBox(
              height: 100
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, right: 8.0, bottom: 30.0, top: 15.0),
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text("SUBMIT"),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    textStyle: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold)),
              ),
            ),
          )
        ]));
  }

}
