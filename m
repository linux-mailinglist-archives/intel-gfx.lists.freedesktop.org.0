Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A22A60CCF8
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 15:06:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4856310E3A0;
	Tue, 25 Oct 2022 13:06:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CE45910E385;
 Tue, 25 Oct 2022 13:06:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C584BAADD8;
 Tue, 25 Oct 2022 13:06:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 25 Oct 2022 13:06:46 -0000
Message-ID: <166670320677.15482.7472575978858615428@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221025102644.2123988-1-imre.deak@intel.com>
In-Reply-To: <20221025102644.2123988-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tgl+=3A_Fix_race_conditions_during_DKL_PHY_accesse?=
 =?utf-8?q?s_=28rev5=29?=
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

Series: drm/i915/tgl+: Fix race conditions during DKL PHY accesses (rev5)
URL   : https://patchwork.freedesktop.org/series/109963/
State : warning

== Summary ==

Error: dim checkpatch failed
15062ed1404b drm/i915/tgl+: Add locking around DKL PHY register accesses
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:218: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#218: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 442 lines checked
d90f6b228a01 drm/i915: Rename intel_tc_phy_regs.h to intel_mg_phy_regs.h
-:51: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#51: 
rename from drivers/gpu/drm/i915/display/intel_tc_phy_regs.h

total: 0 errors, 1 warnings, 0 checks, 48 lines checked
4570d7dd4e54 drm/i915/tgl+: Move DKL PHY register definitions to intel_dkl_phy_regs.h
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:57: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#57: 
new file mode 100644

-:94: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h:33:
+#define   DKL_PLL_DIV0_AFC_STARTUP(val)			REG_FIELD_PREP(DKL_PLL_DIV0_AFC_STARTUP_MASK, (val))

-:199: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#199: FILE: drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h:138:
+#define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1(val)	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1_MASK, (val))

-:201: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#201: FILE: drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h:140:
+#define  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2(val)	REG_FIELD_PREP(DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK, (val))

total: 0 errors, 4 warnings, 0 checks, 413 lines checked
0b7eb0f5a4e6 drm/i915/tgl+: Sanitize DKL PHY register definitions
-:294: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'phy_offset' - possible side-effects?
#294: FILE: drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h:39:
+#define _DKL_REG(tc_port, phy_offset)	\
+	((const struct intel_dkl_phy_reg) { \
+		.reg = _DKL_REG_PHY_BASE(tc_port) + \
+		       _DKL_REG_BANK_OFFSET(phy_offset), \
+		.bank_idx = _DKL_REG_BANK_IDX(phy_offset), \
+	})

-:301: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ln0_offs' - possible side-effects?
#301: FILE: drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h:46:
+#define _DKL_REG_LN(tc_port, ln_idx, ln0_offs, ln1_offs) \
+	_DKL_REG(tc_port, (ln0_offs) + (ln_idx) * ((ln1_offs) - (ln0_offs)))

total: 0 errors, 0 warnings, 2 checks, 584 lines checked


