Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1AC21170F
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 02:13:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A431882AF;
	Thu,  2 Jul 2020 00:13:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 128CC6EA30;
 Thu,  2 Jul 2020 00:13:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0CC93A363D;
 Thu,  2 Jul 2020 00:13:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 02 Jul 2020 00:13:02 -0000
Message-ID: <159364878202.5657.6931350539146626524@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200701235339.32608-1-lucas.demarchi@intel.com>
In-Reply-To: <20200701235339.32608-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_DG1_=28rev3=29?=
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

Series: Introduce DG1 (rev3)
URL   : https://patchwork.freedesktop.org/series/77496/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
988d01bfbd82 drm/i915: Add has_master_unit_irq flag
241025556ca5 drm/i915/dg1: add initial DG-1 definitions
-:41: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#41: FILE: drivers/gpu/drm/i915/i915_drv.h:1565:
+#define IS_DG1_REVID(p, since, until) \
+	(IS_DG1(p) && IS_REVID(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 53 lines checked
c6bda5d540fd drm/i915/dg1: Add DG1 PCI IDs
e24161cc3641 drm/i915/dg1: add support for the master unit interrupt
6a75112b7aed drm/i915/dg1: Remove SHPD_FILTER_CNT register programming
c34b0b236cf6 drm/i915/dg1: Add fake PCH
cf65ad570c8c drm/i915/dg1: Initialize RAWCLK properly
fedac7296bd4 drm/i915/dg1: Define MOCS table for DG1
322b9085eff2 drm/i915/dg1: Add DG1 power wells
5286f7943bfa drm/i915/dg1: Increase mmio size to 4MB
4aa9f50249e2 drm/i915/dg1: Wait for pcode/uncore handshake at startup
c62a0b547629 drm/i915/dg1: Add DPLL macros for DG1
82d28e83c02c drm/i915/dg1: Add and setup DPLLs for DG1
c1bd97f322b5 drm/i915/dg1: Enable DPLL for DG1
29d541db7fa4 drm/i915/dg1: add hpd interrupt handling
bebd570390ca drm/i915/dg1: invert HPD pins
dc4378f76bda drm/i915/dg1: gmbus pin mapping
28762e8057ef drm/i915/dg1: Enable first 2 ports for DG1
d9fee22a3149 drm/i915/dg1: Don't program PHY_MISC for PHY-C and PHY-D
e9d9d678ccbb drm/i915/dg1: Update comp master/slave relationships for PHYs
b94b0daa426b drm/i915/dg1: Update voltage swing tables for DP
f3a63ae610cb drm/i915/dg1: provide port/phy mapping for vbt
6d2de4a643ed drm/i915/dg1: map/unmap pll clocks
-:244: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'phy' - possible side-effects?
#244: FILE: drivers/gpu/drm/i915/i915_reg.h:10305:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_VAL_TO_ID(val, phy) \
+	  ((((val) & DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)) >> ((phy % 2) * 2)) + (2 * (phy / 2)))

total: 0 errors, 0 warnings, 1 checks, 204 lines checked
0b374a4ce084 drm/i915/dg1: enable PORT C/D aka D/E
f4b22e8c57b9 drm/i915/dg1: Load DMC
352b53d3a545 drm/i915/rkl: Add initial workarounds
52c58ad484ed drm/i915/dg1: Add initial DG1 workarounds
9f3c06617494 drm/i915/dg1: DG1 does not support DC6

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
