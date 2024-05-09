import 'package:anime_app/models/anime.dart';
import 'package:anime_app/utils/anime_ui_color.dart';
import 'package:flutter/material.dart';
import 'package:anime_app/widgets/silver_header.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

    @override
    Widget build(BuildContext context){
      return const Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              Header(),
              Trends(),
            ],
          ),
        )
      );
    }
}

class Trends extends StatelessWidget {
  const Trends({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: AspectRatio(
          aspectRatio: 16 / 13,
          child: Column(
            children: [
              HeaderTrends(),
              ListTrends()
            ],
          ),
        ),
      ),
    );
  }
}

class ListTrends extends StatelessWidget {
  const ListTrends({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (_, BoxConstraints constraints) {
          return ListView.builder(
            itemCount: trendsData.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(top: 10, left: 20),
            itemBuilder: (_, int index) {
              final anime = trendsData[index];
              final style = Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: AnimeUiColors.cyan,
                            fontWeight: FontWeight.w600
              );
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth * .375,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          anime.poster,
                          fit: BoxFit.cover,
                        ),
                      )
                    ),
                    const SizedBox(height: 15),
                    Text(
                      anime.name,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 7.5),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/logo_evil.svg'),
                        const SizedBox(width: 5),
                        Text(
                          '#: ${anime.number}',
                          style: style,
                        ),
                        const SizedBox(height: 7.5),
                        Text(
                          'Score: ${anime.score}',

                        )
                      ],
                    )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class HeaderTrends extends StatelessWidget {
  const HeaderTrends({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Trends',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Text(
            'View All',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: AnimeUiColors.cyan,
              fontWeight: FontWeight.w700
            ),
          )
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: SilverCustomHeaderDelegate(
      minHeight: 60,
      maxHeight: 60,
      child: Container(
        color: AnimeUiColors.background,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'My anime Stream',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AnimeUiColors.cyan
                    ),
                  ),
                ),
                const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
            const SizedBox(height: 5),
            Text(
              'What would you like to watch today?',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.white
              ),
            )
          ],
        ),
      )
      )
    );
  }
}