Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD49CC276BD
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:26:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C07B10EC69;
	Sat,  1 Nov 2025 03:26:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BKSsJ+8X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DE2010EC65;
 Sat,  1 Nov 2025 03:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761967560; x=1793503560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tscdoYMURYH3aZt7+J3NpLw2o0cq5ANO25AMr9tvzhY=;
 b=BKSsJ+8XJRPdRQLV31hmYQflSqOKAg10rPH+YZ0NKM0VcPK1WPRP6u0j
 JInzIT3Qo6uIWc/4pAWDtqgpjJ8rCK4ji+kOzz3R4mSlwRoSJQvQzd3+b
 ZiDM7PhB4K/ris7/isdgbWjUfbyGcmpzF09zADQyjim/CTxuj1hlM24wU
 yLnhuorn3dqFJVOQb+hUsf/tETbZeqp0oti6LtzUTaY5tHTmgK9riqZyF
 40mj0ngUbkLf5dneUu5Oa0V/mx/SP5hH+evNoeUXibCja+AedvghxszZ8
 5le/mY4jhYvRue0Oq02VJKOMZIrB/FPwv+ZiR6BnzDXt8qnAQprkyBdWv Q==;
X-CSE-ConnectionGUID: f3eNJNFyQI2bIj/FNRA36g==
X-CSE-MsgGUID: kP1rIVk6SqCtD0ohEUA/tQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="64019879"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="64019879"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:26:00 -0700
X-CSE-ConnectionGUID: oItEqj2fTMCEEvo+Sx/p+w==
X-CSE-MsgGUID: rrxRGwkFSuCxZhFg6DCyQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="217038060"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 31 Oct 2025 20:25:58 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v5 22/25] drm/i915/ltphy: Define function to readout LT Phy
 PLL state
Date: Sat,  1 Nov 2025 08:55:10 +0530
Message-Id: <20251101032513.4171255-23-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251101032513.4171255-1-suraj.kandpal@intel.com>
References: <20251101032513.4171255-1-suraj.kandpal@intel.com>
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

Define a function to readout hw state for LT Phy PLL which
can be used in get_config function call.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 14 +++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 33 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h |  3 ++
 3 files changed, 50 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e412e625b666..733ef4559131 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4246,6 +4246,19 @@ void intel_ddi_get_clock(struct intel_encoder *encoder,
 						     &crtc_state->dpll_hw_state);
 }
 
+static void xe3plpd_ddi_get_config(struct intel_encoder *encoder,
+				   struct intel_crtc_state *crtc_state)
+{
+	intel_lt_phy_pll_readout_hw_state(encoder, crtc_state, &crtc_state->dpll_hw_state.ltpll);
+
+	if (crtc_state->dpll_hw_state.ltpll.tbt_mode)
+		crtc_state->port_clock = intel_mtl_tbt_calc_port_clock(encoder);
+	else
+		crtc_state->port_clock =
+			intel_lt_phy_calc_port_clock(encoder, crtc_state);
+	intel_ddi_get_config(encoder, crtc_state);
+}
+
 static void mtl_ddi_get_config(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state)
 {
@@ -5241,6 +5254,7 @@ void intel_ddi_init(struct intel_display *display,
 		encoder->enable_clock = intel_xe3plpd_pll_enable;
 		encoder->disable_clock = intel_xe3plpd_pll_disable;
 		encoder->port_pll_type = intel_mtl_port_pll_type;
+		encoder->get_config = xe3plpd_ddi_get_config;
 	} else if (DISPLAY_VER(display) >= 14) {
 		encoder->enable_clock = intel_mtl_pll_enable;
 		encoder->disable_clock = intel_mtl_pll_disable;
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 3a5b3f739b31..e51d941f3c1d 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1886,6 +1886,39 @@ intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
 	return true;
 }
 
+void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
+				       const struct intel_crtc_state *crtc_state,
+				       struct intel_lt_phy_pll_state *pll_state)
+{
+	u8 owned_lane_mask;
+	u8 lane;
+	intel_wakeref_t wakeref;
+	int i, j, k;
+
+	pll_state->tbt_mode = intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
+	if (pll_state->tbt_mode)
+		return;
+
+	owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
+	lane = owned_lane_mask & INTEL_LT_PHY_LANE0 ? : INTEL_LT_PHY_LANE1;
+	wakeref = intel_lt_phy_transaction_begin(encoder);
+
+	pll_state->config[0] = intel_lt_phy_read(encoder, lane, LT_PHY_VDR_0_CONFIG);
+	pll_state->config[1] = intel_lt_phy_read(encoder, INTEL_LT_PHY_LANE0, LT_PHY_VDR_1_CONFIG);
+	pll_state->config[2] = intel_lt_phy_read(encoder, lane, LT_PHY_VDR_2_CONFIG);
+
+	for (i = 0; i <= 12; i++) {
+		for (j = 3, k = 0; j >= 0; j--, k++)
+			pll_state->data[i][k] =
+				intel_lt_phy_read(encoder, INTEL_LT_PHY_LANE0,
+						  LT_PHY_VDR_X_DATAY(i, j));
+	}
+
+	pll_state->clock =
+		intel_lt_phy_calc_port_clock(encoder, crtc_state);
+	intel_lt_phy_transaction_end(encoder, wakeref);
+}
+
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index e93e5becc316..dd8cbb151b23 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -28,6 +28,9 @@ void intel_lt_phy_dump_hw_state(struct intel_display *display,
 bool
 intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
 				  const struct intel_lt_phy_pll_state *b);
+void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
+				       const struct intel_crtc_state *crtc_state,
+				       struct intel_lt_phy_pll_state *pll_state);
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state);
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
-- 
2.34.1

