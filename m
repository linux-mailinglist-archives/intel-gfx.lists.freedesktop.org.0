Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3008C283FF2
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Oct 2020 21:59:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54EDE6E159;
	Mon,  5 Oct 2020 19:58:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DC8FE6E060;
 Mon,  5 Oct 2020 19:58:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D4711A73C9;
 Mon,  5 Oct 2020 19:58:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Mon, 05 Oct 2020 19:58:56 -0000
Message-ID: <160192793684.25153.15698201594437320716@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201005170619.1523-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20201005170619.1523-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/jsl=3A_Update_JSL_Voltage_swing_table?=
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

Series: drm/i915/jsl: Update JSL Voltage swing table
URL   : https://patchwork.freedesktop.org/series/82386/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0d2e2bc8cea7 drm/i915/jsl: Split EHL/JSL platform info and PCI ids
-:163: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pll->info->id == DPLL_ID_EHL_DPLL4'
#163: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:155:
+	if (IS_JSL_EHL(i915) && (pll->info->id == DPLL_ID_EHL_DPLL4))

-:276: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#276: FILE: drivers/gpu/drm/i915/i915_drv.h:1422:
+#define IS_JSL_EHL(dev_priv)	(IS_JASPERLAKE(dev_priv) || \
+				IS_ELKHARTLAKE(dev_priv))

-:287: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#287: FILE: drivers/gpu/drm/i915/i915_drv.h:1564:
+#define IS_JSL_EHL_REVID(p, since, until) \
+	(IS_JSL_EHL(p) && IS_REVID(p, since, until))

-:377: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#377: FILE: include/drm/i915_pciids.h:592:
+#define INTEL_JSL_IDS(info) \
+	INTEL_VGA_DEVICE(0x4E71, info), \
 	INTEL_VGA_DEVICE(0x4E61, info), \
 	INTEL_VGA_DEVICE(0x4E57, info), \
 	INTEL_VGA_DEVICE(0x4E55, info), \

-:377: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#377: FILE: include/drm/i915_pciids.h:592:
+#define INTEL_JSL_IDS(info) \
+	INTEL_VGA_DEVICE(0x4E71, info), \
 	INTEL_VGA_DEVICE(0x4E61, info), \
 	INTEL_VGA_DEVICE(0x4E57, info), \
 	INTEL_VGA_DEVICE(0x4E55, info), \

total: 1 errors, 0 warnings, 4 checks, 269 lines checked
fc458df5554c drm/i915/edp/jsl: Update vswing table for HBR and HBR2
-:101: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#101: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1227:
+			return jsl_combo_phy_ddi_translations_edp_hbr2;
+		} else {

total: 0 errors, 1 warnings, 0 checks, 141 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
