import 'package:flutter/material.dart';



import 'elvenmapspesh.dart';


void main() {
  runApp(MaterialApp (
      home: elevn()
  ));
}
class jason extends StatefulWidget {
  const jason({Key? key}) : super(key: key);

  @override
  _jasonState createState() => _jasonState();
}

class _jasonState extends State<jason> {

  Map map={

    "id":"487349",
    "name":"pooja Bhaumik",
    "score":1000
  };
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Data data=Data.fromjson(map);
    String id=data.id;
    String name=data.name;
    int score=data.score;

    print("id==$id===name=$name==score==$score");


  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
  
}

class Data {
  String id;
  String name;
  int score;

  Data(this.id,this.name,this.score);


  factory Data.fromjson(Map map) {
return Data(map['id'],map['name'],map['score']);

}
}

