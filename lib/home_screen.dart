import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  // const Home({super.key});
 var number =4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


// list view builder........lear to video Mapp Incc.......
    appBar: AppBar(
      title:Text("List View.Builder"),
    ),
    body: SingleChildScrollView(
      child: Column(





        children: [Container(),



        
          OutlinedButton(onPressed: (){
           setState(() {
              number = number+1;
           });
          },
           child: Text("Add List Tile")),
        //ist view ko wrap kiya column...
          ListView.builder(
            shrinkWrap: true,
            itemCount: number,
            itemBuilder: (context,index){
              return Container(
                color: index.isEven ? Colors.blue:Colors.orange,
                child: ListTile(
                  // tileColor:Colors.orange ,
                leading:Icon(Icons.local_activity) ,
                title:Text("Hello") ,
                subtitle: Text("Subtitle"),
                trailing:Icon(Icons.device_hub),
                ),
              );            
              
          },
          
          ),
        ],
      ),
    ),

    );

  }
}
