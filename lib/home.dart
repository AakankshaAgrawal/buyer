import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:buyer/constants.dart';
import 'package:buyer/API.dart';
import 'package:url_launcher/url_launcher.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  APIservice apIservice = APIservice();

  getProducts() async {
    await apIservice.getProductList();
  }
  @override
  void initState() {
    getProducts();
    getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text("AVSHESH"),
      ),

      body:Center(
        child: ListView.builder(itemCount: Productlist == null ? 0 : Productlist.length,
    itemBuilder: (BuildContext context, int index) {
    return InkWell( child: Container(
    width: 350,
    height: 250,
    child:Card(
    shadowColor: Colors.green[700],
    elevation: 4.0,
    child: Row(
    children: [
    Expanded(
    flex: 1,
    child: Container(
    child: Padding(
    padding: const EdgeInsets.fromLTRB(5.0, 2, 2, 2),
    child: Image.network(
    'https://assets.thehansindia.com/h-upload/feeds/2019/07/13/195638-paddy-crop.jpg'),
    ),
    ),
    ),
    SizedBox(
    width: 8.0,
    ),
    Expanded(
    flex: 2,
    child:
    Padding(
    padding: const EdgeInsets.all(1.0),
    child: Column(
    children: [
    SizedBox(
    height: 30,
    width: 200,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    IconButton(
    icon: Icon(Icons.phone, color: Colors.blue,),
    onPressed: (){
      launch('tel:'+ Productlist[index][0]);
    }
    ),
    IconButton(
    icon: Icon(
    Icons.email, color:Colors.blue,),
    onPressed: () {
      launch('mailto:admin@afarm.org?'+ Productlist[index][1]);
    },

    ),
    ],
    ),
    ),
    SizedBox(
    height: 10,
    ),
    SizedBox(
    height: 60,
    child: ListTile(
    title: Text('LOCATION\n' + Productlist[index][5],
    style: TextStyle(fontSize: 14),),
    ),
    ),
    SizedBox(
    height: 40,
    child: ListTile(
    title: Text('STUBBLE\n'+Productlist[index][2],
    style: TextStyle(fontSize: 14),),
    ),
    ),
    SizedBox(
    height: 40,
    child: ListTile(
    title: Text('QUANTITY\n'+Productlist[index][3].toString(),
    style: TextStyle(fontSize: 14),),
    ),
    ),
    SizedBox(
    height: 40,
    child: ListTile(
    title: Text('PRICE\n'+Productlist[index][4].toString(),
    style: TextStyle(fontSize: 14),),
    ),
    )]
    )
    )
    ),
    ]
    ),
    ),
    ),);}

      ),
      )


    );
  }
}


