import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterforms/reeler_data/kyceditupdate.dart';
import 'package:intl/intl.dart';

class ReelerKYCDetailsForm extends StatefulWidget {
  const ReelerKYCDetailsForm({Key? key}) : super(key: key);

  @override
  State<ReelerKYCDetailsForm> createState() => ReelerKYCDetailsFormState();
}

class ReelerKYCDetailsFormState extends State<ReelerKYCDetailsForm> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("KYC"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(children: <Widget>[
            const Padding(
                padding: EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15)),
            Container(
              padding:
              const EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15),
              child: const Text(
                "Identify Proof",
                style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 8.0, // gap between adjacent chips
                runSpacing: 4.0, // gap between lines
                children: <Widget>[
                  ActionChip(
                    backgroundColor: Colors.blue,
                    avatar: const Icon(Icons.done),
                    padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5)
                        )),
                    label: const Text(
                      "PAN",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ), onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> KYCeditUpdate(docType: 'pan',)));
                  },),

                ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15)),
            Container(
              padding:
              const EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15),
              child: const Text(
                "Address Proof(Any One)",
                style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 8.0, // gap between adjacent chips
                runSpacing: 4.0, // gap between lines
                children: <Widget>[
                  ActionChip(
                    backgroundColor: Colors.blueAccent,
                    avatar: const Icon(Icons.done),
                    padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5)
                        )),
                    label: const Text(
                    "PASSPORT",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ), onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> KYCeditUpdate(docType: 'passport',)));
                  },),
                  ActionChip(
                    backgroundColor: Colors.blueAccent,
                    avatar: const Icon(Icons.done),
                    padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5)
                        )),
                    label: const Text(
                      "AADHAAR",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ), onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> KYCeditUpdate(docType: 'aadhaar',)));
                  },),
                  ActionChip(
                    backgroundColor: Colors.blueAccent,
                    avatar: const Icon(Icons.done),
                    padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5)
                        )),
                    label: const Text(
                      "VOTER ID",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ), onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> KYCeditUpdate(docType: 'voterid',)));
                  },),
                  ActionChip(
                    backgroundColor: Colors.grey,
                    avatar: const Icon(Icons.done),
                    padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5)
                        )),
                    label: const Text(
                      "DL",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ), onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> KYCeditUpdate(docType: 'dl',)));
                  },),
                ],
              ),
            ),
             const Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),

                child: Center(child: Text("You Have uploaded all the documents required for loan", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.lightGreen,),),)
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
                    child: Text("OKAY!"),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreen,
                      textStyle: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                ),
              ),
            )
          ]),
        ),);
  }
}

