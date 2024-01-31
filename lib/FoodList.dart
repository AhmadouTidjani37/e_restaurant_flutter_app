import 'package:flutter/material.dart';
import 'FoodModel.dart';


class FoodList extends StatelessWidget {

  List<FoodModel> foods = [
    FoodModel(
      'Spagetti',
      'Details',
      "assets/g.jfif",
        12,
    ),
    FoodModel(
      'Pizza',
      'Detail,Pizza',
      "assets/p.jfif",
      16,
    ),
    FoodModel(
      'Glace',
      'Details',
      "assets/ice.jfif",
        12,
    ),
    FoodModel(
      'Pizza',
      'Detail,Pizza',
      "assets/p.jfif",
      16,
    ),
     FoodModel(
      'Spagetti',
      'Details',
      "assets/g.jfif",
        12,
    ),
    FoodModel(
      'Pizza',
      'Detail,Pizza',
      "assets/p.jfif",
      16,
    ),
  ];

  FoodList({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 42, 18, 82),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.restaurant_menu,color: Colors.white,),
                onPressed: (){},
              ),
              Container(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.search,color: Colors.white,),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(Icons.settings,color: Colors.white,),
                      onPressed: (){},
                    )
                  ],
                ),
                ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('E-Restaurant',style: TextStyle(fontSize: 28,color: Colors.white),),
                Text('  IUT',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w300),)
              ]
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                padding: EdgeInsets.only(left: 20,right: 20,top: 6),
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))),
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index){
                    return Row(
                      children: <Widget>[
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: Image.network("${foods[index].pic}",width: 60,),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text(foods[index].name,style: TextStyle(fontSize: 16,color: Colors.black),),
                              Text(foods[index].detail,style: TextStyle(fontSize: 10,color: Colors.black87),),
                            ],
                          ),
                        ),
                        Container(
                          width: 60,
                          child: Text(foods[index].price.toString(),style: TextStyle(fontSize: 14,color: Colors.red),),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) => Divider() ,
                  itemCount: foods.length,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
