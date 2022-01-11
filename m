Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E734F48A76E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 06:45:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 192BA11AD43;
	Tue, 11 Jan 2022 05:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9E57411AD2D;
 Tue, 11 Jan 2022 05:45:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9BE70AA0ED;
 Tue, 11 Jan 2022 05:45:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 11 Jan 2022 05:45:49 -0000
Message-ID: <164187994961.24977.5840277533445497927@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
In-Reply-To: <20220111051600.3429104-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Start_cleaning_up_register_definitions_=28rev3=29?=
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

Series: Start cleaning up register definitions (rev3)
URL   : https://patchwork.freedesktop.org/series/98575/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e41d2f04b72a drm/i915: Use parameterized GPR register definitions everywhere
-:22: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#22: FILE: drivers/gpu/drm/i915/i915_cmd_parser.c:595:
+#define REG64_BASE_IDX(_reg, base, idx) \
+	{ .addr = _reg(base, idx) }, \
+	{ .addr = _reg ## _UDW(base, idx) }

-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'base' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/i915_cmd_parser.c:595:
+#define REG64_BASE_IDX(_reg, base, idx) \
+	{ .addr = _reg(base, idx) }, \
+	{ .addr = _reg ## _UDW(base, idx) }

-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'idx' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/i915_cmd_parser.c:595:
+#define REG64_BASE_IDX(_reg, base, idx) \
+	{ .addr = _reg(base, idx) }, \
+	{ .addr = _reg ## _UDW(base, idx) }

total: 1 errors, 0 warnings, 2 checks, 106 lines checked
e327ba8e8c11 drm/i915: Parameterize PWRCTX_MAXCNT
015378528220 drm/i915: Parameterize ECOSKPD
b7b8ca9b04ef drm/i915: Use RING_PSMI_CTL rather than per-engine macros
-:114: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#114: FILE: drivers/gpu/drm/i915/intel_pm.c:7658:
+	intel_uncore_write(&dev_priv->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
 		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));

-:123: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#123: FILE: drivers/gpu/drm/i915/intel_pm.c:7799:
+	intel_uncore_write(&dev_priv->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
 		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));

total: 0 errors, 0 warnings, 2 checks, 89 lines checked
b3f3b6cd9677 drm/i915: Replace GFX_MODE_GEN7 with RING_MODE_GEN7
00c2a2d5bca6 drm/i915: Introduce i915_reg_defs.h
-:121: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#121: 
new file mode 100644

-:145: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__n' - possible side-effects?
#145: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:20:
+#define REG_BIT(__n)							\
+	((u32)(BIT(__n) +						\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&		\
+				 ((__n) < 0 || (__n) > 31))))

-:159: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__high' - possible side-effects?
#159: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:34:
+#define REG_GENMASK(__high, __low)					\
+	((u32)(GENMASK(__high, __low) +					\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&	\
+				 __is_constexpr(__low) &&		\
+				 ((__low) < 0 || (__high) > 31 || (__low) > (__high)))))

-:159: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__low' - possible side-effects?
#159: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:34:
+#define REG_GENMASK(__high, __low)					\
+	((u32)(GENMASK(__high, __low) +					\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&	\
+				 __is_constexpr(__low) &&		\
+				 ((__low) < 0 || (__high) > 31 || (__low) > (__high)))))

-:168: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__x' - possible side-effects?
#168: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:43:
+#define IS_POWER_OF_2(__x)		((__x) && (((__x) & ((__x) - 1)) == 0))

-:180: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__mask' - possible side-effects?
#180: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:55:
+#define REG_FIELD_PREP(__mask, __val)						\
+	((u32)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +	\
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +		\
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U32_MAX) +		\
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:180: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__val' - possible side-effects?
#180: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:55:
+#define REG_FIELD_PREP(__mask, __val)						\
+	((u32)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +	\
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +		\
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U32_MAX) +		\
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:185: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#185: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:60:
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:199: WARNING:NEW_TYPEDEFS: do not add new typedefs
#199: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:74:
+typedef struct {

-:222: CHECK:LINE_SPACING: Please don't use multiple blank lines
#222: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:97:
+
+

total: 0 errors, 3 warnings, 7 checks, 198 lines checked
c6d204da3552 drm/i915/gt: Move engine registers to their own header
-:66: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#66: 
new file mode 100644

-:266: CHECK:LINE_SPACING: Please don't use multiple blank lines
#266: FILE: drivers/gpu/drm/i915/gt/intel_engine_regs.h:196:
+
+

-:638: CHECK:LINE_SPACING: Please don't use multiple blank lines
#638: FILE: drivers/gpu/drm/i915/i915_reg.h:2202:
+
+

total: 0 errors, 1 warnings, 2 checks, 668 lines checked
f9b30303c8f3 drm/i915: Move SNPS PHY registers to their own header
-:30: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#30: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 155 lines checked
a1b5e1b0786f drm/i915: Move combo PHY registers to their own header
-:37: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#37: 
new file mode 100644

-:149: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#149: FILE: drivers/gpu/drm/i915/display/intel_combo_phy_regs.h:108:
+#define _ICL_PORT_TX_DW_LN(dw, ln, phy) ^I(_ICL_COMBOPHY(phy) + \$

-:197: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#197: FILE: drivers/gpu/drm/i915/display/intel_combo_phy_regs.h:156:
+#define   ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2	REG_FIELD_PREP(ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK, 0x1)

total: 0 errors, 3 warnings, 0 checks, 357 lines checked
00b848b9a979 drm/i915: Move TC PHY registers to their own header
-:50: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#50: 
new file mode 100644

-:65: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ln0p1' - possible side-effects?
#65: FILE: drivers/gpu/drm/i915/display/intel_tc_phy_regs.h:11:
+#define MG_PHY_PORT_LN(ln, tc_port, ln0p1, ln0p2, ln1p1) \
+	_MMIO(_PORT(tc_port, ln0p1, ln0p2) + (ln) * ((ln1p1) - (ln0p1)))

total: 0 errors, 1 warnings, 1 checks, 716 lines checked
024d6cafab40 drm/i915: Drop unused _PORT3 and _PORT4 TC phy register offsets


