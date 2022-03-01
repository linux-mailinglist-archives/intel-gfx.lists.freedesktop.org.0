Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E85964C921E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 18:45:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21A7A89725;
	Tue,  1 Mar 2022 17:45:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 032D010E5A6
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 17:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646156703; x=1677692703;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8vAcN31TsOA0sw7IsVxoIH6fMqezUCc3xzT5GSD4YM4=;
 b=Q+tYrH7hmyudFytXZM/MNfb+W6qqlu7kuvqrPxQDwEa3E6dsLjLagYb7
 L+Xi0ISjKm8flJs+RcCVcMCvfTspIHGjR5c9X4HS7866/Ao5fnS5zi9iT
 A9Dkz8f8dvt0vgHtDOPiMwDi8D/UM/82yv2UaqzTqeMwT8LrQ7J2k7SCK
 MHC1rImfLTqrQ3HtMqEzYv1Dv3tTk/kt5j1lbMc4B/T+zqYiYyMb6nK+d
 9br9jK1Qmve5ZCcn6h2c9ypVsnfShn0wxnb4/w7bq91QOC1KdQJ6BYAAl
 jK55y///+BEp6ybcKzcFVPs8IKqZCOgPfOBgpg/t56Ma0EANfBNMuRVxm w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="252025494"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="252025494"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 09:45:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="575788147"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 01 Mar 2022 09:44:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Mar 2022 19:44:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Mar 2022 19:44:59 +0200
Message-Id: <20220301174459.24369-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301173128.6988-10-ville.syrjala@linux.intel.com>
References: <20220301173128.6988-10-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/11] drm/i915: Replace hand rolled bxt vco
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
index 58e9d5960bc6..a5fc63401f49 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2082,19 +2082,19 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *dev_priv,
 
 /* pre-calculated values for DP linkrates */
 static const struct dpll bxt_dp_clk_val[] = {
-	{ .dot = 162000, .p1 = 4, .p2 = 2, .n = 1,
+	{ .dot = 162000, .p1 = 4, .p2 = 2, .n = 1, .m1 = 2,
 	  .m2 = 0x819999a /* .m2_int = 32, m2_frac = 1677722 */ },
-	{ .dot = 270000, .p1 = 4, .p2 = 1, .n = 1,
+	{ .dot = 270000, .p1 = 4, .p2 = 1, .n = 1, .m1 = 2,
 	  .m2 = 0x6c00000 /* .m2_int = 27, m2_frac =       0 */ },
-	{ .dot = 540000, .p1 = 2, .p2 = 1, .n = 1,
+	{ .dot = 540000, .p1 = 2, .p2 = 1, .n = 1, .m1 = 2,
 	  .m2 = 0x6c00000 /* .m2_int = 27, m2_frac =       0 */ },
-	{ .dot = 216000, .p1 = 3, .p2 = 2, .n = 1,
+	{ .dot = 216000, .p1 = 3, .p2 = 2, .n = 1, .m1 = 2,
 	  .m2 = 0x819999a /* .m2_int = 32, m2_frac = 1677722 */ },
-	{ .dot = 243000, .p1 = 4, .p2 = 1, .n = 1,
+	{ .dot = 243000, .p1 = 4, .p2 = 1, .n = 1, .m1 = 2,
 	  .m2 = 0x6133333 /* .m2_int = 24, m2_frac = 1258291 */ },
-	{ .dot = 324000, .p1 = 4, .p2 = 1, .n = 1,
+	{ .dot = 324000, .p1 = 4, .p2 = 1, .n = 1, .m1 = 2,
 	  .m2 = 0x819999a /* .m2_int = 32, m2_frac = 1677722 */ },
-	{ .dot = 432000, .p1 = 3, .p2 = 1, .n = 1,
+	{ .dot = 432000, .p1 = 3, .p2 = 1, .n = 1, .m1 = 2,
 	  .m2 = 0x819999a /* .m2_int = 32, m2_frac = 1677722 */ },
 };
 
@@ -2125,18 +2125,21 @@ bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state,
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

