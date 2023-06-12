import 'package:fitness/core/const/color_constants.dart';
import 'package:fitness/data/news_data.dart';
import 'package:fitness/screens/news/page/news.dart';
import 'package:fitness/screens/news/page/news_detail.dart';
import 'package:fitness/screens/news/page/news_detailBody.dart';
import 'package:fitness/screens/news/widget/custom_tag.dart';
import 'package:fitness/screens/news/widget/image_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsContent extends StatelessWidget {
  const NewsContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      height: double.infinity,
      width: double.infinity,
      child: _createHomeBody(context),
    );
  }

  Widget _createHomeBody(BuildContext context) {
    NewsDataBody newsDataBody = NewsDataBody.newsData[0];
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          _NewOfTheDay(newsDataBody: newsDataBody),
          _BreakingNews(
            newsDatas: NewsData.newsData,
            newsDatasbody: NewsDataBody.newsData,
          ),
        ],
      ),
    );
  }
}

class _BreakingNews extends StatelessWidget {
  const _BreakingNews({
    Key? key,
    required this.newsDatas,
    required this.newsDatasbody,
  }) : super(key: key);

  final List<NewsData> newsDatas;
  final List<NewsDataBody> newsDatasbody;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: _ArticlesAboutFitnessNews(newsDatas: newsDatas),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 10.0, top: 0.0, right: 10.0, bottom: 0),
          child: _NutritionRegime(newsDatasbody: newsDatasbody),
        ),
      ],
    );
  }
}

class _NutritionRegime extends StatelessWidget {
  const _NutritionRegime({
    super.key,
    required this.newsDatasbody,
  });

  final List<NewsDataBody> newsDatasbody;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Nutrition Regime",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  height: 1.25,
                  color: Colors.black),
            ),
            Text(
              "More",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: newsDatasbody.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  margin: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      
                      Navigator.pushNamed(
                        context,
                        NewsDetailBody.routeName,
                        arguments: newsDatasbody[index],
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ImageContainer(
                            width: MediaQuery.of(context).size.width * 0.5,
                            imageUrl: newsDatasbody[index].imageUrl),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          newsDatasbody[index].title,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontWeight: FontWeight.bold, height: 1.5),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '${DateTime.now().difference(newsDatasbody[index].createAt).inHours} hours ago',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'by ${newsDatasbody[index].author}',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}

class _ArticlesAboutFitnessNews extends StatelessWidget {
  const _ArticlesAboutFitnessNews({
    super.key,
    required this.newsDatas,
  });

  final List<NewsData> newsDatas;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Articles News",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  height: 1.25,
                  color: Colors.black),
            ),
            Text(
              "More",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: newsDatas.length,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.5,
                margin: const EdgeInsets.only(right: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      NewsDetail.routeName,
                      arguments: newsDatas[index],
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ImageContainer(
                          width: MediaQuery.of(context).size.width * 0.5,
                          imageUrl: newsDatas[index].imageUrl),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        newsDatas[index].title,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontWeight: FontWeight.bold, height: 1.5),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${DateTime.now().difference(newsDatas[index].createAt).inHours} hours ago',
                        style:
                            Theme.of(context).textTheme.bodySmall!.copyWith(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'by ${newsDatas[index].author}',
                        style:
                            Theme.of(context).textTheme.bodySmall!.copyWith(),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _NewOfTheDay extends StatelessWidget {
  const _NewOfTheDay({
    super.key,
    required this.newsDataBody,
  });

  final NewsDataBody newsDataBody;

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      height: MediaQuery.of(context).size.height * 0.45,
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      imageUrl: newsDataBody.imageUrl,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTag(
            backgroundColor:
                const Color.fromRGBO(99, 88, 225, 1).withOpacity(0.12),
            children: [
              Text(
                "News of the Day",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: ColorConstants.primaryColor),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            newsDataBody.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold, height: 1.25, color: Colors.white),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Learn More',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
