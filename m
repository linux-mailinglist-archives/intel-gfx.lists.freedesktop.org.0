Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C77BDC6C5
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 06:09:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3766010E740;
	Wed, 15 Oct 2025 04:09:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UNHXXGiV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8967310E73D;
 Wed, 15 Oct 2025 04:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760501367; x=1792037367;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bIse2UywewhkEuaJaDJCeurmvVMmq4YCobgC5C8cmO8=;
 b=UNHXXGiVxMlP0oduZk/0917xaTk6e3AiR2cx6Ihbs9yBhq/ipLfgRybM
 Wx4SRs6SbvFsk+aGu16iqHUXjI/ol5qCFuy7b4y1RzKJKTUVHD9V4QwAR
 ulS67ob7oYi8ARnYJ2k7DzUC1VHKA6Hm6S1QYMzUyCSqNKamMYEZ9wzjE
 bK4Frkeni4P9hMqlPugjcoRIDa87G8deQfODaQDjqf9jOARGdgCKZvAhS
 IV62tevdxOBiaOqsvRquqpUOIgWszU6Xqdto8bs+HAUBaA3UeDCpAcpzC
 K/QxGoJR56UojSs08Vp3RFAjI33jBItmdZavirdg3dOY7r3sPGiMO0Vch g==;
X-CSE-ConnectionGUID: P3yrZA0LTbimloIkWl7ggQ==
X-CSE-MsgGUID: JQwoKFcgTN2Q8DhSYq/f0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="66318997"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="66318997"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 21:09:27 -0700
X-CSE-ConnectionGUID: N0N26eRSQFuML56bfjj7AA==
X-CSE-MsgGUID: ZuC/hWd5Rb6tox3ZuMaY0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="219196303"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 14 Oct 2025 21:09:25 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 21/25] drm/i915/ltphy: Define function to readout LT Phy PLL
 state
Date: Wed, 15 Oct 2025 09:38:13 +0530
Message-Id: <20251015040817.3431297-22-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251015040817.3431297-1-suraj.kandpal@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 14 +++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 33 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h |  3 ++
 3 files changed, 50 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index b6345508cb66..e226ba8a4348 100644
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
@@ -5234,6 +5247,7 @@ void intel_ddi_init(struct intel_display *display,
 		encoder->enable_clock = intel_xe3plpd_pll_enable;
 		encoder->disable_clock = intel_xe3plpd_pll_disable;
 		encoder->port_pll_type = intel_mtl_port_pll_type;
+		encoder->get_config = xe3plpd_ddi_get_config;
 	} else if (DISPLAY_VER(display) >= 14) {
 		encoder->enable_clock = intel_mtl_pll_enable;
 		encoder->disable_clock = intel_mtl_pll_disable;
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 0be4aad0efcc..11178cd00a5b 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1873,6 +1873,39 @@ intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
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

