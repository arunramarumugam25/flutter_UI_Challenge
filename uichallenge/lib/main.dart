import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apple UI Challenge',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle:true,
        title: Icon(Icons.cloud_circle,color:Colors.white),
        actions: <Widget>[
           Icon(Icons.shopping_cart,color:Colors.white),
        ],
      ),
      drawer: Drawer(

      ),
      body: Column(
        children:<Widget>
        [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top:10),child:Text('Apple Store',style: TextStyle(color:Colors.white,fontSize:22,fontWeight: FontWeight.w700,letterSpacing: 2),))
            ],),
             Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top:20,left: 50),child:Text('Special Offer',style: TextStyle(color:Colors.white,fontSize:16,))),
               Padding(padding: EdgeInsets.only(top:20,left: 30),child:Text('iPhone',style: TextStyle(color:Colors.grey,fontSize:14,))),
                Padding(padding: EdgeInsets.only(top:20,left: 30),child:Text('iPad',style: TextStyle(color:Colors.grey,fontSize:14,))),
                 Padding(padding: EdgeInsets.only(top:20,left: 30),child:Text('Watches',style: TextStyle(color:Colors.grey,fontSize:14,)))
             ],),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children:<Widget>
               [
                appleContainer('https://www.freepnglogos.com/uploads/airpods-png/airpods-wireless-headphones-apple-indiaistore-4.png','Air Pods Pro','(Air pods deliver effortless)','\$249'),
                appleContainer('https://www.searchpng.com/wp-content/uploads/2019/01/Apple-iWatch-Series-3-PNG.png','Apple Watch','Apple watch series 5','\$399')
               ]
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children:<Widget>
               [
                appleContainer('https://pngimg.com/uploads/iphone_11/iphone_11_PNG44.png','iPhone 11 Pro','Pro cameras,Pro display','\$499'),
                appleContainer('https://www.iphon.fr/app/uploads/2020/03/imaskpro.jpg','iMask Pro','Available 16 may','\$999')
               ]
             ), 
        ]
      ),
    );
  }
  Widget appleContainer(String product,String productname,String des,String price){
    return  Container(
                   width:MediaQuery.of(context).size.width/2.3,
                   height:MediaQuery.of(context).size.height/3,
                   margin:EdgeInsets.only(top:20,left: 20,bottom: 20),
                   decoration:BoxDecoration(color: Colors.black,boxShadow: [BoxShadow(color:Colors.grey,blurRadius:5)],borderRadius: BorderRadius.circular(20)),
                   child: SizedBox.expand(
                     child:Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: <Widget>[
                      Container(
                        width:100,
                        height:100,
                        decoration:BoxDecoration(image: DecorationImage(image: NetworkImage(product),fit:BoxFit.cover))
                      ),
                       Padding(padding: EdgeInsets.only(top:10,),child:Text(productname,style: TextStyle(color:Colors.white,fontSize:16,fontWeight: FontWeight.w600))),
                     Padding(padding: EdgeInsets.only(top:10,),child:Text(des,style: TextStyle(color:Colors.grey,fontSize:13,))),
                     Padding(padding: EdgeInsets.only(top:10,),child:Text(price,style: TextStyle(color:Colors.white,fontSize:16,fontWeight: FontWeight.w600))),
                     ],)
                   ),
                 );
  }
}
