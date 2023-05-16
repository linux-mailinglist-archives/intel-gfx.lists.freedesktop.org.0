Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13198704213
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 02:09:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BB5C10E2CA;
	Tue, 16 May 2023 00:09:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B0E0110E2CA;
 Tue, 16 May 2023 00:09:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A9098A7DFF;
 Tue, 16 May 2023 00:09:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Clint Taylor" <clinton.a.taylor@intel.com>
Date: Tue, 16 May 2023 00:09:29 -0000
Message-ID: <168419576965.14223.6955250125437980350@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230515231725.3815199-1-clinton.a.taylor@intel.com>
In-Reply-To: <20230515231725.3815199-1-clinton.a.taylor@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_C20_Computed_HDMI_TMDS_pixel_clocks_=28rev2=29?=
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

Series: C20 Computed HDMI TMDS pixel clocks (rev2)
URL   : https://patchwork.freedesktop.org/series/117399/
State : warning

== Summary ==

Error: dim checkpatch failed
7374d5d94fea drm/i915: Add 16bit register/mask operators
-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__n' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:155:
+#define REG_BIT16(__n)                                                   \
+	((u16)(BIT(__n) +                                                \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&         \
+				 ((__n) < 0 || (__n) > 15))))

-:44: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__high' - possible side-effects?
#44: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:170:
+#define REG_GENMASK16(__high, __low)                                     \
+	((u16)(GENMASK(__high, __low) +                                  \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&      \
+				 __is_constexpr(__low) &&               \
+				 ((__low) < 0 || (__high) > 15 || (__low) > (__high)))))

-:44: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__low' - possible side-effects?
#44: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:170:
+#define REG_GENMASK16(__high, __low)                                     \
+	((u16)(GENMASK(__high, __low) +                                  \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&      \
+				 __is_constexpr(__low) &&               \
+				 ((__low) < 0 || (__high) > 15 || (__low) > (__high)))))

-:61: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__mask' - possible side-effects?
#61: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:187:
+#define REG_FIELD_PREP16(__mask, __val)                                          \
+	((u16)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U16_MAX) +          \
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:61: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__val' - possible side-effects?
#61: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:187:
+#define REG_FIELD_PREP16(__mask, __val)                                          \
+	((u16)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U16_MAX) +          \
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:66: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#66: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:192:
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

total: 0 errors, 1 warnings, 5 checks, 54 lines checked
f585a9123138 drm/i915/hdmi: C20 computed PLL frequencies
-:59: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#59: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1932:
+	mpll_div_multiplier = min_t(u8, div64_u64((vco_freq * 16 + (datarate >> 1)), datarate), 255);

total: 0 errors, 1 warnings, 0 checks, 177 lines checked


