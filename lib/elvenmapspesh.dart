import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class elevn extends StatefulWidget {
  const elevn({Key? key}) : super(key: key);


  @override
  State<elevn> createState() => _elevnState();
}

class _elevnState extends State<elevn> {

  datacreat? d1;
  bool stu=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mywellcreat();
  }
  Future<void> mywellcreat() async {
    var url = Uri.parse('https://rickandmortyapi.com/api/location');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    var result=jsonDecode(response.body);

    d1=datacreat.fromJson(result);


    setState(() {
      stu=true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:stu? SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bacgroung.jpg'),fit: BoxFit.fill
            )
          ),
          child: Column(
            children: [
              Container(
                child: Text("count=${d1!.info!.count}"),
              ),
              Container(
                child: Text("count=${d1!.info!.next}"),
              ),
              Container(
                child: Text("count=${d1!.info!.pages}"),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text("count=${d1!.info!.prev}"),
              ),
              Expanded(
                child: Container(

                   margin: EdgeInsets.all(10),
                    
                    child:ListView.builder(
                      itemCount: d1!.results!.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            // child: Stack(
                              children: [
                                Container(
                                  //margin: EdgeInsets.
                                  margin: EdgeInsets.all(10),
                                  child: Text("id${d1!.results![index].id}"),
                                ),

                                Container(
                                  margin: EdgeInsets.all(10),

                                  child: Text("url${d1!.results![index].residents}"),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),

                                  child: Text("${d1!.results![index].id}"),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),

                                  child: Text("${d1!.results![index].created}"),

                                ),
                                Container(
                                  child: Text("${d1!.results![index].url}"),
                                ),

                            //   ],
                            // ),
                          ]),
                        );
                      },

                  ),
                ),
              )



            ],
          ),
        ),
      ):Center(child: CircularProgressIndicator()),
    );
  }


}
class datacreat {
  Info? info;
  List<Results>? results;

  datacreat({this.info, this.results});

  datacreat.fromJson(Map<String, dynamic> json) {
    info = json['info'] != null ? new Info.fromJson(json['info']) : null;
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.info != null) {
      data['info'] = this.info!.toJson();
    }
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Info {
  int? count;
  int? pages;
  String? next;
  Null? prev;

  Info({this.count, this.pages, this.next, this.prev});

  Info.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    pages = json['pages'];
    next = json['next'];
    prev = json['prev'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['pages'] = this.pages;
    data['next'] = this.next;
    data['prev'] = this.prev;
    return data;
  }
}

class Results {
  int? id;
  String? name;
  String? type;
  String? dimension;
  List<String>? residents;
  String? url;
  String? created;

  Results(
      {this.id,
        this.name,
        this.type,
        this.dimension,
        this.residents,
        this.url,
        this.created});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    dimension = json['dimension'];
    residents = json['residents'].cast<String>();
    url = json['url'];
    created = json['created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['type'] = this.type;
    data['dimension'] = this.dimension;
    data['residents'] = this.residents;
    data['url'] = this.url;
    data['created'] = this.created;
    return data;
  }
}
