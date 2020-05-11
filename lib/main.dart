import 'package:chatonline/chat_screen.dart';
import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

void main() async {
  runApp(MyApp());
  //Firestore.instance.collection("col").document("doc").setData({"texto": "Hello World!"});
  //Ler apenas uma vez e todas, sem atualização real-time
  /*QuerySnapshot snapshot = await Firestore.instance.collection("col").getDocuments();
  snapshot.documents.forEach((d){
    //o reference pode te ajudar com a alteração de um campo específico no firebase
    d.reference.updateData({ "texto": "Corrigidu" });
    print(d.data);
    print(d.documentID);
  });*/
  /*DocumentSnapshot snapshot = await Firestore.instance.collection("col")
      .document("doc").get();
  print(snapshot.data);*/

  //Leitura em Real-time, aqui fica atualizando apenas uma coleção
  /*Firestore.instance.collection("col").snapshots().listen((data){
    data.documents.forEach((a){
      print(a.data);
    });
  });*/
  //Aqui só fica atualizando apenas um doc em Real-time
  /*Firestore.instance.collection("col").document("doc").snapshots().listen((doc){
    print(doc.data);
  });*/
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.blue,
        ),
      ),
      home: ChatScreen(),
    );
  }
}
