Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F5A2809D1
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 00:00:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03D7E6E8DC;
	Thu,  1 Oct 2020 22:00:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4FF306E8D3;
 Thu,  1 Oct 2020 22:00:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 47DCCA47E4;
 Thu,  1 Oct 2020 22:00:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Thu, 01 Oct 2020 22:00:50 -0000
Message-ID: <160158965026.16180.2722329862599571882@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201001212435.269840-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20201001212435.269840-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/82313/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7c3e877540c1 drm/i915/jsl: Split EHL/JSL platform info and PCI ids
-:156: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pll->info->id == DPLL_ID_EHL_DPLL4'
#156: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:155:
+	if (IS_EHL_JSL(i915) && (pll->info->id == DPLL_ID_EHL_DPLL4))

-:258: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#258: FILE: drivers/gpu/drm/i915/i915_drv.h:1420:
+#define IS_EHL_JSL(dev_priv)	(IS_PLATFORM(dev_priv, INTEL_ELKHARTLAKE) || \
+				IS_PLATFORM(dev_priv, INTEL_JASPERLAKE))

-:375: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#375: FILE: include/drm/i915_pciids.h:592:
+#define INTEL_JSL_IDS(info) \
+	INTEL_VGA_DEVICE(0x4E71, info), \
 	INTEL_VGA_DEVICE(0x4E61, info), \
 	INTEL_VGA_DEVICE(0x4E57, info), \
 	INTEL_VGA_DEVICE(0x4E55, info), \

-:375: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#375: FILE: include/drm/i915_pciids.h:592:
+#define INTEL_JSL_IDS(info) \
+	INTEL_VGA_DEVICE(0x4E71, info), \
 	INTEL_VGA_DEVICE(0x4E61, info), \
 	INTEL_VGA_DEVICE(0x4E57, info), \
 	INTEL_VGA_DEVICE(0x4E55, info), \

total: 1 errors, 0 warnings, 3 checks, 273 lines checked
5b220796eaf0 drm/i915/edp/jsl: Update vswing table for HBR and HBR2
-:94: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#94: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1227:
+			return jsl_combo_phy_ddi_translations_edp_hbr2;
+		} else {

total: 0 errors, 1 warnings, 0 checks, 145 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
