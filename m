Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E903CD743D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 23:19:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D62A10E268;
	Mon, 22 Dec 2025 22:19:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aoZbbDJO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CCCC10E21D;
 Mon, 22 Dec 2025 22:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766441951; x=1797977951;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=2Bxinsk5UBVH/b3IHt0GUyDQzvQJg+Mjqq6L7XAhv6g=;
 b=aoZbbDJOkpaO+T1dpbBOe9j5NWm8bB7tsL+FN0Lgnu3nQ1gu8sXhvt0L
 eEOmr7KRYRMjiWgfem5mwbwc9tffuHWfC8CDIiBTiYDplD6Z3Lk6X+1M/
 8Re+tPx2qRkIkc171V+3CpOFETXU+F2Llj4bD57oGtXWMXelkwy/JgpPo
 R4HOtUVStkq9rESZmbOU62uen2q9HCok+qvz0J+bsrpfmy0lQSdKntTUn
 y+WXX4c1uN/QyNkedZhax4wp82er7/zDHo410kDc2/lRje/jLGeFTwPg+
 bpUTwthhRTcTWUabhX83dlyFCvMDYNsy/41QNpx9YTpXhY7hByeNbZLnf w==;
X-CSE-ConnectionGUID: TSZHxSsrSuyMGdLgn2pUNA==
X-CSE-MsgGUID: D8JporFTR4ClSN/q65v48g==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68339745"
X-IronPort-AV: E=Sophos;i="6.21,169,1763452800"; d="scan'208";a="68339745"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 14:19:11 -0800
X-CSE-ConnectionGUID: x8vJdfBPQZKuw9tPf65aSA==
X-CSE-MsgGUID: hXaKgYkQRvWuKelQzPCANQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,169,1763452800"; d="scan'208";a="199619013"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.137])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 14:19:09 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 22 Dec 2025 19:18:48 -0300
Subject: [PATCH 2/2] drm/i915/cdclk: Implement Wa_13012396614
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251222-display-wa-13012396614-timing-of-mdclk-source-selection-v1-2-a2f7e9447f7a@intel.com>
References: <20251222-display-wa-13012396614-timing-of-mdclk-source-selection-v1-0-a2f7e9447f7a@intel.com>
In-Reply-To: <20251222-display-wa-13012396614-timing-of-mdclk-source-selection-v1-0-a2f7e9447f7a@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.15-dev
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A new workaround was defined for Xe3_LPD, which requires a tweak on how
we handle MDCLK selection.  Implement it.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c      | 31 ++++++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_display_wa.c |  2 ++
 drivers/gpu/drm/i915/display/intel_display_wa.h |  1 +
 3 files changed, 31 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 0aa59d624095..7443e5285942 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -39,6 +39,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
+#include "intel_display_wa.h"
 #include "intel_dram.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pci_config.h"
@@ -1858,6 +1859,20 @@ static void bxt_de_pll_enable(struct intel_display *display, int vco)
 
 static void icl_cdclk_pll_disable(struct intel_display *display)
 {
+	/*
+	 * Wa_13012396614:
+	 * Fixes: A sporadic race condition between MDCLK selection and PLL
+	 *        enabling.
+	 * Workaround:
+	 *   Change programming of MDCLK source selection in CDCLK_CTL:
+	 *    - When disabling the CDCLK PLL, first set MDCLK source to be CD2XCLK.
+	 *    - When enabling the CDCLK PLL, update MDCLK source selection only
+	 *      after the PLL is enabled (which is already done as part of the
+	 *      normal flow of _bxt_set_cdclk()).
+	 */
+	if (intel_display_wa(display, 13012396614))
+		intel_de_rmw(display, CDCLK_CTL, MDCLK_SOURCE_SEL_MASK, MDCLK_SOURCE_SEL_CD2XCLK);
+
 	intel_de_rmw(display, BXT_DE_PLL_ENABLE,
 		     BXT_DE_PLL_PLL_ENABLE, 0);
 
@@ -2147,10 +2162,20 @@ static u32 bxt_cdclk_ctl(struct intel_display *display,
 	    cdclk >= 500000)
 		val |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
 
-	if (DISPLAY_VER(display) >= 20)
-		val |= xe2lpd_mdclk_source_sel(display);
-	else
+	if (DISPLAY_VER(display) >= 20) {
+		/*
+		 * Wa_13012396614 requires selecting CD2XCLK as MDCLK source
+		 * prior to disabling the PLL, which is already handled by
+		 * icl_cdclk_pll_disable().  Here we are just making sure
+		 * we keep the expected value.
+		 */
+		if (intel_display_wa(display, 13012396614) && vco == 0)
+			val |= MDCLK_SOURCE_SEL_CD2XCLK;
+		else
+			val |= xe2lpd_mdclk_source_sel(display);
+	} else {
 		val |= skl_cdclk_decimal(cdclk);
+	}
 
 	return val;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 2b360447e92e..581d943b9bdc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -62,6 +62,8 @@ static bool intel_display_needs_wa_16025573575(struct intel_display *display)
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name)
 {
 	switch (wa) {
+	case INTEL_DISPLAY_WA_13012396614:
+		return DISPLAY_VERx100(display) == 3000;
 	case INTEL_DISPLAY_WA_14011503117:
 		return DISPLAY_VER(display) == 13;
 	case INTEL_DISPLAY_WA_14025769978:
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index 56b586e38306..40f989f19df1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -27,6 +27,7 @@ bool intel_display_needs_wa_16023588340(struct intel_display *display);
  * number.
  */
 enum intel_display_wa {
+	INTEL_DISPLAY_WA_13012396614,
 	INTEL_DISPLAY_WA_14011503117,
 	INTEL_DISPLAY_WA_14025769978,
 	INTEL_DISPLAY_WA_15018326506,

-- 
2.52.0

