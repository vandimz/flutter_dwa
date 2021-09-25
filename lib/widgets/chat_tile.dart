import 'package:flutter/material.dart';
import 'package:flutter_dwa/theme.dart';

class ChatTile extends StatelessWidget {
  // const ChatTile({ Key? key }) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 33,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/image_shop_logo.png',
                width: 54,
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shoe Store',
                      style: primaryTextStyle.copyWith(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Good night, this item is on...',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: light,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Text(
                'Now',
                style: secondaryTextStyle.copyWith(
                  fontSize: 15,
                ),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Divider(
            thickness: 1,
            color: Color(0xff2B2939),
          )
        ],
      ),
    );
  }
}
