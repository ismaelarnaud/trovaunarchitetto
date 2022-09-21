import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trovaunarchitetto/components/hoverable_button.dart';
import 'package:trovaunarchitetto/utilities/CustomAppBarConstants.dart';

import 'components/horizontal_divider.dart';
import 'components/search_bar.dart';
import 'layouts/mobile_layout.dart';
import 'layouts/narrow_layout.dart';
import 'layouts/wide_layout.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> professions = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff251762),
      appBar: AppBar(
        backgroundColor: const Color(0xff251762),
        title: TextButton(
          style: ButtonStyle(

          ),
          onPressed: () {

          },
          child: const Text('TrovaUnArchitetto.it',
            style: TextStyle(
                color: Color(0xffE2C5DE),
                fontWeight: FontWeight.bold,
              fontSize: 30.0
            ),
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text('Professionisti', style: TextStyle(color: Colors.white.withOpacity(0.5)),)
          ),
          TextButton(
              onPressed: () {},
              child: Text('Progetti', style: TextStyle(color: Colors.white.withOpacity(0.5)),)
          ),
          TextButton(
              onPressed: () {},
              child: Text('Chi siamo', style: TextStyle(color: Colors.white.withOpacity(0.5)),)
          ),
          TextButton(
              onPressed: () {},
              child: Text('Accedi', style: TextStyle(color: Colors.white.withOpacity(0.5)),)
          ),
        ],
      ),
      body: SafeArea(
          child: LayoutBuilder(
            builder: (context,constraints) {
              if(constraints.maxWidth > 1080){
                  print('MaxWidth = ${constraints.maxWidth}');
                return const WideLayout();
              }else if (constraints.maxWidth < 300){
                //return const MobileLayout();
                //TODO
                return const WideLayout();
              }
              //return const NarrowLayout();
              //TODO
              return const WideLayout();
            }
          )
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {

          },
        backgroundColor: Colors.white,
        child: Icon(Icons.message,size: 30,color: Colors.black,),
      ),
    );
  }
}










