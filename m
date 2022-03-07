Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 735D14D0C25
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 00:40:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B538E10E1CB;
	Mon,  7 Mar 2022 23:40:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A52A910E1CB
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 23:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646696398; x=1678232398;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AF/lPB5aopdt9o1fDpTKSbZl+p/YBty+hQyomI0CxcQ=;
 b=ewowCXZMRiT85SFOCAj85/ePbATmQF7U/gavnVA3j46w0XDVJ6IV5JRo
 PzXCZlYvxyemB7d9BhrsMz2w2W3c+BC577ehtQWnDkx71PRP+ToQqsil/
 BXEqvmbaabDFXUePhkNEcG3A7pRqTiWgHBsxmMDtDJ6z39Huj5dXxlUgH
 MHGQpwRsS9eQxC9clP+OHo6xBnWxXKOtAHM7dOGtHp4zqM2nDk0wmVVc8
 rfrjzC1SDfkt4TIY78VAufQkNt21dovYae3rAqQwImhReNyu4GSbCVxtL
 cOy3XSB8t9QsIE/6NhmiGlLyNwt31fDFHJAytzYpl/nOzffvbEgBpc+9b g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="252109758"
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="252109758"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 15:39:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="509889306"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 07 Mar 2022 15:39:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Mar 2022 01:39:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Mar 2022 01:39:37 +0200
Message-Id: <20220307233940.4161-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
References: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/8] drm/i915: Replace bxt_clk_div with
 struct dpll
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

bxt_clk_div is basically the same as struct dpll. Just use the latter.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 50 ++++++-------------
 1 file changed, 16 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ae3c07cc2eaa..4b52086aa9e9 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2083,69 +2083,51 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	return ret;
 }
 
-/* bxt clock parameters */
-struct bxt_clk_div {
-	int clock;
-	u32 p1;
-	u32 p2;
-	u32 m2;
-	u32 n;
-
-	int vco;
-};
-
 /* pre-calculated values for DP linkrates */
-static const struct bxt_clk_div bxt_dp_clk_val[] = {
+static const struct dpll bxt_dp_clk_val[] = {
 	/* m2 is .22 binary fixed point */
-	{ .clock = 162000, .p1 = 4, .p2 = 2, .n = 1, .m2 = 0x819999a /* 32.4 */ },
-	{ .clock = 270000, .p1 = 4, .p2 = 1, .n = 1, .m2 = 0x6c00000 /* 27.0 */ },
-	{ .clock = 540000, .p1 = 2, .p2 = 1, .n = 1, .m2 = 0x6c00000 /* 27.0 */ },
-	{ .clock = 216000, .p1 = 3, .p2 = 2, .n = 1, .m2 = 0x819999a /* 32.4 */ },
-	{ .clock = 243000, .p1 = 4, .p2 = 1, .n = 1, .m2 = 0x6133333 /* 24.3 */ },
-	{ .clock = 324000, .p1 = 4, .p2 = 1, .n = 1, .m2 = 0x819999a /* 32.4 */ },
-	{ .clock = 432000, .p1 = 3, .p2 = 1, .n = 1, .m2 = 0x819999a /* 32.4 */ },
+	{ .dot = 162000, .p1 = 4, .p2 = 2, .n = 1, .m2 = 0x819999a /* 32.4 */ },
+	{ .dot = 270000, .p1 = 4, .p2 = 1, .n = 1, .m2 = 0x6c00000 /* 27.0 */ },
+	{ .dot = 540000, .p1 = 2, .p2 = 1, .n = 1, .m2 = 0x6c00000 /* 27.0 */ },
+	{ .dot = 216000, .p1 = 3, .p2 = 2, .n = 1, .m2 = 0x819999a /* 32.4 */ },
+	{ .dot = 243000, .p1 = 4, .p2 = 1, .n = 1, .m2 = 0x6133333 /* 24.3 */ },
+	{ .dot = 324000, .p1 = 4, .p2 = 1, .n = 1, .m2 = 0x819999a /* 32.4 */ },
+	{ .dot = 432000, .p1 = 3, .p2 = 1, .n = 1, .m2 = 0x819999a /* 32.4 */ },
 };
 
 static bool
 bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state,
-			  struct bxt_clk_div *clk_div)
+			  struct dpll *clk_div)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct dpll best_clock;
 
 	/* Calculate HDMI div */
 	/*
 	 * FIXME: tie the following calculation into
 	 * i9xx_crtc_compute_clock
 	 */
-	if (!bxt_find_best_dpll(crtc_state, &best_clock)) {
+	if (!bxt_find_best_dpll(crtc_state, clk_div)) {
 		drm_dbg(&i915->drm, "no PLL dividers found for clock %d pipe %c\n",
 			crtc_state->port_clock,
 			pipe_name(crtc->pipe));
 		return false;
 	}
 
-	clk_div->p1 = best_clock.p1;
-	clk_div->p2 = best_clock.p2;
-	drm_WARN_ON(&i915->drm, best_clock.m1 != 2);
-	clk_div->n = best_clock.n;
-	clk_div->m2 = best_clock.m2;
-
-	clk_div->vco = best_clock.vco;
+	drm_WARN_ON(&i915->drm, clk_div->m1 != 2);
 
 	return true;
 }
 
 static void bxt_ddi_dp_pll_dividers(struct intel_crtc_state *crtc_state,
-				    struct bxt_clk_div *clk_div)
+				    struct dpll *clk_div)
 {
 	int clock = crtc_state->port_clock;
 	int i;
 
 	*clk_div = bxt_dp_clk_val[0];
 	for (i = 0; i < ARRAY_SIZE(bxt_dp_clk_val); ++i) {
-		if (bxt_dp_clk_val[i].clock == clock) {
+		if (bxt_dp_clk_val[i].dot == clock) {
 			*clk_div = bxt_dp_clk_val[i];
 			break;
 		}
@@ -2155,7 +2137,7 @@ static void bxt_ddi_dp_pll_dividers(struct intel_crtc_state *crtc_state,
 }
 
 static bool bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
-				      const struct bxt_clk_div *clk_div)
+				      const struct dpll *clk_div)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	struct intel_dpll_hw_state *dpll_hw_state = &crtc_state->dpll_hw_state;
@@ -2227,7 +2209,7 @@ static bool bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 static bool
 bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 {
-	struct bxt_clk_div clk_div = {};
+	struct dpll clk_div = {};
 
 	bxt_ddi_dp_pll_dividers(crtc_state, &clk_div);
 
@@ -2237,7 +2219,7 @@ bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 static bool
 bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 {
-	struct bxt_clk_div clk_div = {};
+	struct dpll clk_div = {};
 
 	bxt_ddi_hdmi_pll_dividers(crtc_state, &clk_div);
 
-- 
2.34.1

