Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92062211D94
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 09:56:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A31336EA8F;
	Thu,  2 Jul 2020 07:56:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 97B5A6EA8F;
 Thu,  2 Jul 2020 07:56:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 91FEEA0071;
 Thu,  2 Jul 2020 07:56:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 02 Jul 2020 07:56:22 -0000
Message-ID: <159367658256.5656.13267787648995881652@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200701235339.32608-1-lucas.demarchi@intel.com>
In-Reply-To: <20200701235339.32608-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_DG1_=28rev4=29?=
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

Series: Introduce DG1 (rev4)
URL   : https://patchwork.freedesktop.org/series/77496/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
dbe37e6fd3b8 drm/i915: Add has_master_unit_irq flag
a57df38e220b drm/i915/dg1: add initial DG-1 definitions
-:41: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#41: FILE: drivers/gpu/drm/i915/i915_drv.h:1565:
+#define IS_DG1_REVID(p, since, until) \
+	(IS_DG1(p) && IS_REVID(p, since, until))

total: 0 errors, 0 warnings, 1 checks, 53 lines checked
09d7a3bcfa1c drm/i915/dg1: Add DG1 PCI IDs
7645aba86977 drm/i915/dg1: add support for the master unit interrupt
a4e7d1e63681 drm/i915/dg1: Remove SHPD_FILTER_CNT register programming
c3c8cdac1377 drm/i915/dg1: Add fake PCH
2fb5c0ccb1b8 drm/i915/dg1: Initialize RAWCLK properly
b570a1e5a878 drm/i915/dg1: Define MOCS table for DG1
b0d4b22e21ca drm/i915/dg1: Add DG1 power wells
c37b1fbd6e4c drm/i915/dg1: Increase mmio size to 4MB
3a7db869077a drm/i915/dg1: Wait for pcode/uncore handshake at startup
29c1c8aa23b1 drm/i915/dg1: Add DPLL macros for DG1
b35df30e60c1 drm/i915/dg1: Add and setup DPLLs for DG1
51e0bbafd49f drm/i915/dg1: Enable DPLL for DG1
453927842498 drm/i915/dg1: add hpd interrupt handling
87e49290c0ab drm/i915/dg1: invert HPD pins
5d8f741133ed drm/i915/dg1: gmbus pin mapping
ef8b7dbd1018 drm/i915/dg1: Enable first 2 ports for DG1
4815d78bced9 drm/i915/dg1: Don't program PHY_MISC for PHY-C and PHY-D
2cefb9635321 drm/i915/dg1: Update comp master/slave relationships for PHYs
29631f3b16ff drm/i915/dg1: Update voltage swing tables for DP
4d0feb983cfb drm/i915/dg1: provide port/phy mapping for vbt
75b64397b636 drm/i915/dg1: map/unmap pll clocks
-:244: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'phy' - possible side-effects?
#244: FILE: drivers/gpu/drm/i915/i915_reg.h:10305:
+#define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_VAL_TO_ID(val, phy) \
+	  ((((val) & DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)) >> ((phy % 2) * 2)) + (2 * (phy / 2)))

total: 0 errors, 0 warnings, 1 checks, 204 lines checked
667ccc4421b2 drm/i915/dg1: enable PORT C/D aka D/E
3405f35bf028 drm/i915/dg1: Load DMC
2b7a3b38daa6 drm/i915/rkl: Add initial workarounds
838479249b59 drm/i915/dg1: Add initial DG1 workarounds
18c2a8bf107b drm/i915/dg1: DG1 does not support DC6

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
