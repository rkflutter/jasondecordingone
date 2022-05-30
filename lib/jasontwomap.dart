import 'package:flutter/material.dart';



class jasonoo extends StatefulWidget {
  const jasonoo({Key? key}) : super(key: key);

  @override
  _jasonState createState() => _jasonState();
}



class _jasonState extends State<jasonoo> {
  Map map2 = {
    "city": "Mumbai",
    "streets": [ "address1", "address2"]
  };
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Data data=Data.fromjason(map2);

    String city=data.city;
    print("city${city}");
    List<String>streets=data.streets;
    print("strees..${streets}");
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Data {
  String city;
  List<String>streets;


  Data(this.city, this.streets);

  factory Data.fromjason(map2) {
    return Data(map2['city'],map2['streets']);

  }

}

