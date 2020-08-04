import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidablePage extends StatelessWidget {
  const SlidablePage({Key key}) : super(key: key);

  _showSnackBar(String title) {
    print(title);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: Container(
        color: Colors.white,
        // child: ListTile(
        //   leading: CircleAvatar(
        //     backgroundColor: Colors.indigoAccent,
        //     child: Text('123'),
        //     foregroundColor: Colors.white,
        //   ),
        //   title: Text('Tile n°123'),
        //   subtitle: Text('SlidableDrawerDelegate'),
        // ),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            elevation: 2,
            child: InkWell(
              child: Container(
                  margin: EdgeInsets.only(bottom: 5.0, top: 5.0),
                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                  height: 50,
                  child: Center(
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                    'assets/icons/outline_home.png'),
                                margin: EdgeInsets.all(5),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.45,
                                      child: Text(
                                        'company',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Image.asset(
                                          'assets/icons/outline_home.png',
                                          height: 12,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          'address',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Image.asset(
                                          'assets/icons/outline_receipt.png',
                                          height: 12,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          'item',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Builder(builder: (context) {
                                // if (this.volunteerList['endDate'] != '' &&
                                //     this.volunteerList['endDate'] != null &&
                                //     this.volunteerList['complete'] == true) {
                                return Container(
                                  height: 20,
                                  child: Text(
                                    'test',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                );
                                // } else {
                                //   return Container();
                                // }
                              }),
                              Container(
                                  height: 50,
                                  width: 50,
                                  child: Builder(builder: (context) {
                                    return FlatButton(
                                      padding: EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      color: Color.fromRGBO(1, 167, 182, 1),
                                      child: Text(
                                        '승인대기',
                                        style: TextStyle(fontSize: 11),
                                        textAlign: TextAlign.center,
                                      ),
                                      onPressed: () => print('test'),
                                      textColor: Colors.red,
                                    );
                                  })),
                            ],
                          )
                        ]),
                  )),
              // onTap: () => {
              //   Navigator.of(context).push(MaterialPageRoute(
              //       builder: (context) => DetailPage(
              //           volunteerList['code'],
              //           this.isMyList == true ? false : true,
              //           volunteerList['status'] == 1 ? true : false))),
              // },
              onTap: null,
            )),
      ),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () => _showSnackBar('Delete'),
        ),
      ],
    ));
  }
}
