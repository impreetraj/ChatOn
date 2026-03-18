import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff703eff),

      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40.0 , left: 10.0 , right: 10.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios_new, color: Colors.white,)),
                Container(
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.25),
                  child: Text(
                    "Preet Raj",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0,),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 40.0 , left: 20.0),
                              
                              decoration: BoxDecoration(
                                color: Color(0xff703eff),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0),
                                  bottomRight: Radius.circular(30.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Text("hyy how are you" , style: TextStyle(color: Colors.white , fontSize: 18),),
                              )),
                          ],
                        ),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10.0 , right: 20.0),
                              
                              decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Text("hyy how are you" , style: TextStyle(color: Colors.white , fontSize: 18),),
                              )),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/1.56),
                          child: Row(children: [
                          Container(
                            margin: EdgeInsets.only( top: 10, left: 10.0),
                            padding: EdgeInsets.all(9.0) ,
                            decoration: BoxDecoration(color: Color(0xff703eff) , borderRadius: BorderRadius.circular(30.0)),
                            child: Icon(Icons.mic , size: 30, color:Colors.white ,) ),
                            SizedBox(width: 5,),
                            Expanded(
                              
                              child: Container(
                                margin: EdgeInsets.only(top: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Type a message",
                                    suffixIcon: Icon(Icons.attach_file ,),
                                    hintStyle: TextStyle(color: Colors.grey),
                                    filled: true,
                                    fillColor: const Color.fromARGB(255, 243, 228, 228),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Container(
                            margin: EdgeInsets.only( top: 10, left: 5.0 , right: 10),
                            padding: EdgeInsets.all(9.0) ,
                            decoration: BoxDecoration(color: Color(0xff703eff) , borderRadius: BorderRadius.circular(30.0)),
                            child: Icon(Icons.send , size: 30, color:Colors.white ,) ),

                        ],))
                        
                        
                      ]),
                            ),
                )
        ],
      ),
    );
  }
}