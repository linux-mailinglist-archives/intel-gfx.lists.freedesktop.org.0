Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D32728D4EC
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 21:48:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 501E66E939;
	Tue, 13 Oct 2020 19:48:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4ED0E6E939;
 Tue, 13 Oct 2020 19:48:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 48471A0009;
 Tue, 13 Oct 2020 19:48:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Tue, 13 Oct 2020 19:48:53 -0000
Message-ID: <160261853326.28551.11123126795013767609@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201013192948.63470-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20201013192948.63470-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/jsl=3A_Split_EHL/JSL_platform_info_and_PCI_ids_=28?=
 =?utf-8?q?rev2=29?=
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

Series: drm/i915/jsl: Split EHL/JSL platform info and PCI ids (rev2)
URL   : https://patchwork.freedesktop.org/series/82437/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7c82a7cc787d drm/i915/jsl: Split EHL/JSL platform info and PCI ids
-:218: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pll->info->id == DPLL_ID_EHL_DPLL4'
#218: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:155:
+	if (IS_JSL_EHL(i915) && (pll->info->id == DPLL_ID_EHL_DPLL4))

-:341: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#341: FILE: drivers/gpu/drm/i915/i915_drv.h:1420:
+#define IS_JSL_EHL(dev_priv)	(IS_PLATFORM(dev_priv, INTEL_JASPERLAKE) || \
+				IS_PLATFORM(dev_priv, INTEL_ELKHARTLAKE))

-:352: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#352: FILE: drivers/gpu/drm/i915/i915_drv.h:1562:
+#define IS_JSL_EHL_REVID(p, since, until) \
+	(IS_JSL_EHL(p) && IS_REVID(p, since, until))

-:460: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#460: FILE: include/drm/i915_pciids.h:592:
+#define INTEL_JSL_IDS(info) \
+	INTEL_VGA_DEVICE(0x4E71, info), \
 	INTEL_VGA_DEVICE(0x4E61, info), \
 	INTEL_VGA_DEVICE(0x4E57, info), \
 	INTEL_VGA_DEVICE(0x4E55, info), \

-:460: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#460: FILE: include/drm/i915_pciids.h:592:
+#define INTEL_JSL_IDS(info) \
+	INTEL_VGA_DEVICE(0x4E71, info), \
 	INTEL_VGA_DEVICE(0x4E61, info), \
 	INTEL_VGA_DEVICE(0x4E57, info), \
 	INTEL_VGA_DEVICE(0x4E55, info), \

total: 1 errors, 0 warnings, 4 checks, 338 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
