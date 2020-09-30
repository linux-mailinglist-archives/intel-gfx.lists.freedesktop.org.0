Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E456527E28A
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 09:25:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5B6489D4D;
	Wed, 30 Sep 2020 07:25:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 132D589D42;
 Wed, 30 Sep 2020 07:25:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 021A4A7525;
 Wed, 30 Sep 2020 07:25:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 30 Sep 2020 07:25:10 -0000
Message-ID: <160145071097.17416.917015014930953761@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
In-Reply-To: <20200930064234.85769-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_DG1?=
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

Series: Introduce DG1
URL   : https://patchwork.freedesktop.org/series/82241/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2ab727864817 drm/i915/dg1: add more PCI ids
02a93e492718 drm/i915/dg1: Initialize RAWCLK properly
90eb98d91e8e drm/i915/dg1: Define MOCS table for DG1
44b1fb34d9e6 drm/i915/dg1: Add DG1 power wells
af7964472d1d drm/i915/dg1: Increase mmio size to 4MB
313e894b5c43 drm/i915/dg1: Wait for pcode/uncore handshake at startup
46ba3b109500 drm/i915/dg1: Add DPLL macros for DG1
802098453f92 drm/i915/dg1: Add and setup DPLLs for DG1
fc9e91e510d5 drm/i915/dg1: Enable DPLL for DG1
4caa7e8d99ff drm/i915/dg1: add hpd interrupt handling
1556d9b840f8 drm/i915/dg1: invert HPD pins
ed7812a70681 drm/i915/dg1: gmbus pin mapping
b5634537768e drm/i915/dg1: Enable first 2 ports for DG1
a96cb47a46d4 drm/i915/dg1: Don't program PHY_MISC for PHY-C and PHY-D
e764c35d3b9e drm/i915/dg1: Update comp master/slave relationships for PHYs
dc3f763d7b05 drm/i915/dg1: Update voltage swing tables for DP
d0727f32e9ec drm/i915/dg1: provide port/phy mapping for vbt
3056c7ce001a drm/i915/dg1: map/unmap pll clocks
-:244: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'phy' - possible side-effects?
#244: FILE: drivers/gpu/drm/i915/i915_reg.h:10320:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_VAL_TO_ID(val, phy) \
+	  ((((val) & DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)) >> ((phy % 2) * 2)) + (2 * (phy / 2)))

total: 0 errors, 0 warnings, 1 checks, 204 lines checked
571405def6c9 drm/i915/dg1: enable PORT C/D aka D/E
f5c37ea500ef drm/i915/dg1: Load DMC
01007b9c648c drm/i915/dg1: Add initial DG1 workarounds
9034c09bbbdf drm/i915/dg1: DG1 does not support DC6
648249c6dd8b drm/i915/dg1: Change DMC_DEBUG{1, 2} registers
b609cfe8808b drm/i915/dgfx: define llc and snooping behaviour


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
