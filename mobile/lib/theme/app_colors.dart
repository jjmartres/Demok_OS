import 'package:flutter/material.dart';

/// Démok Brand Colors
/// Based on the official Démok logo and French flag colors
class AppColors {
  AppColors._(); // Private constructor to prevent instantiation

  // ============================================================================
  // PRIMARY BRAND COLORS (from logo)
  // ============================================================================
  
  /// Main brand blue - vibrant royal blue from logo background
  static const Color primaryBlue = Color(0xFF4267B2);
  
  /// Dark navy blue from left speech bubble
  static const Color darkBlue = Color(0xFF2C4474);
  
  /// Pure white from center speech bubble
  static const Color white = Color(0xFFFFFFFF);
  
  /// Brand red from right speech bubble (French flag reference)
  static const Color brandRed = Color(0xFFE63946);
  
  /// Pure black for text and icons
  static const Color black = Color(0xFF000000);

  // ============================================================================
  // EXTENDED PALETTE
  // ============================================================================
  
  /// Lighter blue for hover states and backgrounds
  static const Color lightBlue = Color(0xFF5B79B8);
  
  /// Very light blue for subtle backgrounds
  static const Color paleBlue = Color(0xFFE8EEF7);
  
  /// Off-white for card backgrounds
  static const Color offWhite = Color(0xFFF8F8F8);

  // ============================================================================
  // SEMANTIC COLORS
  // ============================================================================
  
  /// Success state (green)
  static const Color success = Color(0xFF10B981);
  
  /// Warning state (amber)
  static const Color warning = Color(0xFFF59E0B);
  
  /// Error state (using brand red)
  static const Color error = brandRed;
  
  /// Info state (using primary blue)
  static const Color info = primaryBlue;

  // ============================================================================
  // TEXT COLORS
  // ============================================================================
  
  /// Primary text color (dark gray, not pure black for readability)
  static const Color textPrimary = Color(0xFF1F2937);
  
  /// Secondary text color (medium gray)
  static const Color textSecondary = Color(0xFF6B7280);
  
  /// Tertiary text color (light gray)
  static const Color textTertiary = Color(0xFF9CA3AF);
  
  /// Disabled text color
  static const Color textDisabled = Color(0xFFD1D5DB);
  
  /// Text on dark backgrounds
  static const Color textLight = Color(0xFFFFFFFF);

  // ============================================================================
  // BACKGROUND COLORS
  // ============================================================================
  
  /// Main background
  static const Color background = Color(0xFFFFFFFF);
  
  /// Scaffold light background (modern Slate 50)
  static const Color scaffoldBackground = Color(0xFFF8FAFC);
  
  /// Card and container surface
  static const Color surface = Color(0xFFFFFFFF);
  
  /// Secondary background (light gray)
  static const Color backgroundSecondary = Color(0xFFF3F4F6);
  
  /// Tertiary background (very light gray)
  static const Color backgroundTertiary = Color(0xFFF9FAFB);

  /// Pill background for actions / search / filters
  static const Color pillBackground = Color(0xFFF1F5F9);

  // ============================================================================
  // BORDER & DIVIDER COLORS
  // ============================================================================
  
  /// Default border color
  static const Color border = Color(0xFFE5E7EB);
  
  /// Subtle modern card border (Slate 200)
  static const Color cardBorder = Color(0xFFE2E8F0);
  
  /// Very light subtle border (Slate 100)
  static const Color cardBorderSubtle = Color(0xFFEEF2F6);
  
  /// Focused border color
  static const Color borderFocus = primaryBlue;
  
  /// Divider color
  static const Color divider = Color(0xFFE5E7EB);

  // ============================================================================
  // MODERN SHADOW DEFINITIONS
  // ============================================================================
  
  /// Modern ultra-soft diffuse shadow for cards
  static List<BoxShadow> get softShadow => [
    BoxShadow(
      color: const Color(0xFF0F172A).withValues(alpha: 0.04),
      blurRadius: 6,
      offset: const Offset(0, 2),
    ),
  ];

  /// Modern ultra-soft diffuse shadow for cards
  static List<BoxShadow> get cardShadow => [
    BoxShadow(
      color: const Color(0xFF0F172A).withValues(alpha: 0.04),
      blurRadius: 12,
      offset: const Offset(0, 3),
    ),
    BoxShadow(
      color: const Color(0xFF0F172A).withValues(alpha: 0.02),
      blurRadius: 4,
      offset: const Offset(0, 1),
    ),
  ];

  /// Elevated shadow for floating bars, modals and popups
  static List<BoxShadow> get elevatedShadow => [
    BoxShadow(
      color: const Color(0xFF0F172A).withValues(alpha: 0.08),
      blurRadius: 20,
      offset: const Offset(0, 6),
    ),
    BoxShadow(
      color: const Color(0xFF0F172A).withValues(alpha: 0.03),
      blurRadius: 6,
      offset: const Offset(0, 2),
    ),
  ];

  // ============================================================================
  // VOTE-SPECIFIC COLORS
  // ============================================================================
  
  /// Vote "Pour" (For) - green
  static const Color votePour = Color(0xFF10B981);
  
  /// Vote "Contre" (Against) - red
  static const Color voteContre = brandRed;
  
  /// Vote "Abstention" - gray
  static const Color voteAbstention = Color(0xFF6B7280);
  
  /// Vote not cast yet
  static const Color voteNone = Color(0xFFD1D5DB);

  // ============================================================================
  // GRADIENT DEFINITIONS
  // ============================================================================
  
  /// Primary gradient (blue to light blue)
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primaryBlue, lightBlue],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  /// French flag gradient (blue, white, red)
  static const LinearGradient frenchFlagGradient = LinearGradient(
    colors: [darkBlue, white, brandRed],
    stops: [0.0, 0.5, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  
  /// Subtle background gradient
  static const LinearGradient backgroundGradient = LinearGradient(
    colors: [Color(0xFFFFFFFF), paleBlue],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
