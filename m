Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9344C6F8AF3
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 23:28:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72DD710E0AE;
	Fri,  5 May 2023 21:28:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 489AC10E0A9;
 Fri,  5 May 2023 21:28:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 40B75A010E;
 Fri,  5 May 2023 21:28:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Clint Taylor" <clinton.a.taylor@intel.com>
Date: Fri, 05 May 2023 21:28:01 -0000
Message-ID: <168332208123.5021.7813267123237135924@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230505184640.2200251-1-clinton.a.taylor@intel.com>
In-Reply-To: <20230505184640.2200251-1-clinton.a.taylor@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_C20_Computed_HDMI_TMDS_pixel_clocks?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: C20 Computed HDMI TMDS pixel clocks
URL   : https://patchwork.freedesktop.org/series/117399/
State : warning

== Summary ==

Error: dim checkpatch failed
25766d718057 drm/i915: Add 16bit register/mask operators
-:27: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__n' - possible side-effects?
#27: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:155:
+#define REG_BIT16(__n)                                                   \
+	((u16)(BIT(__n) +                                                \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&         \
+				 ((__n) < 0 || (__n) > 15))))

-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__high' - possible side-effects?
#42: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:170:
+#define REG_GENMASK16(__high, __low)                                     \
+	((u16)(GENMASK(__high, __low) +                                  \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&      \
+				 __is_constexpr(__low) &&               \
+				 ((__low) < 0 || (__high) > 15 || (__low) > (__high)))))

-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__low' - possible side-effects?
#42: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:170:
+#define REG_GENMASK16(__high, __low)                                     \
+	((u16)(GENMASK(__high, __low) +                                  \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&      \
+				 __is_constexpr(__low) &&               \
+				 ((__low) < 0 || (__high) > 15 || (__low) > (__high)))))

-:59: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__mask' - possible side-effects?
#59: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:187:
+#define REG_FIELD_PREP16(__mask, __val)                                          \
+	((u16)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U16_MAX) +          \
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:59: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__val' - possible side-effects?
#59: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:187:
+#define REG_FIELD_PREP16(__mask, __val)                                          \
+	((u16)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U16_MAX) +          \
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:64: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#64: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:192:
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:66: CHECK:LINE_SPACING: Please don't use multiple blank lines
#66: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:194:
+
+

total: 0 errors, 1 warnings, 6 checks, 55 lines checked
3d5e5a7f1c8d drm/i915/hdmi: C20 computed PLL frequencies
-:58: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#58: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1932:
+	mpll_div_multiplier = min_t(u8, div64_u64((vco_freq * 16 + (datarate >> 1)), datarate), 255);

-:137: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'clock >= 25175'
#137: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2176:
+	if ((clock >= 25175) && (clock <= 600000))

-:137: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'clock <= 600000'
#137: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2176:
+	if ((clock >= 25175) && (clock <= 600000))

total: 0 errors, 1 warnings, 2 checks, 177 lines checked


