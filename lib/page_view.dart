import 'package:electronic_rosary_app44444/splash_screen.dart';
import 'package:flutter/material.dart';

import 'askar_page.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({super.key});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  final PageController _pageController = PageController();
  final List<Widget> pages = [
    const SplashScreen(),
    const AzkarScreen(
      txt1: 'سُبْحَانَ اللَّهِ ',
      txt2: 'يكتب له ألف حسنة أو يحط عنه ألف خطيئة',
    ),
    const AzkarScreen(
      txt1: 'اسْتَغْفَرُ اللَّهَ',
      txt2: 'لفعل الرسول صلي الله عليه وسلم',
    ),
    const AzkarScreen(
      txt1: 'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ،•، سُبْحَانَ اللَّه الْعَظِيم',
      txt2:
          'كَلِمَتانِ خَفِيفَتانِ علَى اللِّسانِ، ثَقِيلَتانِ في المِيزانِ، حَبِيبَتانِ إلى الرَّحْمَنِ',
    ),
    const AzkarScreen(
      txt1: 'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ',
      txt2: 'حُطَّتْ عَنْهُ خَطَايَاهُ وَإِنْ كَانَتْ مِثْلَ زَبَدِ الْبَحْرِ',
    ),
    const AzkarScreen(
        txt1: 'اللهم صّلِ وسَلّمْ عَلۓِ نَبِيْنَامُحَمد ﷺ',
        txt2:
            'من صلَّى عليَّ حينَ يصبحُ وحينَ يمسي أدرَكتْهُ شفاعتي يومَ القيامةِ'),
    const AzkarScreen(
      txt1:
          'سُبْحَانَ اللهِ وَالحَمْدُ للهِ وَلا إِلَهَ إِلا الله وَالله أَكْبَرُ',
      txt2:
          'أنهن أحب الكلام الي الله، ومكفرات للذنوب، وأحب الي النبي مما طلعت عليه الشمس',
    ),
    const AzkarScreen(
      txt1: 'لآ اِلَهَ اِلّا اللّهُ',
      txt2: 'أفضل الذكر لا إله إلا الله',
    ),
    const AzkarScreen(
      txt1: 'اللَّهُ أَكْبَرُ',
      txt2:
          'من قال الله اكبر كتبت له عشرون حسنة وحطت عنه عشرون سيئة، الله اكبر من كل شئ',
    ),
    const AzkarScreen(
      txt1: 'سُبْحَانَ اللَّهِ ، وَالْحَمْدُ لِلَّهِ',
      txt2: 'تملآن ما بين السماوات والأرض',
    ),
    const AzkarScreen(
      txt1: 'سُبْحَانَ اللَّهِ الْعَظِيم وَبِحَمْدِهِ',
      txt2: 'غرست له النخلة في الجنة',
    ),
    const AzkarScreen(
      txt1:
          'لا إلهَ إلاَّ اللَّه وحْدهُ لاَ شَرِيكَ لهُ، لَهُ المُلْكُ، ولَهُ الحمْدُ، وَهُو عَلَى كُلِّ شَيءٍ قَدِيرٌ',
      txt2: 'كتبت له مئة حسنة ومحيت عنه مئة سيئة',
    ),
    const AzkarScreen(
      txt1: 'لا حَوْلَ وَلا قُوَّةَ إِلا باللَّهِ',
      txt2: 'كنز من كنوز الجنة',
    ),
    const AzkarScreen(
        txt1: 'الْحَمْدُ لِلَّـهِ رَبِّ الْعَالَمِينَ',
        txt2: 'تملأ ميزان العبد بالحسنات'),
    const AzkarScreen(
        txt1: 'الْحَمْدُ لِلَّـهِ رَبِّ الْعَالَمِينَ',
        txt2: 'تملأ ميزان العبد بالحسنات'),
  ];

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      scrollDirection: Axis.horizontal,
      reverse: true,
      children: pages,
      onPageChanged: (int page) {
        if (page == pages.length - 1) // Reached the last page
        {
          _pageController.jumpToPage(1); // Scroll back to the first page
        }
      },
    );
  }
}
