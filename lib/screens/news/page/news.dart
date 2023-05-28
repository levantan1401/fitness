import 'package:fitness/screens/news/widget/news_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  static const routeName = '/news';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: _buildContext(context),
      body: NewsContent(),
    );
  }
  // BlocProvider<HomeBloc> _buildContext(BuildContext context) {
  //   return BlocProvider<HomeBloc>(
  //     create: (BuildContext context) => HomeBloc(),
  //     child: BlocConsumer<HomeBloc, HomeState>(
  //       buildWhen: (_, currState) => currState is HomeInitial,
  //       builder: (context, state) {
  //         return HomeContent();
  //       },
  //       listenWhen: (_, currState) => true,
  //       listener: (context, state) {},
  //     ),
  //   );
  // }
}


  