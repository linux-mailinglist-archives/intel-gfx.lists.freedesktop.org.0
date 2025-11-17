Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4E5C63A78
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4FF210E1C6;
	Mon, 17 Nov 2025 10:59:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P7NlgTDH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE5FD10E1BE;
 Mon, 17 Nov 2025 10:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377141; x=1794913141;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tSiao+DGCrR258wWekmvO4prcAhys5K+cSPhslpJ344=;
 b=P7NlgTDHL85CnrktiGtCrZk9Kp1v9r9LfKT3U/cBDU4zCputpysQRDNh
 a0BO2lsMZxVvrqza22goGKNdCNwfsarjHFyEPC+vLi88QB1q96x+/Xp+P
 xelgCzvULTAaVuONTeOE9Q2vmeb12rCF39MC0eTs9q8afMGsWVnAVU4jy
 UfuG87quzNpEvSra3LZ+f9iWFVAVhVKjkljnea69zqMvKLhKl3lWTS9Eu
 uDpupxlKE/Ngmmf/XYiwhy2+zcZlu2ByukehLVlnJAPSnbS8WXStYqhTz
 X5C0GLK5x+i8QjiH3S52u4KcH1MZ+/WCSBoArcWVa+OjDI8nKfTI1jai3 Q==;
X-CSE-ConnectionGUID: H7pIjzctRJORP5ssp6juAg==
X-CSE-MsgGUID: hqAr2cIvSa+mvGajsdJqqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475306"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475306"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:00 -0800
X-CSE-ConnectionGUID: LLkBmQJKSl+UGD8FsPIOEQ==
X-CSE-MsgGUID: 4lhtWC3xSz+BLXHD55Jvsw==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:58:59 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 01/32] drm/i915/cx0: Rename TBT functions to be ICL specific
Date: Mon, 17 Nov 2025 12:45:31 +0200
Message-Id: <20251117104602.2363671-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251117104602.2363671-1-mika.kahola@intel.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Rename pll functions to include ICL platform as these are
used from ICL onwards.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 30 +++++++++----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 9c7cf03cf022..8c345e1bdd94 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3753,9 +3753,9 @@ static bool combo_pll_get_hw_state(struct intel_display *display,
 	return icl_pll_get_hw_state(display, pll, dpll_hw_state, enable_reg);
 }
 
-static bool tbt_pll_get_hw_state(struct intel_display *display,
-				 struct intel_dpll *pll,
-				 struct intel_dpll_hw_state *dpll_hw_state)
+static bool icl_tbt_pll_get_hw_state(struct intel_display *display,
+				     struct intel_dpll *pll,
+				     struct intel_dpll_hw_state *dpll_hw_state)
 {
 	return icl_pll_get_hw_state(display, pll, dpll_hw_state, TBT_PLL_ENABLE);
 }
@@ -3984,9 +3984,9 @@ static void combo_pll_enable(struct intel_display *display,
 	/* DVFS post sequence would be here. See the comment above. */
 }
 
-static void tbt_pll_enable(struct intel_display *display,
-			   struct intel_dpll *pll,
-			   const struct intel_dpll_hw_state *dpll_hw_state)
+static void icl_tbt_pll_enable(struct intel_display *display,
+			       struct intel_dpll *pll,
+			       const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 
@@ -4069,8 +4069,8 @@ static void combo_pll_disable(struct intel_display *display,
 	icl_pll_disable(display, pll, enable_reg);
 }
 
-static void tbt_pll_disable(struct intel_display *display,
-			    struct intel_dpll *pll)
+static void icl_tbt_pll_disable(struct intel_display *display,
+				struct intel_dpll *pll)
 {
 	icl_pll_disable(display, pll, TBT_PLL_ENABLE);
 }
@@ -4142,10 +4142,10 @@ static const struct intel_dpll_funcs combo_pll_funcs = {
 	.get_freq = icl_ddi_combo_pll_get_freq,
 };
 
-static const struct intel_dpll_funcs tbt_pll_funcs = {
-	.enable = tbt_pll_enable,
-	.disable = tbt_pll_disable,
-	.get_hw_state = tbt_pll_get_hw_state,
+static const struct intel_dpll_funcs icl_tbt_pll_funcs = {
+	.enable = icl_tbt_pll_enable,
+	.disable = icl_tbt_pll_disable,
+	.get_hw_state = icl_tbt_pll_get_hw_state,
 	.get_freq = icl_ddi_tbt_pll_get_freq,
 };
 
@@ -4159,7 +4159,7 @@ static const struct intel_dpll_funcs mg_pll_funcs = {
 static const struct dpll_info icl_plls[] = {
 	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
 	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
-	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
+	{ .name = "TBT PLL", .funcs = &icl_tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
 	  .is_alt_port_dpll = true, },
 	{ .name = "MG PLL 1", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
 	{ .name = "MG PLL 2", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
@@ -4207,7 +4207,7 @@ static const struct intel_dpll_funcs dkl_pll_funcs = {
 static const struct dpll_info tgl_plls[] = {
 	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
 	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
-	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
+	{ .name = "TBT PLL", .funcs = &icl_tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
 	  .is_alt_port_dpll = true, },
 	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
 	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
@@ -4285,7 +4285,7 @@ static const struct intel_dpll_mgr adls_pll_mgr = {
 static const struct dpll_info adlp_plls[] = {
 	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
 	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
-	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
+	{ .name = "TBT PLL", .funcs = &icl_tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
 	  .is_alt_port_dpll = true, },
 	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
 	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
-- 
2.34.1

