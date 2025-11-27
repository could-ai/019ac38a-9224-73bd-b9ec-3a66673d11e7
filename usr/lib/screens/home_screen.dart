import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accident Alert'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildStatusCard(context),
            const SizedBox(height: 24),
            const Text(
              'Emergency Actions',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildActionCard(
                    context,
                    icon: Icons.report_problem,
                    label: 'Report Accident',
                    color: Colors.red.shade100,
                    iconColor: Colors.red,
                    onTap: () {
                      // TODO: Navigate to Report Screen
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Report feature coming soon')),
                      );
                    },
                  ),
                  _buildActionCard(
                    context,
                    icon: Icons.history,
                    label: 'My Reports',
                    color: Colors.blue.shade100,
                    iconColor: Colors.blue,
                    onTap: () {
                      // TODO: Navigate to History Screen
                    },
                  ),
                  _buildActionCard(
                    context,
                    icon: Icons.map,
                    label: 'Emergency Map',
                    color: Colors.green.shade100,
                    iconColor: Colors.green,
                    onTap: () {
                      // TODO: Navigate to Map Screen
                    },
                  ),
                  _buildActionCard(
                    context,
                    icon: Icons.person,
                    label: 'Profile',
                    color: Colors.orange.shade100,
                    iconColor: Colors.orange,
                    onTap: () {
                      // TODO: Navigate to Profile Screen
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusCard(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Icon(Icons.shield_outlined, size: 48, color: Colors.grey),
            const SizedBox(height: 8),
            const Text(
              'System Status',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              'Ready to report',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionCard(
    BuildContext context, {
    required IconData icon,
    required String label,
    required Color color,
    required Color iconColor,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: iconColor),
            const SizedBox(height: 12),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: iconColor.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
