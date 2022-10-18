Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D056031C0
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 19:45:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7883310E921;
	Tue, 18 Oct 2022 17:45:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D9AB510E2F4;
 Tue, 18 Oct 2022 17:45:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D285FA9932;
 Tue, 18 Oct 2022 17:45:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 18 Oct 2022 17:45:17 -0000
Message-ID: <166611511783.20427.10767602202111764800@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221018172042.1449885-1-imre.deak@intel.com>
In-Reply-To: <20221018172042.1449885-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/tgl+=3A_Add_locking?=
 =?utf-8?q?_around_DKL_PHY_register_accesses?=
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

Series: series starting with [1/3] drm/i915/tgl+: Add locking around DKL PHY register accesses
URL   : https://patchwork.freedesktop.org/series/109834/
State : warning

== Summary ==

Error: dim checkpatch failed
3b99286d8d78 drm/i915/tgl+: Add locking around DKL PHY register accesses
-:160: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#160: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:398:
+		spinlock_t dkl_lock;

-:473: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'reg' - possible side-effects?
#473: FILE: drivers/gpu/drm/i915/i915_reg.h:7446:
+#define DKL_REG_TC_PORT(reg)		(((reg).reg - _DKL_PHY1_BASE) >> _DKL_BANK_SHIFT)

total: 0 errors, 0 warnings, 2 checks, 405 lines checked
a96e4b0b1cb6 drm/i915/tgl+: Move DKL PHY register definitions to intel_tc_phy_regs.h
-:51: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#51: FILE: drivers/gpu/drm/i915/display/intel_tc_phy_regs.h:290:
+#define DKL_REG_TC_PORT(reg)				(((reg).reg - _DKL_PHY1_BASE) >> _DKL_BANK_SHIFT)

-:51: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'reg' - possible side-effects?
#51: FILE: drivers/gpu/drm/i915/display/intel_tc_phy_regs.h:290:
+#define DKL_REG_TC_PORT(reg)				(((reg).reg - _DKL_PHY1_BASE) >> _DKL_BANK_SHIFT)

-:67: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#67: FILE: drivers/gpu/drm/i915/display/intel_tc_phy_regs.h:306:
+#define   DKL_PLL_DIV0_AFC_STARTUP(val)			REG_FIELD_PREP(DKL_PLL_DIV0_AFC_STARTUP_MASK, (val))

-:172: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#172: FILE: drivers/gpu/drm/i915/display/intel_tc_phy_regs.h:411:
+#define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1(val)	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1_MASK, (val))

-:174: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#174: FILE: drivers/gpu/drm/i915/display/intel_tc_phy_regs.h:413:
+#define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2(val)	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK, (val))

total: 0 errors, 4 warnings, 1 checks, 388 lines checked
003469f884e8 drm/i915/tgl+: Sanitize DKL PHY register definitions
-:317: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#317: FILE: drivers/gpu/drm/i915/display/intel_tc.c:960:
+void intel_tc_dkl_rmw(struct drm_i915_private *i915, struct intel_tc_dkl_reg reg, u32 clear, u32 set)

-:371: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#371: FILE: drivers/gpu/drm/i915/display/intel_tc.h:43:
+void intel_tc_dkl_rmw(struct drm_i915_private *i915, struct intel_tc_dkl_reg reg, u32 clear, u32 set);

-:403: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'reg' - possible side-effects?
#403: FILE: drivers/gpu/drm/i915/display/intel_tc_phy_regs.h:298:
+#define DKL_REG_MMIO(reg)				_MMIO(reg.reg)

-:409: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#409: FILE: drivers/gpu/drm/i915/display/intel_tc_phy_regs.h:304:
+#define _DKL_REG_BANK_OFFSET(phy_offset)		((phy_offset) & ((1 << _DKL_BANK_SHIFT) - 1))

-:412: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'phy_offset' - possible side-effects?
#412: FILE: drivers/gpu/drm/i915/display/intel_tc_phy_regs.h:307:
+#define _DKL_REG(tc_port, phy_offset)	\
+	((const struct intel_tc_dkl_reg) { \
+		.reg = _DKL_REG_PHY_BASE(tc_port) + \
+		       _DKL_REG_BANK_OFFSET(phy_offset), \
+		.bank_idx = _DKL_REG_BANK_IDX(phy_offset), \
+	})

-:419: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ln0_offs' - possible side-effects?
#419: FILE: drivers/gpu/drm/i915/display/intel_tc_phy_regs.h:314:
+#define _DKL_REG_LN(tc_port, ln_idx, ln0_offs, ln1_offs) \
+	_DKL_REG(tc_port, (ln0_offs) + (ln_idx) * ((ln1_offs) - (ln0_offs)))

total: 0 errors, 3 warnings, 3 checks, 578 lines checked


