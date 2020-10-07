Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBB8285E74
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 13:49:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BCBD6E8C6;
	Wed,  7 Oct 2020 11:49:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C04596E8C3;
 Wed,  7 Oct 2020 11:49:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6A08A47DB;
 Wed,  7 Oct 2020 11:49:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Wed, 07 Oct 2020 11:49:30 -0000
Message-ID: <160207137071.15196.7704195742679282826@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201007093638.15006-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20201007093638.15006-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/jsl=3A_Split_EHL/JSL_platform_info_and_PCI_ids?=
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

Series: drm/i915/jsl: Split EHL/JSL platform info and PCI ids
URL   : https://patchwork.freedesktop.org/series/82437/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
210bd6977cda drm/i915/jsl: Split EHL/JSL platform info and PCI ids
-:214: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pll->info->id == DPLL_ID_EHL_DPLL4'
#214: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:155:
+	if (IS_JSL_EHL(i915) && (pll->info->id == DPLL_ID_EHL_DPLL4))

-:325: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#325: FILE: drivers/gpu/drm/i915/i915_drv.h:1420:
+#define IS_JSL_EHL(dev_priv)	(IS_PLATFORM(dev_priv, INTEL_JASPERLAKE) || \
+				IS_PLATFORM(dev_priv, INTEL_ELKHARTLAKE))

-:336: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#336: FILE: drivers/gpu/drm/i915/i915_drv.h:1562:
+#define IS_JSL_EHL_REVID(p, since, until) \
+	(IS_JSL_EHL(p) && IS_REVID(p, since, until))

-:444: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#444: FILE: include/drm/i915_pciids.h:592:
+#define INTEL_JSL_IDS(info) \
+	INTEL_VGA_DEVICE(0x4E71, info), \
 	INTEL_VGA_DEVICE(0x4E61, info), \
 	INTEL_VGA_DEVICE(0x4E57, info), \
 	INTEL_VGA_DEVICE(0x4E55, info), \

-:444: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#444: FILE: include/drm/i915_pciids.h:592:
+#define INTEL_JSL_IDS(info) \
+	INTEL_VGA_DEVICE(0x4E71, info), \
 	INTEL_VGA_DEVICE(0x4E61, info), \
 	INTEL_VGA_DEVICE(0x4E57, info), \
 	INTEL_VGA_DEVICE(0x4E55, info), \

total: 1 errors, 0 warnings, 4 checks, 331 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
