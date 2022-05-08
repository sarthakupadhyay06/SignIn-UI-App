import 'package:flutter/material.dart';
class sign extends StatefulWidget {
  sign({Key? key}) : super(key: key);

  @override
  State<sign> createState() => _signState();
}

class _signState extends State<sign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Stack(
          children:<Widget> [
                   Container(
                     height: double.infinity,
                     width: double.infinity,
                     decoration: BoxDecoration(
                       gradient: LinearGradient(
                         begin: Alignment.topCenter,
                         end: Alignment.bottomCenter,
                         colors:[ Color(0xffb0e0e6),
                         Color(0xffaef0f3),
                        
                         Color.fromARGB(255, 7, 213, 240),
                          Color.fromARGB(255, 7, 213, 240),
                         ]
                       )
                     ),
                     child: ListView(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left:125,top: 125),
                           child: Text("Sign In",style: TextStyle(
                             fontSize: 35,color: Colors.purple,fontWeight: FontWeight.bold,
                           )),
                         ),
                         SizedBox(height: 40,),
                         
                          Padding(
                            padding: const EdgeInsets.only(left: 2,right: 2),
                            child: SizedBox(height: 322,width: 70,
                            child:Card(
                              color:Color.fromARGB(255, 200, 240, 241), 
                              child: ListView(
                                children : [ 
                                  Padding(
                             padding: const EdgeInsets.only(top:20,),
                             child: Text("EMAIL ID",style: TextStyle(color: Colors.white),),
                         ),
                                Padding(
                                  padding: const EdgeInsets.only(top:20),
                                  child: TextField(
                                  obscureText: true,
                                  textInputAction: TextInputAction.send,
                                  cursorColor: Colors.purple,
                                  cursorRadius: Radius.circular(2.0),
                                  cursorWidth: 2.0,
                                  decoration: InputDecoration(
                                   enabledBorder: OutlineInputBorder(
                                   borderSide: new BorderSide(color: Colors.white),
                                   borderRadius: new BorderRadius.circular(25.7),
                                   ),
                                   focusedBorder: UnderlineInputBorder(
                                   borderSide: new BorderSide(color: Colors.white),
                                    borderRadius: new BorderRadius.circular(25.7),
                                  ),
                                  prefixIcon: Icon(Icons.email,color: Colors.purple,),
                                  prefixIconColor: Colors.purple,
                                  labelText: 'Enter your Email',
                                  labelStyle: TextStyle(color: Colors.purple),)
                                  ),
                                ),
                               SizedBox(height:40),
                                Padding(
                                padding: const EdgeInsets.only(bottom: 19),
                                child: Text("PASSWORD",style: TextStyle(color: Colors.white),),
                                ),

                               TextField(
                                obscureText: true,
                                textInputAction: TextInputAction.send,
                                cursorColor: Colors.purple,
                                cursorRadius: Radius.circular(2.0),
                                cursorWidth: 2.0,
                                decoration: InputDecoration(
                                 enabledBorder: OutlineInputBorder(
                                 borderSide: new BorderSide(color: Colors.white),
                                 borderRadius: new BorderRadius.circular(25.7),
                                 ),
                                focusedBorder: UnderlineInputBorder(
                                borderSide: new BorderSide(color: Colors.white),
                                borderRadius: new BorderRadius.circular(25.7),
                                ),
                                prefixIcon: Icon(Icons.lock,color: Colors.purple,),
                                labelText: 'Enter your Password',
                                labelStyle: TextStyle(color: Colors.purple))
                                ),
                                SizedBox(height: 20,),
                                Padding(
                                  padding: const EdgeInsets.only(left:235),
                                  child: GestureDetector(
                                    child:Text("Forget Password?",style: TextStyle(color: Colors.white),)
                                  ),
                                )


]
                              ),)
                              
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:25,left: 10,right: 10),
                            child: ElevatedButton(onPressed: (){}, child: Text("LOGIN",style: TextStyle(
                              color: Colors.blue.shade300),),
                            style: ElevatedButton.styleFrom(primary: Colors.white,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),)),
                   Padding(
                            padding: const EdgeInsets.only(top: 10,left:112),
                            child: GestureDetector(onTap: (){}, child: Text("Don't have an Account?",style: TextStyle(
                              color: Colors.white),),
                            )),
                          
                       ],
                     ),
                   )],
        ),
      ),
    );
  }
}