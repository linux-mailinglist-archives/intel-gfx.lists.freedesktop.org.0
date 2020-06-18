Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2911FDAA2
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 02:56:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 502E16EA21;
	Thu, 18 Jun 2020 00:56:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB3886EA21;
 Thu, 18 Jun 2020 00:56:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E59E1A00EF;
 Thu, 18 Jun 2020 00:56:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 18 Jun 2020 00:56:42 -0000
Message-ID: <159244180291.22461.1017514311246139674@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200618004240.16263-1-lucas.demarchi@intel.com>
In-Reply-To: <20200618004240.16263-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_DG1_=28rev2=29?=
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

Series: Introduce DG1 (rev2)
URL   : https://patchwork.freedesktop.org/series/77496/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0168a6dc120d drm/i915/rkl: Handle new DPCLKA_CFGCR0 layout
b533bd97f161 drm/i915/rkl: Add DPLL4 support
266c7f569e81 drm/i915/rkl: Handle HTI
0dcdc976291d drm/i915/rkl: Add initial workarounds
bc9a17f57138 drm/i915/rkl: Add Wa_14011224835 for PHY B initialization
8f27f0ec2180 drm/i915: Add has_master_unit_irq flag
5e175aa8a3f1 drm/i915/dg1: add initial DG-1 definitions
-:41: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#41: FILE: drivers/gpu/drm/i915/i915_drv.h:1563:
+#define IS_DG1_REVID(p, since, until) \
+	(IS_DG1(p) && IS_REVID(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 53 lines checked
1f9863075fc5 drm/i915/dg1: Add DG1 PCI IDs
e5efb9b1d3a3 drm/i915/dg1: add support for the master unit interrupt
e45165e0ecea drm/i915/dg1: Remove SHPD_FILTER_CNT register programming
1a41b5d5a734 drm/i915/dg1: Add fake PCH
e1eb70f5e961 drm/i915/dg1: Initialize RAWCLK properly
40ff297509d4 drm/i915/dg1: Define MOCS table for DG1
95dc688fbad0 drm/i915/dg1: Add DG1 power wells
9e17457108d4 drm/i915/dg1: Increase mmio size to 4MB
63bc63bff441 drm/i915/dg1: Wait for pcode/uncore handshake at startup
bdec0b31b8b0 drm/i915/dg1: Add DPLL macros for DG1
67f3b147ced0 drm/i915/dg1: Add and setup DPLLs for DG1
955fe7def921 drm/i915/dg1: Enable DPLL for DG1
eb5057fd8085 drm/i915/dg1: add hpd interrupt handling
c56090c99ac7 drm/i915/dg1: invert HPD pins
592dd39473a7 drm/i915/dg1: gmbus pin mapping
9f15f4f45591 drm/i915/dg1: Enable first 2 ports for DG1
5a0cc1900a4f drm/i915/dg1: Don't program PHY_MISC for PHY-C and PHY-D
f2cac2139aff drm/i915/dg1: Update comp master/slave relationships for PHYs
2d8d3581a563 drm/i915/dg1: Update voltage swing tables for DP
ee62584fb237 drm/i915/dg1: provide port/phy mapping for vbt
6313b83c0806 drm/i915/dg1: map/unmap pll clocks
-:244: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'phy' - possible side-effects?
#244: FILE: drivers/gpu/drm/i915/i915_reg.h:10259:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_VAL_TO_ID(val, phy) \
+	  ((((val) & DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)) >> ((phy % 2) * 2)) + (2 * (phy / 2)))

total: 0 errors, 0 warnings, 1 checks, 204 lines checked
a1377be54bdb drm/i915/dg1: enable PORT C/D aka D/E
ad0d140c9965 drm/i915/dg1: Load DMC
277c534f9b87 drm/i915/dg1: Add initial DG1 workarounds
a976a97be22b drm/i915/dg1: DG1 does not support DC6

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
