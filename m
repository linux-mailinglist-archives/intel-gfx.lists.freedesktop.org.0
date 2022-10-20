Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B73606746
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 19:49:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 044A210E16B;
	Thu, 20 Oct 2022 17:49:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E64D10E16B;
 Thu, 20 Oct 2022 17:48:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26B5DA0099;
 Thu, 20 Oct 2022 17:48:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 20 Oct 2022 17:48:48 -0000
Message-ID: <166628812813.8590.10577344357312261737@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221020160022.1823365-1-imre.deak@intel.com>
In-Reply-To: <20221020160022.1823365-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tgl+=3A_Fix_race_conditions_during_DKL_PHY_accesse?=
 =?utf-8?q?s?=
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

Series: drm/i915/tgl+: Fix race conditions during DKL PHY accesses
URL   : https://patchwork.freedesktop.org/series/109963/
State : warning

== Summary ==

Error: dim checkpatch failed
9bbcf8b185e4 drm/i915/tgl+: Add locking around DKL PHY register accesses
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:173: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#173: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:319:
+		spinlock_t phy_lock;

-:206: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#206: 
new file mode 100644

-:449: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#449: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:3739:
+	intel_dkl_phy_rmw(dev_priv, DKL_PLL_DIV0(tc_port), 2, val,
+			 hw_state->mg_pll_div0);

-:510: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'reg' - possible side-effects?
#510: FILE: drivers/gpu/drm/i915/i915_reg.h:7445:
+#define DKL_REG_TC_PORT(reg) \
+	(((reg).reg - _DKL_PHY1_BASE) / (_DKL_PHY2_BASE - _DKL_PHY1_BASE))

total: 0 errors, 1 warnings, 3 checks, 429 lines checked
796c17a52706 drm/i915: Rename intel_tc_phy_regs.h to intel_mg_phy_regs.h
-:50: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#50: 
rename from drivers/gpu/drm/i915/display/intel_tc_phy_regs.h

total: 0 errors, 1 warnings, 0 checks, 48 lines checked
060db4c81b85 drm/i915/tgl+: Move DKL PHY register definitions to intel_dkl_phy_regs.h
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:54: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#54: 
new file mode 100644

-:74: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'reg' - possible side-effects?
#74: FILE: drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h:16:
+#define DKL_REG_TC_PORT(reg) \
+	(((reg).reg - _DKL_PHY1_BASE) / (_DKL_PHY2_BASE - _DKL_PHY1_BASE))

-:91: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#91: FILE: drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h:33:
+#define   DKL_PLL_DIV0_AFC_STARTUP(val)			REG_FIELD_PREP(DKL_PLL_DIV0_AFC_STARTUP_MASK, (val))

-:196: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#196: FILE: drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h:138:
+#define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1(val)	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1_MASK, (val))

-:198: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#198: FILE: drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h:140:
+#define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2(val)	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK, (val))

total: 0 errors, 4 warnings, 1 checks, 413 lines checked
aa5a4c2beb11 drm/i915/tgl+: Sanitize DKL PHY register definitions
-:186: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#186: FILE: drivers/gpu/drm/i915/display/intel_dkl_phy.c:76:
+void intel_dkl_phy_rmw(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg, u32 clear, u32 set)

-:236: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#236: FILE: drivers/gpu/drm/i915/display/intel_dkl_phy.h:17:
+void intel_dkl_phy_rmw(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg, u32 clear, u32 set);

-:267: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'reg' - possible side-effects?
#267: FILE: drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h:27:
+#define DKL_REG_MMIO(reg)				_MMIO(reg.reg)

-:274: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#274: FILE: drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h:34:
+#define _DKL_REG_BANK_OFFSET(phy_offset)		((phy_offset) & ((1 << _DKL_BANK_SHIFT) - 1))

-:277: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'phy_offset' - possible side-effects?
#277: FILE: drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h:37:
+#define _DKL_REG(tc_port, phy_offset)	\
+	((const struct intel_dkl_phy_reg) { \
+		.reg = _DKL_REG_PHY_BASE(tc_port) + \
+		       _DKL_REG_BANK_OFFSET(phy_offset), \
+		.bank_idx = _DKL_REG_BANK_IDX(phy_offset), \
+	})

-:284: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ln0_offs' - possible side-effects?
#284: FILE: drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h:44:
+#define _DKL_REG_LN(tc_port, ln_idx, ln0_offs, ln1_offs) \
+	_DKL_REG(tc_port, (ln0_offs) + (ln_idx) * ((ln1_offs) - (ln0_offs)))

total: 0 errors, 3 warnings, 3 checks, 576 lines checked


