Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F27227A9F7
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Sep 2020 10:51:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2A9D89857;
	Mon, 28 Sep 2020 08:51:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4061E89428;
 Mon, 28 Sep 2020 08:51:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 36EE5A9F66;
 Mon, 28 Sep 2020 08:51:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Mon, 28 Sep 2020 08:51:42 -0000
Message-ID: <160128310222.8774.12426776201028838518@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200928080931.246347-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20200928080931.246347-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/jsl=3A_Update_JasperLake_Voltage_swing_table?=
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

Series: drm/i915/jsl: Update JasperLake Voltage swing table
URL   : https://patchwork.freedesktop.org/series/82150/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7785c9b4e203 drm/i915/jsl: Split EHL/JSL platform info and PCI ids
-:20: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#20: FILE: drivers/gpu/drm/i915/i915_drv.h:1420:
+#define IS_ELKHARTLAKE(dev_priv) (IS_PLATFORM(dev_priv, INTEL_ELKHARTLAKE) || \
+				IS_PLATFORM(dev_priv, INTEL_JASPERLAKE))

-:98: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#98: FILE: include/drm/i915_pciids.h:592:
+#define INTEL_JSL_IDS(info) \
+	INTEL_VGA_DEVICE(0x4E71, info), \
 	INTEL_VGA_DEVICE(0x4E61, info), \
 	INTEL_VGA_DEVICE(0x4E57, info), \
 	INTEL_VGA_DEVICE(0x4E55, info), \

-:98: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#98: FILE: include/drm/i915_pciids.h:592:
+#define INTEL_JSL_IDS(info) \
+	INTEL_VGA_DEVICE(0x4E71, info), \
 	INTEL_VGA_DEVICE(0x4E61, info), \
 	INTEL_VGA_DEVICE(0x4E57, info), \
 	INTEL_VGA_DEVICE(0x4E55, info), \

total: 1 errors, 0 warnings, 2 checks, 66 lines checked
07ca5d2ec781 drm/i915/edp/jsl: Update vswing table for HBR and HBR2
-:77: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#77: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1143:
+				return jsl_combo_phy_ddi_translations_edp_hbr2;
+			} else {

-:82: WARNING:PREFER_FALLTHROUGH: Prefer 'fallthrough;' over fallthrough comment
#82: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1148:
+		/* fall through */

-:100: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#100: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:2325:
+			jsl_get_combo_buf_trans(encoder, encoder->type,
+					intel_dp->link_rate, &n_entries);

total: 0 errors, 2 warnings, 1 checks, 98 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
