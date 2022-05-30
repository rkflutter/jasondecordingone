import 'package:flutter/material.dart';

class Welcom4 extends StatefulWidget {
  const Welcom4({Key? key}) : super(key: key);

  @override
  _Welcom4State createState() => _Welcom4State();
}

class _Welcom4State extends State<Welcom4> {

  Map map = {
    "id":1,
    "name":"ProductName",
    "images":[
      {
        "id":11,
        "imageName":"xCh-rhy"
      },
      {
        "id":31,
        "imageName":"fjs-eun"
      }
    ]
  };

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Rohitdata rohitdata=Rohitdata.fromjason(map);
    String  imageName=rohitdata.images[1].imageName;
    print("$imageName");


  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Rohitdata {
  // "id":1,
  // "name":"ProductName",
  // "images":[
  // {
  // "id":11,
  // "imageName":"xCh-rhy"
  // },
  // {
  // "id":31,
  // "imageName":"fjs-eun"
  // }

  int id;
  String name;
  List <MM> images;

  Rohitdata(this.id, this.name, this.images);

  factory Rohitdata.fromjason(Map map) {
    List<MM>temp= [];
    List<Map>list=map['images'];
    for(int i=0; i<list.length; i++)
      {
         MM mm=MM.fromjason(list[i]);
         temp.add(mm);

      }

    return Rohitdata(map['id'],map['name'],temp);
  }

}

class MM {

  int id;
  String imageName;

  MM(this.id, this.imageName);

  factory MM.fromjason(Map list) {

    return MM(list['id'],list['imageName']);

  }

}
