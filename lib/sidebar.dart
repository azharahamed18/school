import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:adobe_xd/page_link.dart';
import './Chat.dart';
import './Events.dart';
import './Reminder.dart';
import './Home.dart';
import 'package:adobe_xd/specific_rect_clip.dart';
import 'package:flutter_svg/flutter_svg.dart';

class sidebar extends StatelessWidget {
  sidebar({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(186.0, 599.0),
                child: Container(
                  width: 73.0,
                  height: 28.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xffe3e3e3),
                  ),
                ),
              ),
            ],
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
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(286.0, 604.0),
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
            offset: Offset(209.0, 604.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  duration: 0.3,
                  ease: Curves.easeOut,
                  pageBuilder: () => Events(),
                ),
              ],
              child: Text(
                'Events',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 14,
                  color: const Color(0xff0e0b0b),
                ),
                textAlign: TextAlign.left,
              ),
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
          Transform.translate(
            offset: Offset(216.0, 6.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  duration: 0.3,
                  ease: Curves.easeOut,
                  pageBuilder: () => Home(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(13.0, 17.0),
                    child: Container(
                      width: 44.0,
                      height: 34.0,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(19.0, 19.0),
                    child:
                        // Adobe XD layer: 'slide' (shape)
                        Container(
                      width: 28.0,
                      height: 30.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage(''),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SpecificRectClip(
            rect: Rect.fromLTWH(0, 0, 239, 594),
            child: UnconstrainedBox(
              alignment: Alignment.topLeft,
              child: Container(
                width: 239,
                height: 594,
                child: GridView.count(
                  primary: false,
                  padding: EdgeInsets.all(0),
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  crossAxisCount: 1,
                  childAspectRatio: 0.40235690235690236,
                  children: [
                    {},
                  ].map((map) {
                    return Stack(
                      children: <Widget>[
                        Container(
                          width: 239.0,
                          height: 594.0,
                          decoration: BoxDecoration(
                            color: const Color(0xff130505),
                            border: Border.all(
                                width: 1.0, color: const Color(0xff1d0303)),
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(4.0, 7.0),
            child: Container(
              width: 230.0,
              height: 110.0,
              decoration: BoxDecoration(
                color: const Color(0xff5824c4),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 23.0),
            child: Container(
              width: 73.0,
              height: 73.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(36.5, 36.5)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xfff6f4f4)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(110.0, 23.0),
            child: Text(
              'Ahamed Azhar',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 14,
                color: const Color(0xfff5dddd),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(110.0, 49.0),
            child: Text(
              'App Developer',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 12,
                color: const Color(0xfff5dddd),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(0.5, 117.5),
            child: SvgPicture.string(
              _shapeSVG_3f5fdb504a3c4aab8a8af616d16aff1b,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(9.0, 132.0),
            child: SpecificRectClip(
              rect: Rect.fromLTWH(0, 0, 230, 330),
              child: UnconstrainedBox(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 230,
                  height: 324,
                  child: GridView.count(
                    primary: false,
                    padding: EdgeInsets.all(0),
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 20,
                    crossAxisCount: 1,
                    childAspectRatio: 3.59375,
                    children: [
                      {},
                      {},
                      {},
                      {},
                      {},
                    ].map((map) {
                      return Transform.translate(
                        offset: Offset(-4.0, -118.0),
                        child: Stack(
                          children: <Widget>[
                            Transform.translate(
                              offset: Offset(4.0, 118.0),
                              child: Container(
                                width: 230.0,
                                height: 64.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xff130505),
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0xff130505)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(22.0, 139.0),
            child: Text(
              'Time Table',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 15,
                color: const Color(0xfff5dddd),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 203.0),
            child: Text(
              'Daily Updates',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 15,
                color: const Color(0xfff5dddd),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(25.0, 267.0),
            child: Text(
              'Assignment',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 15,
                color: const Color(0xfff5dddd),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 326.0),
            child: Text(
              'Text Book',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 15,
                color: const Color(0xfff5dddd),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _shapeSVG_3f5fdb504a3c4aab8a8af616d16aff1b =
    '<svg viewBox="0.5 117.5 243.0 1.0" ><path transform="translate(0.5, 117.5)" d="M 0 0 L 243 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
