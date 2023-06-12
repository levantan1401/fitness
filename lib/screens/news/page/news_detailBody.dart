import 'package:fitness/core/const/color_constants.dart';
import 'package:fitness/data/news_data.dart';
import 'package:fitness/screens/news/widget/custom_tag.dart';
import 'package:fitness/screens/news/widget/image_container.dart';
import 'package:flutter/material.dart';

class NewsDetailBody extends StatelessWidget {
  const NewsDetailBody({Key? key}) : super(key: key);

  static const routeName = '/news/detailbody';
  @override
  Widget build(BuildContext context) {
    final newsBody = ModalRoute.of(context)!.settings.arguments as NewsDataBody;
    return ImageContainer(
      width: double.infinity,
      imageUrl: newsBody.image_Intro,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            _NewsHeadLine(
              news: newsBody,
            ),
            _BottomNewsBody(news: newsBody),
          ],
        ),
      ),
    );
  }
}

class _BottomNewsBody extends StatelessWidget {
  const _BottomNewsBody({
    super.key,
    required this.news,
  });

  final NewsDataBody news;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        color: Colors.white,
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTag(
              backgroundColor: Colors.black,
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundImage: NetworkImage(news.authorImageUrl),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  news.category,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(
                  width: 10.0,
                ),
              ],
            ),
            const SizedBox(
              width: 30.0,
            ),
            CustomTag(
              backgroundColor: const Color.fromRGBO(99, 88, 225, 1).withOpacity(0.12),
              children: [
                const Icon(
                  Icons.timer,
                  color: ColorConstants.primaryColor,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  '${DateTime.now().difference(news.createAt).inHours}H',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(color:ColorConstants.primaryColor),
                )
              ],
            ),
            const SizedBox(
              width: 30.0,
            ),
            CustomTag(
              backgroundColor: const Color.fromRGBO(99, 88, 225, 1).withOpacity(0.12),
              children: [
                const Icon(
                  Icons.remove_red_eye,
                  color: ColorConstants.primaryColor,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  '${news.views}',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(color:ColorConstants.primaryColor),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          news.title,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          news.body,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                height: 1.5,
              ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        GridView.builder(
            shrinkWrap: true,
            itemCount: 2,
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.25,
            ),
            itemBuilder: (context, index) {
              return ImageContainer(
                width: MediaQuery.of(context).size.width * 0.42,
                imageUrl: news.imageUrl,
                margin: const EdgeInsets.only(right: 5.0, bottom: 5.0),
              );
            })
      ]),
    );
  }
}

class _NewsHeadLine extends StatelessWidget {
  const _NewsHeadLine({
    super.key,
    required this.news,
  });

  final NewsDataBody news;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            CustomTag(
              backgroundColor: Colors.grey.withAlpha(150),
              children: [
                Text(
                  news.category,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              news.title,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  height: 1.25,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              news.subtitle,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
          ]),
    );
  }
}
