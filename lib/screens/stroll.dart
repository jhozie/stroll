import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroll/theme/text_styles.dart';

class Stroll extends StatefulWidget {
  const Stroll({super.key});

  @override
  State<Stroll> createState() => _StrollState();
}

class _StrollState extends State<Stroll> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 6,
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/stroll.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.15),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.transparent,
                            Colors.black.withOpacity(0.4),
                            Colors.black,
                          ],
                          stops: const [0.0, 0.5, 0.85, 1.0],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Black section taking up 40%
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.black,
                ),
              ),
            ],
          ),

          // Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Stroll Bonfire',
                              style: AppTextStyles.title.copyWith(
                                color: const Color(0xFFCCC8FF),
                                shadows: [
                                  Shadow(
                                    offset: const Offset(0, 2),
                                    blurRadius: 4,
                                    color: Colors.black.withOpacity(0.3),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 4),
                            Image.asset(
                              'assets/icons/vector-1.png',
                              height: 25,
                              width: 25,
                            ),
                          ],
                        ),
                        const SizedBox(height: 2),
                        _buildTimeAndPeople(),
                      ],
                    ),
                  ),

                  const Spacer(flex: 25), // Push content down to center

                  // Question Card
                  _buildQuestionCard(),

                  const Spacer(flex: 1), // Small space at bottom
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeAndPeople() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/icons/Vector.png', width: 15, height: 15),
        const Text(
          ' 22h 00m',
          style: AppTextStyles.body,
        ),
        const SizedBox(width: 8),
        Image.asset('assets/icons/vector1.png', width: 15, height: 15),
        const Text(
          ' 103',
          style: AppTextStyles.body,
        ),
      ],
    );
  }

  Widget _buildQuestionCard() {
    return Material(
      color: Colors.transparent,
      elevation: 8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Section
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Dark background shape
              Positioned(
                left: 25,
                right: 210,
                top: -15,
                child: Container(
                  height: 24,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 35),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    'Angelina, 28',
                    style: AppTextStyles.subtitle.copyWith(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Transform.translate(
                    offset: const Offset(0, -30),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(6),
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/joey.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Question and quote
              const Positioned(
                left: 70,
                top: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What is your favorite time\nof the day?',
                      style: AppTextStyles.question,
                    ),
                    SizedBox(height: 6),
                    Text(
                      '"Mine is definitely the peace in the morning."',
                      style: AppTextStyles.quote,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          // Options
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: _buildOption(
                      'A',
                      'The peace in the early mornings',
                      isSelected: selectedOption == 'A',
                      onTap: () => setState(() => selectedOption = 'A'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _buildOption(
                      'B',
                      'The magical golden hours',
                      isSelected: selectedOption == 'B',
                      onTap: () => setState(() => selectedOption = 'B'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: _buildOption(
                      'C',
                      'Wind-down time after dinners',
                      isSelected: selectedOption == 'C',
                      onTap: () => setState(() => selectedOption = 'C'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _buildOption(
                      'D',
                      'The serenity past midnight',
                      isSelected: selectedOption == 'D',
                      onTap: () => setState(() => selectedOption = 'D'),
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Bottom Text
              const Text(
                'Pick your option.\nSee who has a similar mind.',
                style: AppTextStyles.hint,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF8E8EF3),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset('assets/icons/mic.png',
                        width: 15, height: 15),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: const Color(0xFF8E8EF3),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildOption(String letter, String text,
      {bool isSelected = false, VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFF232A2E),
          border: Border.all(
            color: isSelected ? const Color(0xFF8E8EF3) : Colors.transparent,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color:
                    isSelected ? const Color(0xFF8E8EF3) : Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color:
                      isSelected ? Colors.transparent : const Color(0xFFC4C4C4),
                  width: 1.5,
                ),
              ),
              child: Center(
                child: Text(
                  letter,
                  style: AppTextStyles.option,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                text,
                style: AppTextStyles.option,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
