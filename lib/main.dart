import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.black87,
                          size: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.black87,
                          size: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8, bottom: 8, left: 8, right: 20),
                        child: Icon(
                          Icons.send,
                          color: Colors.black87,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
                    //width: 50,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                story("assets/images/p1.jpg","keyvan arasteh"),
                                story("assets/images/p4.jpg","Deep"),
                                story("assets/images/p2.jpg","Ahmet selim över"),
                                story("assets/images/p5.jpg","Walker"),
                                story("assets/images/p3.jpg","Ramazan şen"),                   
                                story("assets/images/p6.JPG","Scofield"),
                                story("assets/images/p1.jpg","keyvan arasteh"),
                                story("assets/images/p4.jpg","Deep"),
                                story("assets/images/p2.jpg","Ahmet selim över"),
                                story("assets/images/p5.jpg","Walker"),
                                story("assets/images/p3.jpg","Ramazan şen"),                   
                                story("assets/images/p6.JPG","Scofield"),
                              ],
                            ),
                          ),
                          PostItem("assets/images/p1.jpg","assets/images/post1.jpg","Keyvan arastheh","boğaz"),
                          PostItem("assets/images/p2.jpg","assets/images/post2.jpg","ahmet selim över","fsm"),
                          PostItem("assets/images/p3.jpg","assets/images/post3.jpg","ramazan şen","istanbul/üsküdar"),
                          PostItem("assets/images/p4.jpg","assets/images/post4.jpg","Deep","istanbul/galataport"),
                          PostItem("assets/images/p5.jpg","assets/images/post5.jpg","Walker","sultanahmet camii"),
                          PostItem("assets/images/p6.jpg","assets/images/post6.jpg","scofield","istanbul/memleket"),
                        ],
                      ),
                    ),
                    color: Colors.white)),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                ),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.home,
                        size: 28,
                        color: Colors.black87,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.search,
                        size: 28,
                        color: Colors.black87,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.smart_display,
                        size: 28,
                        color: Colors.black87,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.favorite,
                        size: 28,
                        color: Colors.black87,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.person,
                        size: 28,
                        color: Colors.black87,
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  Container PostItem(String avatar, String photo, String name, String location) => Container(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(avatar),
                      radius: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          location,
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.more_horiz)
              ],
            ),
          ),
          Image.asset(photo),
          LikeCommentBox(),

          CommentBox("keyvan arasteh", "Çok güzel fotoğraf olmuş teşekkür ederim sana "),
          CommentBox("Ramazan şen", "Allah kabul etsin. "),
          CommentBox("ceylan", "elinize sağlık hocam iyi "),
          
          
          ]),
          
  
      );

  Padding LikeCommentBox() {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.black87,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.comment_bank_outlined,
                    color: Colors.black87,
                  ),
                ],
              ),
              Icon(
                Icons.flag_circle_outlined,
                color: Colors.black87,
              ),
            ],
          ),
        );
  }

  Padding CommentBox(String name, String comment) {
    return Padding(
          padding: const EdgeInsets.all(3.0),
        child : Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          fontSize: 12)),
              
                        TextSpan(text: " "),
              
                          TextSpan(
                      text: comment,
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          color: Colors.black54,
                          fontSize: 12)),
                        
                ]),               
              ),
            ),
          ],
        )
);
  }
      

  Widget story(String avatar , String name) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [const Color.fromRGBO(214, 71, 103, 1), const Color.fromRGBO(241, 166, 117, 1)]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 32,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 11),
          ),
        ],
      ),
    );
  }
}