Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3EBCC86EF
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 16:28:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8381D10EB20;
	Wed, 17 Dec 2025 15:28:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sw3NZDvQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2185B10E8CA;
 Wed, 17 Dec 2025 15:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765985326; x=1797521326;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VJlNLscnPkOwDXb/A0lkAkh6pUPZzWidGLTm6TNl9ko=;
 b=Sw3NZDvQS4jMDdG30FR49cW8LobHXoy202GJ+NcYefk7H+1h5hWzgqlC
 gWW6kkPUHmjWoTImgZm5aAy9SwgTa/Qqtg9d+aEc7G/ykfjIt86TNJntb
 D2fomp9Nu9oFm7iW0EJZ01/LgVG8dMoIQkKi+vI4L7O+hODmc2U7U8fdl
 lUVVExPYAIk+e+5PG8SYUIDb5/UrdcUiJSbHdATb+P3TM3+xK/Mp3EVui
 zMwpkeT+oUNq0aUwULZ+8y/a9e4Skn+vQG/j2KF4rNwISZPq9rAzrIy8H
 7y+YZ1HLQlHTiW3hLsDH4lqpICbdC+zqsZxtjXobKBtK2WmV8dV1jD6BI w==;
X-CSE-ConnectionGUID: oDRIhfKUSj23c0Xybs6cFQ==
X-CSE-MsgGUID: dR/b+munQDapDZtP563poA==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="71781430"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="71781430"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 07:28:45 -0800
X-CSE-ConnectionGUID: jqwlPWrbTZ2tJlnBmDSWUA==
X-CSE-MsgGUID: xLqJncsXQ2eHNfabVeh/IA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="198097296"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa009.jf.intel.com with ESMTP; 17 Dec 2025 07:28:44 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 04/15] drm/i915/lt_phy: Drop LT PHY crtc_state for port
 calculation
Date: Wed, 17 Dec 2025 17:19:44 +0200
Message-Id: <20251217151955.1690202-5-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251217151955.1690202-1-mika.kahola@intel.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_ddi.c    |  4 +++-
 drivers/gpu/drm/i915/display/intel_dpll.c   |  3 ++-
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 19 ++++++++-----------
 drivers/gpu/drm/i915/display/intel_lt_phy.h |  4 ++--
 4 files changed, 15 insertions(+), 15 deletions(-)

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
index 939c8975fd4c..74b0bc90c959 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1679,7 +1679,8 @@ intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
 }
 
 static int
-intel_lt_phy_calc_hdmi_port_clock(const struct intel_crtc_state *crtc_state)
+intel_lt_phy_calc_hdmi_port_clock(struct intel_display *display,
+				  const struct intel_lt_phy_pll_state *lt_state)
 {
 #define REGVAL(i) (				\
 	(lt_state->data[i][3])		|	\
@@ -1688,9 +1689,6 @@ intel_lt_phy_calc_hdmi_port_clock(const struct intel_crtc_state *crtc_state)
 	(lt_state->data[i][0] << 24)		\
 )
 
-	struct intel_display *display = to_intel_display(crtc_state);
-	const struct intel_lt_phy_pll_state *lt_state =
-		&crtc_state->dpll_hw_state.ltpll;
 	int clk = 0;
 	u32 d8, pll_reg_5, pll_reg_3, pll_reg_57, m2div_frac, m2div_int;
 	u64 temp0, temp1;
@@ -1748,12 +1746,10 @@ intel_lt_phy_calc_hdmi_port_clock(const struct intel_crtc_state *crtc_state)
 }
 
 int
-intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
-			     const struct intel_crtc_state *crtc_state)
+intel_lt_phy_calc_port_clock(struct intel_display *display,
+			     const struct intel_lt_phy_pll_state *lt_state)
 {
 	int clk;
-	const struct intel_lt_phy_pll_state *lt_state =
-		&crtc_state->dpll_hw_state.ltpll;
 	u8 mode, rate;
 
 	mode = REG_FIELD_GET8(LT_PHY_VDR_MODE_ENCODING_MASK,
@@ -1769,7 +1765,7 @@ intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
 				      lt_state->config[0]);
 		clk = intel_lt_phy_get_dp_clock(rate);
 	} else {
-		clk = intel_lt_phy_calc_hdmi_port_clock(crtc_state);
+		clk = intel_lt_phy_calc_hdmi_port_clock(display, lt_state);
 	}
 
 	return clk;
@@ -2220,6 +2216,7 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *crtc_state,
 				       struct intel_lt_phy_pll_state *pll_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	u8 owned_lane_mask;
 	u8 lane;
 	struct ref_tracker *wakeref;
@@ -2245,7 +2242,7 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 	}
 
 	pll_state->clock =
-		intel_lt_phy_calc_port_clock(encoder, crtc_state);
+		intel_lt_phy_calc_port_clock(display, &crtc_state->dpll_hw_state.ltpll);
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
 
@@ -2275,7 +2272,7 @@ void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
 
 	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
 	intel_lt_phy_pll_readout_hw_state(encoder, new_crtc_state, &pll_hw_state);
-	clock = intel_lt_phy_calc_port_clock(encoder, new_crtc_state);
+	clock = intel_lt_phy_calc_port_clock(display, &new_crtc_state->dpll_hw_state.ltpll);
 
 	dig_port = enc_to_dig_port(encoder);
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index 7659c92b6c3c..c4999a55473e 100644
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
2.34.1

