Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E994D22F06
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jan 2026 08:51:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E138610E6DF;
	Thu, 15 Jan 2026 07:51:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z5+3szF6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DA7110E6DC;
 Thu, 15 Jan 2026 07:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768463472; x=1799999472;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pSRITPAfPklhBRT2rEudtSXU8IXcl29YTD21ATc4PRo=;
 b=Z5+3szF6vvaZ8Obdubmo1+KEqRidpZ4BM60ReDQojGbDTVqXWYuxxHq+
 Tk4FHt2OXDDGeTAo1pBlNxWrzOOEZ+j09CilVxBtFhRqnYvOQA5tXY1Kj
 VWV82XRoOWcSm1crvZznWJHwGoFrB6VfBv+P33d45eu2m1zxNEYaTjMhw
 D9gbiWJZj3yu7rgU4H2LVmEbDtivCoE8lEBeAtxOi6lN55dpqYrJXdJbh
 rerlIkVL34+2El1W4dPRDdLa9R9UXXOq8vgOmEEL/yz8taVZxUZc/G6Oe
 xNySjUD3ovlYR7Sh2UUClVYb11hroXwPQ1bT22n2eWRu3iHS0DMDTCN/m g==;
X-CSE-ConnectionGUID: hZIKXvaGTeueeWFS0BOaew==
X-CSE-MsgGUID: afDnuPhXRrujickWlJJt7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="92436208"
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="92436208"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 23:51:12 -0800
X-CSE-ConnectionGUID: XBIm0fwpRme1xN0jtCFCvA==
X-CSE-MsgGUID: WUGejq0/TymNnsXhU39p4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="204101744"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa010.jf.intel.com with ESMTP; 14 Jan 2026 23:51:11 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 04/15] drm/i915/lt_phy: Drop LT PHY crtc_state for port
 calculation
Date: Thu, 15 Jan 2026 07:50:50 +0000
Message-ID: <20260115075101.2214842-5-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260115075101.2214842-1-mika.kahola@intel.com>
References: <20260115075101.2214842-1-mika.kahola@intel.com>
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

Drop crtc_state from intel_lt_phy_calc_port_clock() function call
and replace it with pll state instead. Follow-up changes will
call these functions without a crtc_state available.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    |  4 +++-
 drivers/gpu/drm/i915/display/intel_dpll.c   |  3 ++-
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 18 +++++++-----------
 drivers/gpu/drm/i915/display/intel_lt_phy.h |  4 ++--
 4 files changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index cb91d07cdaa6..d8739e2bb004 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4247,13 +4247,15 @@ void intel_ddi_get_clock(struct intel_encoder *encoder,
 static void xe3plpd_ddi_get_config(struct intel_encoder *encoder,
 				   struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
+
 	intel_lt_phy_pll_readout_hw_state(encoder, crtc_state, &crtc_state->dpll_hw_state.ltpll);
 
 	if (crtc_state->dpll_hw_state.ltpll.tbt_mode)
 		crtc_state->port_clock = intel_mtl_tbt_calc_port_clock(encoder);
 	else
 		crtc_state->port_clock =
-			intel_lt_phy_calc_port_clock(encoder, crtc_state);
+			intel_lt_phy_calc_port_clock(display, &crtc_state->dpll_hw_state.ltpll);
 	intel_ddi_get_config(encoder, crtc_state);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index a4f372c9e6fc..1b5b18fa0a36 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1219,6 +1219,7 @@ static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder =
 		intel_get_crtc_new_encoder(state, crtc_state);
+	struct intel_display *display = to_intel_display(encoder);
 	int ret;
 
 	ret = intel_lt_phy_pll_calc_state(crtc_state, encoder);
@@ -1227,7 +1228,7 @@ static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state,
 
 	/* TODO: Do the readback via intel_compute_shared_dplls() */
 	crtc_state->port_clock =
-			intel_lt_phy_calc_port_clock(encoder, crtc_state);
+			intel_lt_phy_calc_port_clock(display, &crtc_state->dpll_hw_state.ltpll);
 
 	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 6cdae03ee172..48f644f417d2 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1680,7 +1680,8 @@ intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
 }
 
 static int
-intel_lt_phy_calc_hdmi_port_clock(const struct intel_crtc_state *crtc_state)
+intel_lt_phy_calc_hdmi_port_clock(struct intel_display *display,
+				  const struct intel_lt_phy_pll_state *lt_state)
 {
 #define REGVAL(i) (				\
 	(lt_state->data[i][3])		|	\
@@ -1689,9 +1690,6 @@ intel_lt_phy_calc_hdmi_port_clock(const struct intel_crtc_state *crtc_state)
 	(lt_state->data[i][0] << 24)		\
 )
 
-	struct intel_display *display = to_intel_display(crtc_state);
-	const struct intel_lt_phy_pll_state *lt_state =
-		&crtc_state->dpll_hw_state.ltpll;
 	int clk = 0;
 	u32 d8, pll_reg_5, pll_reg_3, pll_reg_57, m2div_frac, m2div_int;
 	u64 temp0, temp1;
@@ -1749,13 +1747,10 @@ intel_lt_phy_calc_hdmi_port_clock(const struct intel_crtc_state *crtc_state)
 }
 
 int
-intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
-			     const struct intel_crtc_state *crtc_state)
+intel_lt_phy_calc_port_clock(struct intel_display *display,
+			     const struct intel_lt_phy_pll_state *lt_state)
 {
-	struct intel_display *display = to_intel_display(encoder);
 	int clk;
-	const struct intel_lt_phy_pll_state *lt_state =
-		&crtc_state->dpll_hw_state.ltpll;
 	u8 mode, rate;
 
 	mode = REG_FIELD_GET8(LT_PHY_VDR_MODE_ENCODING_MASK,
@@ -1771,7 +1766,7 @@ intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
 				      lt_state->config[0]);
 		clk = intel_lt_phy_get_dp_clock(rate);
 	} else if (mode == MODE_HDMI_20) {
-		clk = intel_lt_phy_calc_hdmi_port_clock(crtc_state);
+		clk = intel_lt_phy_calc_hdmi_port_clock(display, lt_state);
 	} else {
 		drm_WARN_ON(display->drm, "Unsupported LT PHY Mode!\n");
 		clk = xe3plpd_lt_hdmi_252.clock;
@@ -2230,6 +2225,7 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *crtc_state,
 				       struct intel_lt_phy_pll_state *pll_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	u8 owned_lane_mask;
 	u8 lane;
 	struct ref_tracker *wakeref;
@@ -2255,7 +2251,7 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 	}
 
 	pll_state->clock =
-		intel_lt_phy_calc_port_clock(encoder, crtc_state);
+		intel_lt_phy_calc_port_clock(display, &crtc_state->dpll_hw_state.ltpll);
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index bf41858f1bc3..22b12d2d5bb1 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -21,8 +21,8 @@ void intel_lt_phy_pll_disable(struct intel_encoder *encoder);
 int
 intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder);
-int intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
-				 const struct intel_crtc_state *crtc_state);
+int intel_lt_phy_calc_port_clock(struct intel_display *display,
+				 const struct intel_lt_phy_pll_state *lt_state);
 void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *crtc_state);
 void intel_lt_phy_dump_hw_state(struct intel_display *display,
-- 
2.43.0

