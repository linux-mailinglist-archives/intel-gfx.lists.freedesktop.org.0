Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1202A9EF6
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Nov 2020 22:15:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE3A16EB16;
	Fri,  6 Nov 2020 21:15:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E59A36E0E6;
 Fri,  6 Nov 2020 21:15:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D4CC0A8169;
 Fri,  6 Nov 2020 21:15:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 06 Nov 2020 21:15:21 -0000
Message-ID: <160469732184.19145.18061427171840737753@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201106210006.837953-1-lucas.demarchi@intel.com>
In-Reply-To: <20201106210006.837953-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dg1=3A_map/unmap_pll_clocks?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/dg1: map/unmap pll clocks
URL   : https://patchwork.freedesktop.org/series/83592/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a589e37423a2 drm/i915/dg1: map/unmap pll clocks
-:187: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#187: FILE: drivers/gpu/drm/i915/display/intel_display.c:11014:
+	clk_sel = intel_de_read(dev_priv, DG1_DPCLKA_CFGCR0(phy)) & DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);

-:254: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#254: FILE: drivers/gpu/drm/i915/i915_reg.h:10331:
+#define _DG1_PHY_DPLL_MAP(phy)				((phy) >= PHY_C ? DPLL_ID_DG1_DPLL2 : DPLL_ID_DG1_DPLL0)

-:260: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#260: FILE: drivers/gpu/drm/i915/i915_reg.h:10337:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	(_DG1_DPCLKA_PLL_IDX(pll) << DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-:261: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#261: FILE: drivers/gpu/drm/i915/i915_reg.h:10338:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	(0x3 << DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-:262: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'phy' - possible side-effects?
#262: FILE: drivers/gpu/drm/i915/i915_reg.h:10339:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_DPLL_MAP(clk_sel, phy) \
+	(((clk_sel) >> DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy)) + _DG1_PHY_DPLL_MAP(phy))

total: 0 errors, 4 warnings, 1 checks, 211 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
