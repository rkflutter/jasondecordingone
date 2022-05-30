import 'package:flutter/material.dart';

class mythree extends StatefulWidget {
  const mythree({Key? key}) : super(key: key);

  @override
  _mythreeState createState() => _mythreeState();
}

class _mythreeState extends State<mythree> {
  Map map = {
    "shape_name": "rectangle",
    "property": { "width": 5.0, "breadth": 10.0}
  };

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Rohit rohit=Rohit.fromjson(map);
    String shape_name=rohit.shape_name;
    double width=rohit.rk.width;
    double breadth=rohit.rk.breadth;
    print("${shape_name}");
    print("${width}");
    print("${breadth}");

  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Rohit {
  String shape_name;
  Rk rk;

  Rohit(this.shape_name, this.rk);

  factory Rohit.fromjson(Map map) {
    return Rohit(map['shape_name'],Rk.fromjason(map['property']));
  }


}

class Rk {

  double width;
  double breadth;

  Rk(this.width, this.breadth);

  factory Rk.fromjason(map) {
    return Rk(map['width'],map['breadth']);
    
  }

}
