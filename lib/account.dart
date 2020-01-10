import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  final String title;

  MyAccount(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          CircleAvatar(
           
            maxRadius: 50.0,
            backgroundColor: Color(0xFFA50909),
            child: Text(
              "K",
              style: TextStyle(fontSize: 30.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Divider(
            color: Colors.white,
            indent: 20.0,
            endIndent: 20.0,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: TextFormField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  labelText: "Username",
                  fillColor: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right:20.0,left: 20.0,bottom: 10.0,top: 20.0),
            child: TextFormField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  labelText: "Email"),
                  
            ),
          ),
           Container(
            padding: EdgeInsets.only(right:20.0,left: 20.0,top: 10.0),
            child: TextFormField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  labelText: "Phone Number"),
                  
            ),
          ),
          Padding(padding: EdgeInsets.all(10.0),),
          Divider(
            indent: 20.0,
            endIndent: 20.0,
            color: Colors.white,
          ),
          Container(
            padding: EdgeInsets.only(left:20.0,right: 20.0,top: 10.0),
                      child: Container(
              padding: EdgeInsets.only(left: 10.0,right: 10.0),
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.credit_card),
                title: Text("Saved Cards"),
                trailing: GestureDetector(
                  onTap: (){print("hey");},
                  child: Icon(Icons.arrow_forward_ios,)),
              ),
                 
              
            ),
          ),
          SizedBox(
             height: 180.0,

          ),
          Container(
            alignment: Alignment.center,

            child: RaisedButton(
              highlightColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
                side: BorderSide(
                  color: Colors.white
                )
              ),
              color: Colors.black,
             
              onPressed: (){},
              child: Text("Save",style:TextStyle(fontSize: 20.0,color: Colors.white)),
            ),
          )

        ],
      ),
    );
  }
}
