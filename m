Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0BF488167
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Jan 2022 06:12:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC81A11A447;
	Sat,  8 Jan 2022 05:12:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B002011A441;
 Sat,  8 Jan 2022 05:12:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AC161A01BB;
 Sat,  8 Jan 2022 05:12:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sat, 08 Jan 2022 05:12:14 -0000
Message-ID: <164161873468.13652.13810049952588202895@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220108044055.3123418-1-matthew.d.roper@intel.com>
In-Reply-To: <20220108044055.3123418-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Start_cleaning_up_register_definitions_=28rev2=29?=
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

Series: Start cleaning up register definitions (rev2)
URL   : https://patchwork.freedesktop.org/series/98575/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bfe375c8c917 drm/i915: Use parameterized GPR register definitions everywhere
-:21: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#21: FILE: drivers/gpu/drm/i915/i915_cmd_parser.c:594:
+#define REG64_BASE_IDX(_reg, base, idx) \
+	{ .addr = _reg(base, idx) }, \
+	{ .addr = _reg ## _UDW(base, idx) }

-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'base' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/i915_cmd_parser.c:594:
+#define REG64_BASE_IDX(_reg, base, idx) \
+	{ .addr = _reg(base, idx) }, \
+	{ .addr = _reg ## _UDW(base, idx) }

-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'idx' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/i915_cmd_parser.c:594:
+#define REG64_BASE_IDX(_reg, base, idx) \
+	{ .addr = _reg(base, idx) }, \
+	{ .addr = _reg ## _UDW(base, idx) }

total: 1 errors, 0 warnings, 2 checks, 106 lines checked
2c2b1ae834c8 drm/i915: Parameterize PWRCTX_MAXCNT
f92aa7a2d6f3 drm/i915: Parameterize ECOSKPD
6013a2b958f8 drm/i915: Use RING_PSMI_CTL rather than per-engine macros
-:113: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#113: FILE: drivers/gpu/drm/i915/intel_pm.c:7658:
+	intel_uncore_write(&dev_priv->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
 		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));

-:122: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#122: FILE: drivers/gpu/drm/i915/intel_pm.c:7799:
+	intel_uncore_write(&dev_priv->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
 		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));

total: 0 errors, 0 warnings, 2 checks, 89 lines checked
5fb66c826401 drm/i915: Replace GFX_MODE_GEN7 with RING_MODE_GEN7
10edc645bd23 drm/i915/gt: Move engine registers to their own header
-:66: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#66: 
new file mode 100644

-:266: CHECK:LINE_SPACING: Please don't use multiple blank lines
#266: FILE: drivers/gpu/drm/i915/gt/intel_engine_regs.h:196:
+
+

-:740: CHECK:LINE_SPACING: Please don't use multiple blank lines
#740: FILE: drivers/gpu/drm/i915/i915_reg.h:2451:
+
+

-:940: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__n' - possible side-effects?
#940: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:20:
+#define REG_BIT(__n)							\
+	((u32)(BIT(__n) +						\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&		\
+				 ((__n) < 0 || (__n) > 31))))

-:954: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__high' - possible side-effects?
#954: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:34:
+#define REG_GENMASK(__high, __low)					\
+	((u32)(GENMASK(__high, __low) +					\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&	\
+				 __is_constexpr(__low) &&		\
+				 ((__low) < 0 || (__high) > 31 || (__low) > (__high)))))

-:954: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__low' - possible side-effects?
#954: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:34:
+#define REG_GENMASK(__high, __low)					\
+	((u32)(GENMASK(__high, __low) +					\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&	\
+				 __is_constexpr(__low) &&		\
+				 ((__low) < 0 || (__high) > 31 || (__low) > (__high)))))

-:963: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__x' - possible side-effects?
#963: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:43:
+#define IS_POWER_OF_2(__x)		((__x) && (((__x) & ((__x) - 1)) == 0))

-:975: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__mask' - possible side-effects?
#975: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:55:
+#define REG_FIELD_PREP(__mask, __val)						\
+	((u32)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +	\
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +		\
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U32_MAX) +		\
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:975: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__val' - possible side-effects?
#975: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:55:
+#define REG_FIELD_PREP(__mask, __val)						\
+	((u32)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +	\
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +		\
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U32_MAX) +		\
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:980: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#980: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:60:
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:994: WARNING:NEW_TYPEDEFS: do not add new typedefs
#994: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:74:
+typedef struct {

-:1017: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1017: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:97:
+
+

total: 0 errors, 3 warnings, 9 checks, 866 lines checked
0a9e3b790fbc drm/i915: Move SNPS PHY registers to their own header
-:25: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#25: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 153 lines checked


