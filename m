Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F81822D174
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 23:45:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2A006EA21;
	Fri, 24 Jul 2020 21:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ECC426EA21;
 Fri, 24 Jul 2020 21:45:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E6BC5A0BA8;
 Fri, 24 Jul 2020 21:45:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 24 Jul 2020 21:45:49 -0000
Message-ID: <159562714991.15334.3889107571859098310@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
In-Reply-To: <20200724213918.27424-1-lucas.demarchi@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/79863/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8f74e276b41a drm/i915/dg1: Initialize RAWCLK properly
c2699a393ba3 drm/i915/dg1: Define MOCS table for DG1
da0e39cc42f3 drm/i915/dg1: Add DG1 power wells
bff25189ad22 drm/i915/dg1: Increase mmio size to 4MB
6763f3077f0d drm/i915/dg1: Wait for pcode/uncore handshake at startup
e18904ffdb23 drm/i915/dg1: Add DPLL macros for DG1
4b251c381b35 drm/i915/dg1: Add and setup DPLLs for DG1
fe51b026ee82 drm/i915/dg1: Enable DPLL for DG1
cbbc5366d85e drm/i915/dg1: add hpd interrupt handling
c0b3de1be1a6 drm/i915/dg1: invert HPD pins
d24c8e3696f3 drm/i915/dg1: gmbus pin mapping
85111a9da7b5 drm/i915/dg1: Enable first 2 ports for DG1
73800c5e78e4 drm/i915/dg1: Don't program PHY_MISC for PHY-C and PHY-D
4933a57b9c0a drm/i915/dg1: Update comp master/slave relationships for PHYs
bcab535050e1 drm/i915/dg1: Update voltage swing tables for DP
72f10411364c drm/i915/dg1: provide port/phy mapping for vbt
4c68f89318f4 drm/i915/dg1: map/unmap pll clocks
-:244: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'phy' - possible side-effects?
#244: FILE: drivers/gpu/drm/i915/i915_reg.h:10340:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_VAL_TO_ID(val, phy) \
+	  ((((val) & DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)) >> ((phy % 2) * 2)) + (2 * (phy / 2)))

total: 0 errors, 0 warnings, 1 checks, 204 lines checked
472d90a048b8 drm/i915/dg1: enable PORT C/D aka D/E
2d1e6fca5292 drm/i915/dg1: Load DMC
f463503a1825 drm/i915/dg1: Add initial DG1 workarounds
5e4111a18707 drm/i915/dg1: DG1 does not support DC6
a9a8a1141462 drm/i915/dg1: Change DMC_DEBUG{1, 2} registers


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
