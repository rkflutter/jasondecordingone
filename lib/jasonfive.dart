import 'package:flutter/material.dart';

class Welcom4 extends StatefulWidget {
  const Welcom4({Key? key}) : super(key: key);

  @override
  _Welcom4State createState() => _Welcom4State();
}

class _Welcom4State extends State<Welcom4> {


  List list = [
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

      @override
      List temp=[];
  void initState() {
    // TODO: implement initState
    super.initState();
    for(int i=0; i<list.length; i++)
      {
          Myimage image=Myimage.formjason(list[i]);
          temp.add(image);

      }
    print(temp[0].albumId);

  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Myimage {

  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;


  Myimage(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);

  factory Myimage.formjason(list) {

    return Myimage(list['albumId'], list['id'],list ['title'],list ['url'],list ['thumbnailUrl']);

  }
}

