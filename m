Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B2B4D0C26
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 00:40:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29E6510E1CF;
	Mon,  7 Mar 2022 23:40:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C78510E1D1
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 23:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646696401; x=1678232401;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ekBcmdzFC0ZaKKf2wz8IudpJchqtqcY780z1tgSt6vQ=;
 b=mSoeW3vOAFayjUtNIO+Y5x02S7Gqklp83HWRUYzxOzsKKpp0ySqgaglI
 w1hfhVB66d9JVXEGAsuDowRdDhfcj7iVgNmErGicBpTQduNu9/ZM24IDI
 IrAh5VwpqQA/huRkkR/C1Bqpk89Vfnn5feV0Pr1Yic4z4G/C/Sp5oqx/f
 /2h2boDXJHKQJunxt2FyKtsD2X8R6vUDrTVzS46EIGbCrgEmRK6iL+1+G
 onHyaae+gzF02tJxNjn3lz4qoxI00+nG46iEFYHkMzivHlNufJeJE6psM
 LyandAa5NBTdgEXwjL04dY5VAkB0HLoKTzW3SxocwTiZRC/7bGnyvE+xI A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="235145024"
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="235145024"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 15:40:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="632028690"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 07 Mar 2022 15:39:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Mar 2022 01:39:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Mar 2022 01:39:38 +0200
Message-Id: <20220307233940.4161-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
References: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/8] drm/i915: Replace hand rolled bxt vco
 calculation with chv_calc_dpll_params()
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

Use chv_calc_dpll_params() to calculate the BXT DP DPLL VCO
frequency.

We need to add the m1 divider into bxt_dp_clk_val[] for this to work.

v2: Make the WARN_ON() sensible

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 23 +++++++++++--------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 4b52086aa9e9..b7071da4b7e5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2086,13 +2086,13 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *dev_priv,
 /* pre-calculated values for DP linkrates */
 static const struct dpll bxt_dp_clk_val[] = {
 	/* m2 is .22 binary fixed point */
-	{ .dot = 162000, .p1 = 4, .p2 = 2, .n = 1, .m2 = 0x819999a /* 32.4 */ },
-	{ .dot = 270000, .p1 = 4, .p2 = 1, .n = 1, .m2 = 0x6c00000 /* 27.0 */ },
-	{ .dot = 540000, .p1 = 2, .p2 = 1, .n = 1, .m2 = 0x6c00000 /* 27.0 */ },
-	{ .dot = 216000, .p1 = 3, .p2 = 2, .n = 1, .m2 = 0x819999a /* 32.4 */ },
-	{ .dot = 243000, .p1 = 4, .p2 = 1, .n = 1, .m2 = 0x6133333 /* 24.3 */ },
-	{ .dot = 324000, .p1 = 4, .p2 = 1, .n = 1, .m2 = 0x819999a /* 32.4 */ },
-	{ .dot = 432000, .p1 = 3, .p2 = 1, .n = 1, .m2 = 0x819999a /* 32.4 */ },
+	{ .dot = 162000, .p1 = 4, .p2 = 2, .n = 1, .m1 = 2, .m2 = 0x819999a /* 32.4 */ },
+	{ .dot = 270000, .p1 = 4, .p2 = 1, .n = 1, .m1 = 2, .m2 = 0x6c00000 /* 27.0 */ },
+	{ .dot = 540000, .p1 = 2, .p2 = 1, .n = 1, .m1 = 2, .m2 = 0x6c00000 /* 27.0 */ },
+	{ .dot = 216000, .p1 = 3, .p2 = 2, .n = 1, .m1 = 2, .m2 = 0x819999a /* 32.4 */ },
+	{ .dot = 243000, .p1 = 4, .p2 = 1, .n = 1, .m1 = 2, .m2 = 0x6133333 /* 24.3 */ },
+	{ .dot = 324000, .p1 = 4, .p2 = 1, .n = 1, .m1 = 2, .m2 = 0x819999a /* 32.4 */ },
+	{ .dot = 432000, .p1 = 3, .p2 = 1, .n = 1, .m1 = 2, .m2 = 0x819999a /* 32.4 */ },
 };
 
 static bool
@@ -2122,18 +2122,21 @@ bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state,
 static void bxt_ddi_dp_pll_dividers(struct intel_crtc_state *crtc_state,
 				    struct dpll *clk_div)
 {
-	int clock = crtc_state->port_clock;
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	int i;
 
 	*clk_div = bxt_dp_clk_val[0];
 	for (i = 0; i < ARRAY_SIZE(bxt_dp_clk_val); ++i) {
-		if (bxt_dp_clk_val[i].dot == clock) {
+		if (crtc_state->port_clock == bxt_dp_clk_val[i].dot) {
 			*clk_div = bxt_dp_clk_val[i];
 			break;
 		}
 	}
 
-	clk_div->vco = clock * 10 / 2 * clk_div->p1 * clk_div->p2;
+	chv_calc_dpll_params(i915->dpll.ref_clks.nssc, clk_div);
+
+	drm_WARN_ON(&i915->drm, clk_div->vco == 0 ||
+		    clk_div->dot != crtc_state->port_clock);
 }
 
 static bool bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
-- 
2.34.1

