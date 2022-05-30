import 'package:flutter/material.dart';

class myfirstdemo extends StatefulWidget {
  const myfirstdemo({Key? key}) : super(key: key);

  @override
  _myfirstdemoState createState() => _myfirstdemoState();
}

class _myfirstdemoState extends State<myfirstdemo> {
  List list =[
    {
      "albumId": 1,
      "id": 1,
      "title": "accusamus beatae ad facilis cum similique qui sunt",
      "url": "http://placehold.it/600/92c952",
      "thumbnailUrl": "http://placehold.it/150/92c952"
    },
    {
      "albumId": 1,
      "id": 2,
      "title": "reprehenderit est deserunt velit ipsam",
      "url": "http://placehold.it/600/771796",
      "thumbnailUrl": "http://placehold.it/150/771796"
    },
    {
      "albumId": 1,
      "id": 3,
      "title": "officia porro iure quia iusto qui ipsa ut modi",
      "url": "http://placehold.it/600/24f355",
      "thumbnailUrl": "http://placehold.it/150/24f355"
    }
  ];
List temp=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for(int i=0; i<list.length; i++)
      {
        Rk rk=Rk.formjason(list[i]);
        temp.add(rk);
      }
    print(temp[2].thumbnailUrl);

  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Rk {
  int albumId;
  int  id;
  String title;
  String url;
  String thumbnailUrl;

  Rk(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);

  factory Rk.formjason(list) {

    return Rk(list['albumId'],list['id'],list['title'],list['url'],list['thumbnailUrl']);
  }
}


