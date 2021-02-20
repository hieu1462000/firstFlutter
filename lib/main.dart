import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "First app",
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: Container(
              margin: EdgeInsets.fromLTRB(25, 0, 0, 5),
              color: Colors.black,
              child: Image.asset(
                'assets/images/1.png',
                height: 20,
                width: 20,
              ),
            ),
            title: Center(
              child: Text(
                "Chat",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          ),
          body: MyBody(),
          bottomSheet: MyBottom(),
            ),
          );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff000000),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white12,
                shape: BoxShape.rectangle,
              ),
              constraints: BoxConstraints(maxHeight: 400, maxWidth: 550),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white54,
                    size: 15,
                  ),
                  Text(
                    "Tìm kiếm",
                    style: TextStyle(fontSize: 15, color: Colors.white54),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
              ),
              constraints: BoxConstraints(maxWidth: 550),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              'https://image.shutterstock.com/image-vector/add-video-icon-upload-black-260nw-1492624190.jpg'),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        'https://scontent-hkg4-2.xx.fbcdn.net/v/t1.0-9/123764230_4886606101357009_8821779913225183395_o.jpg?_nc_cat=110&ccb=3&_nc_sid=09cbfe&_nc_ohc=xNFIUC0UxkYAX_OYluh&_nc_ht=scontent-hkg4-2.xx&oh=1dcdc06d9185beebf54a4a8c0d31c1ac&oe=60573499'),
                  ),
                  CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(
                          'https://scontent-hkg4-1.xx.fbcdn.net/v/t1.0-1/p100x100/142082192_1188046581614714_6862495453883521579_n.jpg?_nc_cat=106&ccb=3&_nc_sid=7206a8&_nc_ohc=YFs83XB0SrsAX-2aPsd&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent-hkg4-1.xx&tp=6&oh=cf98fb95612f1b92322e7dcac9400c7d&oe=60559B22')),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        'https://scontent-hkg4-2.xx.fbcdn.net/v/t1.0-1/p100x100/149568166_468898274452894_2702692404917531655_n.jpg?_nc_cat=111&ccb=3&_nc_sid=7206a8&_nc_ohc=oi--vw8ul70AX8a6Sas&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent-hkg4-2.xx&tp=6&oh=e730e1e82378be3239cc5c2dd30e1f2e&oe=605787F0'),
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        'https://scontent-hkg4-1.xx.fbcdn.net/v/t31.0-1/p100x100/18620850_613977542143595_1196165832587839718_o.jpg?_nc_cat=105&ccb=3&_nc_sid=7206a8&_nc_ohc=FPWKSviYMlUAX-ZROon&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent-hkg4-1.xx&tp=6&oh=898bc574feb74c4d42aa73e3477dfee4&oe=60564FF2'),
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        'https://scontent.fhan3-1.fna.fbcdn.net/v/t1.0-1/p100x100/147831690_1846091228884239_196139130547667392_n.jpg?_nc_cat=102&ccb=3&_nc_sid=7206a8&_nc_ohc=VGIs3oiZX3gAX_-StC1&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fhan3-1.fna&tp=6&oh=1a6f2274e8fe3b633dd47b5beb647abd&oe=6057B0CB'),
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        'https://scontent.fhan4-1.fna.fbcdn.net/v/t1.0-1/p100x100/95821460_1781640095323975_8580698986384457728_n.jpg?_nc_cat=104&ccb=3&_nc_sid=7206a8&_nc_ohc=sqDihPFkP1QAX8o1YMY&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fhan4-1.fna&tp=6&oh=72d0510977d0635d194b9170f05165c5&oe=6058A962'),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
              ),
              constraints: BoxConstraints(maxWidth: 550),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        'https://scontent-hkg4-2.xx.fbcdn.net/v/t1.0-9/123764230_4886606101357009_8821779913225183395_o.jpg?_nc_cat=110&ccb=3&_nc_sid=09cbfe&_nc_ohc=xNFIUC0UxkYAX_OYluh&_nc_ht=scontent-hkg4-2.xx&oh=1dcdc06d9185beebf54a4a8c0d31c1ac&oe=60573499'),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.black),
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Text(
                          "Quynh Nguyen\noke",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
              ),
              constraints: BoxConstraints(maxWidth: 550),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        'https://scontent-hkg4-1.xx.fbcdn.net/v/t1.0-1/p100x100/142082192_1188046581614714_6862495453883521579_n.jpg?_nc_cat=106&ccb=3&_nc_sid=7206a8&_nc_ohc=YFs83XB0SrsAX-2aPsd&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent-hkg4-1.xx&tp=6&oh=cf98fb95612f1b92322e7dcac9400c7d&oe=60559B22'),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.black),
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Text(
                          "Hao Nguyen\noke",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
              ),
              constraints: BoxConstraints(maxWidth: 550),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        'https://scontent-hkg4-2.xx.fbcdn.net/v/t1.0-1/p100x100/149568166_468898274452894_2702692404917531655_n.jpg?_nc_cat=111&ccb=3&_nc_sid=7206a8&_nc_ohc=oi--vw8ul70AX8a6Sas&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent-hkg4-2.xx&tp=6&oh=e730e1e82378be3239cc5c2dd30e1f2e&oe=605787F0'),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.black),
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Text(
                          "Duc Anh Nguyen\noke",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
              ),
              constraints: BoxConstraints(maxWidth: 550),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        'https://scontent-hkg4-1.xx.fbcdn.net/v/t31.0-1/p100x100/18620850_613977542143595_1196165832587839718_o.jpg?_nc_cat=105&ccb=3&_nc_sid=7206a8&_nc_ohc=FPWKSviYMlUAX-ZROon&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent-hkg4-1.xx&tp=6&oh=898bc574feb74c4d42aa73e3477dfee4&oe=60564FF2'),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.black),
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Text(
                          "Vũ Longg\noke",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
              ),
              constraints: BoxConstraints(maxWidth: 550),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        'https://scontent-hkg4-1.xx.fbcdn.net/v/t1.0-1/p100x100/147831690_1846091228884239_196139130547667392_n.jpg?_nc_cat=102&ccb=3&_nc_sid=7206a8&_nc_ohc=VGIs3oiZX3gAX_-StC1&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent-hkg4-1.xx&tp=6&oh=1459bdcafb1f31dc430c80f6217463a5&oe=6057B0CB'),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.black),
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Text(
                          "Lâm Tùng Nguyen\noke",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
              ),
              constraints: BoxConstraints(maxWidth: 550),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        'https://scontent.fhan3-3.fna.fbcdn.net/v/t1.30497-1/c29.0.100.100a/p100x100/84241059_189132118950875_4138507100605120512_n.jpg?_nc_cat=1&ccb=3&_nc_sid=7206a8&_nc_ohc=Je6jWl4UgtwAX-MjvWJ&_nc_oc=AQkkrDDpXRgT_q9Lx0JRfk9qyDO8ueY9tTrKE_QQT0LxeOZJYKS4zoSZ4_PAsjtrf18&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fhan3-3.fna&tp=27&oh=65e7d73d59c10a162e56d8abdae43d83&oe=6056B19E'),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.black),
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Text(
                          "Hieu Nguyen\noke",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
              ),
              constraints: BoxConstraints(maxWidth: 550),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        'https://scontent.fhan4-1.fna.fbcdn.net/v/t1.0-1/p100x100/95821460_1781640095323975_8580698986384457728_n.jpg?_nc_cat=104&ccb=3&_nc_sid=7206a8&_nc_ohc=sqDihPFkP1QAX8o1YMY&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fhan4-1.fna&tp=6&oh=72d0510977d0635d194b9170f05165c5&oe=6058A962'),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.black),
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Text(
                          "Nguyen Viet Hung\noke",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
              ),
              constraints: BoxConstraints(maxWidth: 550),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        'https://scontent.fhan3-3.fna.fbcdn.net/v/t1.30497-1/c29.0.100.100a/p100x100/84241059_189132118950875_4138507100605120512_n.jpg?_nc_cat=1&ccb=3&_nc_sid=7206a8&_nc_ohc=Je6jWl4UgtwAX-MjvWJ&_nc_oc=AQkkrDDpXRgT_q9Lx0JRfk9qyDO8ueY9tTrKE_QQT0LxeOZJYKS4zoSZ4_PAsjtrf18&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fhan3-3.fna&tp=27&oh=65e7d73d59c10a162e56d8abdae43d83&oe=6056B19E'),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.black),
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Text(
                          "Minh Hieu\noke",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

class MyBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.rectangle,
            ),
            height: 80,
            width: 600,
            child: Row(
              children: [
                Container(
                    width: 300,
                    child: Column(
                      children: [
                        Image.asset('assets/images/3.png'),
                        Text(
                          "Chat",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    )),
                Container(
                    width: 300,
                    child: Column(
                      children: [
                        Image.asset('assets/images/4.png'),
                        Text(
                          "Mọi người",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
