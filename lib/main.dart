import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:HomePage());
  }
}






class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
Icon theicon=Icon(Icons.favorite_border,color: Color.fromARGB(255, 247, 240, 240),);
Color appcolor= Color.fromARGB(255, 168, 183, 194);
Color contcolor = Color.fromARGB(255, 168, 183, 194);
Color textcolor=  Colors.black;
Color backgroundColor1=Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: backgroundColor1,appBar: AppBar(
      backgroundColor: appcolor,
      actions: [TextButton(onPressed: (){
        setState(() {
          appcolor=Colors.black;
          contcolor = Colors.black;
          textcolor=Color.fromARGB(174, 246, 240, 240);
          backgroundColor1=Color.fromARGB(255, 110, 110, 110);
          
        });
      }, child: Text("Dark mood")),]
      ,leading: Icon(Icons.account_box_rounded)
      ,centerTitle: true,title: Text("Home Page"),
      ),
    body:ListView(children: [ListView.builder(shrinkWrap: true,
    itemCount: theApp.length,
    itemBuilder: ((context, index){
      return Container( color: contcolor,margin:EdgeInsets.all(20),
      child:Column(children: [ 
     
Text(theApp[index]["course name"].toString(),textAlign:TextAlign.center,style:  TextStyle(fontSize: 30,color: textcolor)),
Padding(padding:EdgeInsets.only(left: 220) ,child: Text(theApp[index]["Date"].toString(),style:  TextStyle(color: textcolor)),),
Padding(padding:EdgeInsets.only(left: 220),child: Text(theApp[index]["Location"].toString(), style: TextStyle(color: Colors.white)), )   ,
IconButton(onPressed: (){
        setState(() {
         theicon=const Icon(Icons.favorite,color: Colors.red,);
        });
      }, icon: theicon), 
      ]) ,);
    })
    )
    ],
    )
    );
  }
}
List theApp=[{"course name":"Flutter","Date":"1/1/2023","Location":"Riyadh"},
{"course name":"Java","Date":"26/8/2022","Location":"Riyadh",},
{"course name":"Python","Date":"9/12/2022","Location":"Jeedah"},
{"course name":"C++","Date":"13/4/2023","Location":"Khobar"},
{"course name":"Javascript","Date":"1/1/2023","Location":"Riyadh"}];
/*
ListView.builder(itemCount: shop.length,itemBuilder:(context, index) {
        return Column(children:[Text(shop[index]["id"].toString()) 
        Text(shop[index]["id"].toString()),
        Text(shop[index]["name"].toString()),
        Text(shop[index]["price"].toString()),
        Text(shop[index]["descrip"].toString()),
        Image.network(shop[index]["imgurl"].toString()),
        Text(shop[index]["rate"].toString()),
         ],);
      }
      )
*/