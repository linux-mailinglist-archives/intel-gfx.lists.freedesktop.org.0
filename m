Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C998665EB74
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 14:00:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D812C10E720;
	Thu,  5 Jan 2023 12:59:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4619310E71F
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 12:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672923598; x=1704459598;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HVAitgaVPU0ggfIGakSiiGjrsWgwFMKUtl0PFVrgxws=;
 b=aES/nzH0EA1HorRrOFNvMxHANNJwJoHFK8socepwkqpWbG7QYci2DSgD
 cMYnsLoBUAPn3Hc525C69yqE1cu0H6R72TLqYYlBy8+fC7OAX3gjLqNT2
 EXlL21JJw6po/8SZhER595ISZR/MlqfYMJum7b5syF8SdxhRKLfA4pTtT
 WV2eW64ZYFRcL/BgfIwKRljWWov4D/C4DhItn/2e7XO9HtBGTDaOydBjg
 SyfiCnBQqe7B9TLud+vPNxQgA0A9BlRZwSF7u/p/m/or6oGplW5cSzqVY
 3nmKON2aJGCZH4g6RRT4VgTsgS4FObPvwGqlXOJIzlvKgKGx32mo7Pkeh w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="305697804"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="305697804"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 04:59:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="829541003"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="829541003"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 05 Jan 2023 04:59:56 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:54:35 +0200
Message-Id: <20230105125446.960504-11-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230105125446.960504-1-mika.kahola@intel.com>
References: <20230105125446.960504-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/21] drm/i915/mtl: C20 port clock
 calculation
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Calculate port clock with C20 phy.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20221014124740.774835-11-mika.kahola@intel.com
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 32 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  2 ++
 drivers/gpu/drm/i915/display/intel_ddi.c     |  4 +--
 3 files changed, 33 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 285e4cdd23eb..14ea40cd0631 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1571,9 +1571,10 @@ int intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
-	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
-
-	return intel_c10mpllb_calc_state(crtc_state, encoder);
+	if (intel_is_c10phy(i915, phy))
+		return intel_c10mpllb_calc_state(crtc_state, encoder);
+	else
+		return intel_c20pll_calc_state(crtc_state, encoder);
 }
 
 void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
@@ -2044,6 +2045,31 @@ int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
 	return tmpclk;
 }
 
+int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
+				 const struct intel_c20pll_state *pll_state)
+{
+	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
+	unsigned int multiplier, tx_clk_div, refclk = 38400;
+
+	if (pll_state->mpllb[6] & C20_MPLLB_FRACEN) {
+		frac_quot = pll_state->mpllb[8];
+		frac_rem =  pll_state->mpllb[9];
+		frac_den =  pll_state->mpllb[7];
+		multiplier = REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_state->mpllb[0]);
+		tx_clk_div = REG_FIELD_GET(C20_MPLLB_TX_CLK_DIV_MASK, pll_state->mpllb[0]);
+	} else if (pll_state->mplla[6] & C20_MPLLA_FRACEN) {
+		frac_quot = pll_state->mplla[8];
+		frac_rem =  pll_state->mplla[9];
+		frac_den =  pll_state->mplla[7];
+		multiplier = REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_state->mplla[0]);
+		tx_clk_div = REG_FIELD_GET(C20_MPLLA_TX_CLK_DIV_MASK, pll_state->mplla[1]);
+       }
+
+	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier << 16) + frac_quot) +
+	       DIV_ROUND_CLOSEST(refclk * frac_rem, frac_den),
+				 10 << (tx_clk_div + 16));
+}
+
 static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 					 const struct intel_crtc_state *crtc_state,
 					 bool lane_reversal)
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 86edbc4b1718..8ca77dfea24b 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -43,6 +43,8 @@ int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
 				   const struct intel_c10mpllb_state *pll_state);
 void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
 				 struct intel_crtc_state *new_crtc_state);
+int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
+				 const struct intel_c20pll_state *pll_state);
 int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c37f7f7d84cf..829c90b17b08 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3535,12 +3535,12 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
 	if (intel_is_c10phy(i915, phy)) {
 		intel_c10mpllb_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
 		intel_c10mpllb_dump_hw_state(i915, &crtc_state->cx0pll_state.c10mpllb_state);
+		crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
 	} else {
 		intel_c20pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c20pll_state);
+		crtc_state->port_clock = intel_c20pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c20pll_state);
 	}
 
-	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
-
 	intel_ddi_get_config(encoder, crtc_state);
 }
 
-- 
2.34.1

