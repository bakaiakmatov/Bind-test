import 'dart:math' as math;
import 'package:bind_test/constants/app_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../constants/app_Images.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_styles.dart';
import '../widgets/date_separator_widget.dart';
import '../widgets/drop_down_widget.dart';
import '../widgets/hide_button_widget.dart';
import '../widgets/translation_history.dart';
import 'main_screem_provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MainScreenProvider(),
      child: Consumer<MainScreenProvider>(
        builder: (context, provider, _) => Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                snap: false,
                floating: false,
                expandedHeight: 360.0,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  background: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 84,
                          height: 84,
                          child: ClipOval(
                            child: ColoredBox(
                              color: Colors.white,
                              child: Image.asset(
                                AppImages.usa,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 64,
                            ),
                            Text(
                              'Usa Account',
                              style: AppStyles.text18w400.copyWith(
                                color: AppColors.dustyGrayColor,
                              ),
                            ),
                            HideButtonWidget(
                              onPressed: () {},
                              text: 'Hide',
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                          ),
                          child: Text(
                            '\$ 180 000.83',
                            style: AppStyles.text28w600.copyWith(
                              color: AppColors.whiteColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {},
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.open_in_new),
                    onPressed: () {},
                  ),
                ],
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(
                      child: ColoredBox(
                        color: AppColors.woodsmokeColor,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 16,
                            left: 16,
                            right: 16,
                            bottom: 16,
                          ),
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Transactions History',
                                    style: AppStyles.text16w400.copyWith(
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  DropDownWidget(
                                      hint: 'Select currency',
                                      onChanged: provider.onChanged,
                                      validator: provider.validator,
                                      listOfValue: provider.menuItems),
                                  const SizedBox(height: 16),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: DropDownWidget(
                                            hint: 'All',
                                            onChanged: provider.onChanged,
                                            validator: provider.validator,
                                            listOfValue: provider.menuItems),
                                      ),
                                      const SizedBox(width: 8),
                                      DecoratedBox(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: AppColors.whiteColor,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: SizedBox(
                                          height: 48,
                                          width: 64,
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Image.asset(
                                              AppImages.date,
                                              height: 21,
                                              width: 21,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    if (index == 0) {
                      return const DateSeparatorWidget(date: 'Yesterday');
                    }
                    final int i = index ~/ 2;
                    if (index.isEven) {
                      return TranslationHistory(
                        image: HistoryItem.elements[i].image,
                        title: HistoryItem.elements[i].title,
                        time: HistoryItem.elements[i].time,
                        sum: HistoryItem.elements[i].sum,
                      );
                    }

                    if (i > 0 && HistoryItem.elements[i].date.day != HistoryItem.elements[i + 1].date.day) {
                      return DateSeparatorWidget(date: DateFormat.yMMMEd().format(HistoryItem.elements[i].date));
                    }
                    return const Divider(height: 0, color: Colors.grey);
                  },
                  semanticIndexCallback: (Widget widget, int localIndex) {
                    if (localIndex.isEven) {
                      return localIndex ~/ 2;
                    }
                    return null;
                  },
                  childCount: math.max(0, HistoryItem.elements.length * 2 - 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
