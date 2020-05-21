Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 926D91DC469
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 03:05:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2D0C6E8E8;
	Thu, 21 May 2020 01:05:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A42BF6E8DE;
 Thu, 21 May 2020 01:05:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E2A9A0BD0;
 Thu, 21 May 2020 01:05:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 21 May 2020 01:05:16 -0000
Message-ID: <159002311661.4441.2409763978170738747@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
In-Reply-To: <20200521003803.18936-1-lucas.demarchi@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/77496/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
eb8bcc051bcb drm/i915/rkl: Add DPLL4 support
8eb7430370e7 drm/i915/rkl: Add DDC pin mapping
470f943d8711 drm/i915/rkl: Setup ports/phys
03cb728ff5e5 drm/i915/rkl: provide port/phy mapping for vbt
-:20: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#20: 
[drm:intel_dp_init_connector [i915]] Adding DP connector on [ENCODER:275:DDI A]

total: 0 errors, 1 warnings, 0 checks, 104 lines checked
a33d8a84bd52 drm/i915/rkl: Handle HTI
-:93: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#93: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:274:
+{
+

-:155: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#155: FILE: drivers/gpu/drm/i915/i915_reg.h:2911:
+#define   HDPORT_PHY_USED_DP(phy)	REG_BIT(2*phy + 2)
                                  	         ^

-:155: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'phy' may be better as '(phy)' to avoid precedence issues
#155: FILE: drivers/gpu/drm/i915/i915_reg.h:2911:
+#define   HDPORT_PHY_USED_DP(phy)	REG_BIT(2*phy + 2)

-:156: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#156: FILE: drivers/gpu/drm/i915/i915_reg.h:2912:
+#define   HDPORT_PHY_USED_HDMI(phy)	REG_BIT(2*phy + 1)
                                    	         ^

-:156: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'phy' may be better as '(phy)' to avoid precedence issues
#156: FILE: drivers/gpu/drm/i915/i915_reg.h:2912:
+#define   HDPORT_PHY_USED_HDMI(phy)	REG_BIT(2*phy + 1)

total: 0 errors, 0 warnings, 5 checks, 116 lines checked
33974ed52c17 drm/i915/rkl: Handle comp master/slave relationships for PHYs
7afbe335b525 drm/i915/rkl: Add initial workarounds
84c20511222a drm/i915: make intel_{uncore, de}_rmw() more useful
-:53: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#53: FILE: drivers/gpu/drm/i915/intel_uncore.h:396:
+static inline u32 intel_uncore_rmw_fw(struct intel_uncore *uncore,
 				       i915_reg_t reg, u32 clear, u32 set)

total: 0 errors, 0 warnings, 1 checks, 42 lines checked
4aa7cd7024ae drm/i915: Add has_master_unit_irq flag
24d7987fb08f drm/i915: add pcie snoop flag
5b325ece80ab drm/i915/dg1: add initial DG-1 definitions
-:40: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#40: FILE: drivers/gpu/drm/i915/i915_drv.h:1548:
+#define IS_DG1_REVID(p, since, until) \
+	(IS_DG1(p) && IS_REVID(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 54 lines checked
40ca1f1b6295 drm/i915/dg1: Add DG1 PCI IDs
cb1bcd5b7bed drm/i915/dg1: Add fake PCH
3dbe2b7cdf3b drm/i915/dg1: Initialize RAWCLK properly
56eeab2dc631 drm/i915/dg1: Define MOCS table for DG1
afeb7e41f94f drm/i915/dg1: Add DG1 power wells
c3003b9fc682 drm/i915/dg1: Increase mmio size to 4MB
ae8f9beefdc3 drm/i915/dg1: add support for the master unit interrupt
1374e1028fdd drm/i915/dg1: Wait for pcode/uncore handshake at startup
8ce1edf79a8b drm/i915/dg1: Add DPLL macros for DG1
a479afd96b2f drm/i915/dg1: Add and setup DPLLs for DG1
b71cffc572c1 drm/i915/dg1: Enable DPLL for DG1
ee35c0b01372 drm/i915/dg1: add hpd interrupt handling
ec9aba37c1bc drm/i915/dg1: invert HPD pins
cc507b9ee4a3 drm/i915/dg1: gmbus pin mapping
f97a2a7d014c drm/i915/dg1: Handle GRF/IC ECC error irq
1dade3145d62 drm/i915/dg1: Log counter on SLM ECC error
f09b2dfb4b4b drm/i915/dg1: Enable first 2 ports for DG1
abb9e6fb2b34 drm/i915/dg1: Don't program PHY_MISC for PHY-C and PHY-D
4b16f7612edc drm/i915/dg1: Update comp master/slave relationships for PHYs
aa02226ddf5c drm/i915/dg1: Update voltage swing tables for DP
4a55aec7a032 drm/i915/dg1: provide port/phy mapping for vbt
f4fbfddf277b drm/i915/dg1: map/unmap pll clocks
-:244: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'phy' - possible side-effects?
#244: FILE: drivers/gpu/drm/i915/i915_reg.h:10252:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_VAL_TO_ID(val, phy) \
+	  ((((val) & DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)) >> ((phy % 2) * 2)) + (2 * (phy / 2)))

total: 0 errors, 0 warnings, 1 checks, 204 lines checked
193af3a3fa98 drm/i915/dg1: enable PORT C/D aka D/E
78c4ae0c9519 drm/i915/dg1: Load DMC
c2d80f1b6f74 drm/i915/dg1: Add initial DG1 workarounds
bc44bd9a82af drm/i915/dg1: Remove SHPD_FILTER_CNT register programming

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
