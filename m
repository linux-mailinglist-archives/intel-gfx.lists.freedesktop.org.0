Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B11404C9192
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 18:31:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A8C610E732;
	Tue,  1 Mar 2022 17:31:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C487E10E732
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 17:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646155915; x=1677691915;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=t/14zmKPnFL6U54/38Tg515fl7EkkTHGmb2vIJDhw0I=;
 b=n3sHGUE6S4O3SfiqspBFNX5FGBMC0GeKjfDTrddlBwZsYmBddI2ncl+g
 cNIir7ady+d2rmLlSsuEsbtrKSDnfwWTMEHHfw29Cik+W7k3I3j+pqPdE
 N7Im5bGUWyTHJA7FKa49FM7e+M1KyoCLhS6GuKCq90s9qnuJbs/7iqQHB
 mz2F1bfZ7lYx892qRJq7MopLVXQTVJdJ2ziyZQ8bOqB8lvaIKAEZkJosK
 FRS+k44kEJb/2niwzK9uABRAmiMEaQFks+Z+d04LXX9lJFFcchtg2Wck7
 zBPm32aqLngqaHfZKcyWlx4ZhGk91KdsTdKDvjGY3OJoiLBGV6OSi1uPe g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="339627089"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="339627089"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 09:31:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="685802503"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 01 Mar 2022 09:31:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Mar 2022 19:31:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Mar 2022 19:31:25 +0200
Message-Id: <20220301173128.6988-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
References: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/11] drm/i915: Replace bxt_clk_div with struct
 dpll
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

bxt_clk_div is basically the same as struct dpll. Just use the latter.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 50 ++++++-------------
 1 file changed, 16 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 4a82e630cbec..58e9d5960bc6 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2080,75 +2080,57 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *dev_priv,
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
-	{ .clock = 162000, .p1 = 4, .p2 = 2, .n = 1,
+static const struct dpll bxt_dp_clk_val[] = {
+	{ .dot = 162000, .p1 = 4, .p2 = 2, .n = 1,
 	  .m2 = 0x819999a /* .m2_int = 32, m2_frac = 1677722 */ },
-	{ .clock = 270000, .p1 = 4, .p2 = 1, .n = 1,
+	{ .dot = 270000, .p1 = 4, .p2 = 1, .n = 1,
 	  .m2 = 0x6c00000 /* .m2_int = 27, m2_frac =       0 */ },
-	{ .clock = 540000, .p1 = 2, .p2 = 1, .n = 1,
+	{ .dot = 540000, .p1 = 2, .p2 = 1, .n = 1,
 	  .m2 = 0x6c00000 /* .m2_int = 27, m2_frac =       0 */ },
-	{ .clock = 216000, .p1 = 3, .p2 = 2, .n = 1,
+	{ .dot = 216000, .p1 = 3, .p2 = 2, .n = 1,
 	  .m2 = 0x819999a /* .m2_int = 32, m2_frac = 1677722 */ },
-	{ .clock = 243000, .p1 = 4, .p2 = 1, .n = 1,
+	{ .dot = 243000, .p1 = 4, .p2 = 1, .n = 1,
 	  .m2 = 0x6133333 /* .m2_int = 24, m2_frac = 1258291 */ },
-	{ .clock = 324000, .p1 = 4, .p2 = 1, .n = 1,
+	{ .dot = 324000, .p1 = 4, .p2 = 1, .n = 1,
 	  .m2 = 0x819999a /* .m2_int = 32, m2_frac = 1677722 */ },
-	{ .clock = 432000, .p1 = 3, .p2 = 1, .n = 1,
+	{ .dot = 432000, .p1 = 3, .p2 = 1, .n = 1,
 	  .m2 = 0x819999a /* .m2_int = 32, m2_frac = 1677722 */ },
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
@@ -2158,7 +2140,7 @@ static void bxt_ddi_dp_pll_dividers(struct intel_crtc_state *crtc_state,
 }
 
 static bool bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
-				      const struct bxt_clk_div *clk_div)
+				      const struct dpll *clk_div)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	struct intel_dpll_hw_state *dpll_hw_state = &crtc_state->dpll_hw_state;
@@ -2230,7 +2212,7 @@ static bool bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 static bool
 bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 {
-	struct bxt_clk_div clk_div = {};
+	struct dpll clk_div = {};
 
 	bxt_ddi_dp_pll_dividers(crtc_state, &clk_div);
 
@@ -2240,7 +2222,7 @@ bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 static bool
 bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 {
-	struct bxt_clk_div clk_div = {};
+	struct dpll clk_div = {};
 
 	bxt_ddi_hdmi_pll_dividers(crtc_state, &clk_div);
 
-- 
2.34.1

