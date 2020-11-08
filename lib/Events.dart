import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:adobe_xd/page_link.dart';
import './Chat.dart';
import './Home.dart';
import './Reminder.dart';

class Events extends StatelessWidget {
  Events({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(105.0, 599.0),
            child: Container(
              width: 73.0,
              height: 28.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xff5824c4),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(186.0, 599.0),
            child: Container(
              width: 73.0,
              height: 28.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xff5824c4),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(267.0, 599.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  duration: 0.3,
                  ease: Curves.easeOut,
                  pageBuilder: () => Chat(),
                ),
              ],
              child: Container(
                width: 73.0,
                height: 28.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xffe3e3e3),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 599.0),
            child: Container(
              width: 73.0,
              height: 28.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                  colors: [const Color(0xff5824c4), const Color(0xff2c1262)],
                  stops: [0.0, 1.0],
                ),
                border: Border.all(width: 1.0, color: const Color(0xff4b3bdc)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(40.0, 604.0),
            child: Text(
              'Home',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 14,
                color: const Color(0xfff6eded),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(280.0, 604.0),
            child: Text(
              'Chat',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 14,
                color: const Color(0xff0e0b0b),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(203.0, 604.0),
            child: Text(
              'Events',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 14,
                color: const Color(0xfff6eded),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(110.0, 604.0),
            child: Text(
              'Reminder',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 14,
                color: const Color(0xfff6eded),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 599.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  duration: 0.3,
                  ease: Curves.easeOut,
                  pageBuilder: () => Home(),
                ),
              ],
              child: Container(
                width: 73.0,
                height: 28.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xffe3e3e3),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(40.0, 604.0),
            child: Text(
              'Home',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 14,
                color: const Color(0xff0e0b0b),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(105.0, 599.0),
            child: Container(
              width: 73.0,
              height: 28.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xffe3e3e3),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(110.0, 604.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  duration: 0.3,
                  ease: Curves.easeOut,
                  pageBuilder: () => Reminder(),
                ),
              ],
              child: Text(
                'Reminder',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 14,
                  color: const Color(0xff0e0b0b),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
