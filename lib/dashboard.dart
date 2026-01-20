import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7B78E1),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            _buildTopBar(),
            const SizedBox(height: 20),
            _buildHeaderTitle(),
            const SizedBox(height: 20),
            Expanded(child: _buildTaskContainer()),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
      floatingActionButton: _buildFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  // --- Top Navigation Row (Grid, Search, More) ---
  Widget _buildTopBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.grid_view_rounded, color: Colors.white, size: 28),
          Expanded(
            child: Container(
              height: 38,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(Icons.search, color: Colors.white70, size: 20),
            ),
          ),
          const Icon(Icons.more_horiz, color: Colors.white, size: 28),
        ],
      ),
    );
  }

  // --- "My Tasks" Header Section ---
  Widget _buildHeaderTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Today, 1 May",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            "My tasks",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }

  // --- White Rounded Container for Tasks ---
  Widget _buildTaskContainer() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFF9F9FB), // Slightly off-white background
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(25, 30, 25, 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sectionLabel("Today"),
            const _TaskCard(
              title: "Schedule dentist appointment",
              date: "1 May",
              tags: ["Personal"],
              tagColor: Colors.orange,
            ),
            const _TaskCard(
              title: "Prepare Team Meeting",
              date: "1 May",
              tags: ["App", "Work"],
              tagColor: Colors.deepOrangeAccent,
            ),

            const SizedBox(height: 25),
            _sectionLabel("Tomorrow"),
            const _TaskCard(
              title: "Call Charlotte",
              date: "2 May",
              tags: ["Personal"],
              tagColor: Colors.orange,
            ),
            const _TaskCard(
              title: "Submit exercise 3.1",
              date: "2 May",
              tags: ["CF", "Study"],
              tagColor: Colors.indigoAccent,
            ),
            const _TaskCard(
              title: "Prepare A/B Test",
              date: "2 May",
              tags: ["App", "Work"],
              tagColor: Colors.deepOrangeAccent,
            ),

            const SizedBox(height: 25),
            _sectionLabel("This week"),
            const _TaskCard(
              title: "Submit exercise 3.2",
              date: "4 May",
              tags: ["CF", "Study"],
              tagColor: Colors.indigoAccent,
            ),
            const _TaskCard(
              title: "Water plants 🌿",
              date: "Every two days",
              tags: ["Habit"],
              tagColor: Colors.green,
              isDimmed: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _sectionLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, left: 5),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xFF2D2D2D),
        ),
      ),
    );
  }

  Widget _buildFab() {
    return Container(
      height: 65,
      width: 65,
      decoration: BoxDecoration(
        color: const Color(0xFF7B78E1),
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 4),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF7B78E1).withOpacity(0.4),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: const Icon(Icons.add, color: Colors.white, size: 32),
    );
  }

  Widget _buildBottomNav() {
    return BottomAppBar(
      height: 70,
      notchMargin: 10,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(
              Icons.list_alt_rounded,
              color: Color(0xFF7B78E1),
              size: 30,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 40), // Space for FAB
          IconButton(
            icon: const Icon(
              Icons.calendar_month_outlined,
              color: Colors.grey,
              size: 28,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

// --- Reusable Task Card Widget ---
class _TaskCard extends StatelessWidget {
  final String title;
  final String date;
  final List<String> tags;
  final Color tagColor;
  final bool isDimmed;

  const _TaskCard({
    required this.title,
    required this.date,
    required this.tags,
    required this.tagColor,
    this.isDimmed = false,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isDimmed ? 0.4 : 1.0,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(
              Icons.circle_outlined,
              color: isDimmed ? Colors.grey : const Color(0xFF7B78E1),
              size: 24,
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Color(0xFF454545),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    date,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
            Row(
              children:
                  tags
                      .map(
                        (tag) => Container(
                          margin: const EdgeInsets.only(left: 6),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: tagColor.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            tag,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                      .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
