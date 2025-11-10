Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AC4C4852B
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 18:28:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EC7C10E488;
	Mon, 10 Nov 2025 17:28:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gtH7KgDE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FDE310E47F;
 Mon, 10 Nov 2025 17:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762795702; x=1794331702;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=smWLkiRDZ2/Pm55g51/GKXw3brPSL8PYhOvYuS+O5W4=;
 b=gtH7KgDEuLdyvo+LywAx+M4AaUb7Eub4GMFiU22bKAu+uTn/L7AMXUbj
 PNkcsN6P0yrNUgtHWeMQSW/NKO3J1ssP4kyHt4Nqw2Sljh4ZJBj+Fkrdz
 UE4uC2lxtmxKcxEZ8/1CkZcpeQuAFkB1cDhRIB1mCvl22/pndfHzUGUOh
 NF+YiBQ3i8D/56cFh3u/OUY6RQO5qmVf3Ix1tgsrPP/WEV7BRs3pqH+Dy
 5jF1bYGlJoVMVVjprQUTHlhkvo6Ezp6WDMQMaDoLewqREH+nY3kzPlfB8
 BilT/P66RnviVoNkzESERs2R+2WJ7lubOOOuH9k2ldwIi1lmjOj2L/S5P Q==;
X-CSE-ConnectionGUID: p2O/iBt0TFKuYJxdWL7GjQ==
X-CSE-MsgGUID: awZQDeeyQmSyrPe1dMd8xQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="75461539"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="75461539"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:21 -0800
X-CSE-ConnectionGUID: TRYqhwllTP+z7RcdXdFVrg==
X-CSE-MsgGUID: J5E+ZFuITbOFIyNdT25EYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="212114997"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.30])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:20 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 05/16] drm/i915/de: Use intel_de_wait_us()
Date: Mon, 10 Nov 2025 19:27:44 +0200
Message-ID: <20251110172756.2132-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Convert some of the intel_de_wait_custom() users over to
intel_de_wait_us(). We'll eventually want to eliminate
intel_de_wait_custom() as it's a hinderance towards using
poll_timeout_us().

This includes all the obvious cases where we only specify
a microsecond timeout to intel_de_wait_custom().

Done with cocci (with manual formatting fixes):
@@
expression display, reg, mask, value, timeout_us, out_value;
@@
- intel_de_wait_custom(display, reg, mask, value, timeout_us, 0, out_value)
+ intel_de_wait_us(display, reg, mask, value, timeout_us, out_value)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        | 27 +++++------
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 10 ++--
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 48 +++++++++----------
 drivers/gpu/drm/i915/display/intel_ddi.c      |  8 +---
 .../drm/i915/display/intel_display_power.c    | 11 ++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 16 +++----
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 19 ++++----
 .../gpu/drm/i915/display/intel_pch_refclk.c   | 11 ++---
 8 files changed, 67 insertions(+), 83 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 6a11b3bb219b..151266ffd582 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -148,9 +148,8 @@ static void wait_for_cmds_dispatched_to_panel(struct intel_encoder *encoder)
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
 
-		ret = intel_de_wait_custom(display, DSI_LP_MSG(dsi_trans),
-					   LPTX_IN_PROGRESS, 0,
-					   20, 0, NULL);
+		ret = intel_de_wait_us(display, DSI_LP_MSG(dsi_trans),
+				       LPTX_IN_PROGRESS, 0, 20, NULL);
 		if (ret)
 			drm_err(display->drm, "LPTX bit not cleared\n");
 	}
@@ -534,9 +533,8 @@ static void gen11_dsi_enable_ddi_buffer(struct intel_encoder *encoder)
 	for_each_dsi_port(port, intel_dsi->ports) {
 		intel_de_rmw(display, DDI_BUF_CTL(port), 0, DDI_BUF_CTL_ENABLE);
 
-		ret = intel_de_wait_custom(display, DDI_BUF_CTL(port),
-					   DDI_BUF_IS_IDLE, 0,
-					   500, 0, NULL);
+		ret = intel_de_wait_us(display, DDI_BUF_CTL(port),
+				       DDI_BUF_IS_IDLE, 0, 500, NULL);
 		if (ret)
 			drm_err(display->drm, "DDI port:%c buffer idle\n",
 				port_name(port));
@@ -857,9 +855,9 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 
 		dsi_trans = dsi_port_to_transcoder(port);
 
-		ret = intel_de_wait_custom(display, DSI_TRANS_FUNC_CONF(dsi_trans),
-					   LINK_READY, LINK_READY,
-					   2500, 0, NULL);
+		ret = intel_de_wait_us(display,
+				       DSI_TRANS_FUNC_CONF(dsi_trans),
+				       LINK_READY, LINK_READY, 2500, NULL);
 		if (ret)
 			drm_err(display->drm, "DSI link not ready\n");
 	}
@@ -1358,9 +1356,8 @@ static void gen11_dsi_deconfigure_trancoder(struct intel_encoder *encoder)
 		tmp &= ~LINK_ULPS_TYPE_LP11;
 		intel_de_write(display, DSI_LP_MSG(dsi_trans), tmp);
 
-		ret = intel_de_wait_custom(display, DSI_LP_MSG(dsi_trans),
-					   LINK_IN_ULPS, LINK_IN_ULPS,
-					   10, 0, NULL);
+		ret = intel_de_wait_us(display, DSI_LP_MSG(dsi_trans),
+				       LINK_IN_ULPS, LINK_IN_ULPS, 10, NULL);
 		if (ret)
 			drm_err(display->drm, "DSI link not in ULPS\n");
 	}
@@ -1395,9 +1392,9 @@ static void gen11_dsi_disable_port(struct intel_encoder *encoder)
 	for_each_dsi_port(port, intel_dsi->ports) {
 		intel_de_rmw(display, DDI_BUF_CTL(port), DDI_BUF_CTL_ENABLE, 0);
 
-		ret = intel_de_wait_custom(display, DDI_BUF_CTL(port),
-					   DDI_BUF_IS_IDLE, DDI_BUF_IS_IDLE,
-					   8, 0, NULL);
+		ret = intel_de_wait_us(display, DDI_BUF_CTL(port),
+				       DDI_BUF_IS_IDLE, DDI_BUF_IS_IDLE, 8,
+				       NULL);
 
 		if (ret)
 			drm_err(display->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index c0d798b1cf46..f7daebccb10f 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -902,9 +902,8 @@ static void bdw_set_cdclk(struct intel_display *display,
 	 * According to the spec, it should be enough to poll for this 1 us.
 	 * However, extensive testing shows that this can take longer.
 	 */
-	ret = intel_de_wait_custom(display, LCPLL_CTL,
-				   LCPLL_CD_SOURCE_FCLK_DONE, LCPLL_CD_SOURCE_FCLK_DONE,
-				   100, 0, NULL);
+	ret = intel_de_wait_us(display, LCPLL_CTL, LCPLL_CD_SOURCE_FCLK_DONE,
+			       LCPLL_CD_SOURCE_FCLK_DONE, 100, NULL);
 	if (ret)
 		drm_err(display->drm, "Switching to FCLK failed\n");
 
@@ -914,9 +913,8 @@ static void bdw_set_cdclk(struct intel_display *display,
 	intel_de_rmw(display, LCPLL_CTL,
 		     LCPLL_CD_SOURCE_FCLK, 0);
 
-	ret = intel_de_wait_custom(display, LCPLL_CTL,
-				   LCPLL_CD_SOURCE_FCLK_DONE, 0,
-				   1, 0, NULL);
+	ret = intel_de_wait_us(display, LCPLL_CTL, LCPLL_CD_SOURCE_FCLK_DONE,
+			       0, 1, NULL);
 	if (ret)
 		drm_err(display->drm, "Switching back to LCPLL failed\n");
 
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 7870823235c7..af97bd42495b 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2888,10 +2888,10 @@ static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
 					   XELPDP_LANE_PHY_CURRENT_STATUS(1))
 					: XELPDP_LANE_PHY_CURRENT_STATUS(0);
 
-	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL1(display, port),
-				 XELPDP_PORT_BUF_SOC_PHY_READY,
-				 XELPDP_PORT_BUF_SOC_PHY_READY,
-				 XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, 0, NULL))
+	if (intel_de_wait_us(display, XELPDP_PORT_BUF_CTL1(display, port),
+			     XELPDP_PORT_BUF_SOC_PHY_READY,
+			     XELPDP_PORT_BUF_SOC_PHY_READY,
+			     XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, NULL))
 		drm_warn(display->drm,
 			 "PHY %c failed to bring out of SOC reset\n",
 			 phy_name(phy));
@@ -2899,9 +2899,9 @@ static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
 	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_pipe_reset,
 		     lane_pipe_reset);
 
-	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
-				 lane_phy_current_status, lane_phy_current_status,
-				 XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
+	if (intel_de_wait_us(display, XELPDP_PORT_BUF_CTL2(display, port),
+			     lane_phy_current_status, lane_phy_current_status,
+			     XELPDP_PORT_RESET_START_TIMEOUT_US, NULL))
 		drm_warn(display->drm,
 			 "PHY %c failed to bring out of lane reset\n",
 			 phy_name(phy));
@@ -2910,10 +2910,10 @@ static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
 		     intel_cx0_get_pclk_refclk_request(owned_lane_mask),
 		     intel_cx0_get_pclk_refclk_request(lane_mask));
 
-	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
-				 intel_cx0_get_pclk_refclk_ack(owned_lane_mask),
-				 intel_cx0_get_pclk_refclk_ack(lane_mask),
-				 XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
+	if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, port),
+			     intel_cx0_get_pclk_refclk_ack(owned_lane_mask),
+			     intel_cx0_get_pclk_refclk_ack(lane_mask),
+			     XELPDP_REFCLK_ENABLE_TIMEOUT_US, NULL))
 		drm_warn(display->drm,
 			 "PHY %c failed to request refclk\n",
 			 phy_name(phy));
@@ -3064,10 +3064,10 @@ static void __intel_cx0pll_enable(struct intel_encoder *encoder,
 		     intel_cx0_get_pclk_pll_request(maxpclk_lane));
 
 	/* 10. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
-	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
-				 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
-				 intel_cx0_get_pclk_pll_ack(maxpclk_lane),
-				 XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, 0, NULL))
+	if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
+			     intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
+			     intel_cx0_get_pclk_pll_ack(maxpclk_lane),
+			     XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, NULL))
 		drm_warn(display->drm, "Port %c PLL not locked\n",
 			 phy_name(phy));
 
@@ -3188,10 +3188,8 @@ void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
 	intel_de_write(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port), val);
 
 	/* 5. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "1". */
-	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
-				 XELPDP_TBT_CLOCK_ACK,
-				 XELPDP_TBT_CLOCK_ACK,
-				 100, 0, NULL))
+	if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
+			     XELPDP_TBT_CLOCK_ACK, XELPDP_TBT_CLOCK_ACK, 100, NULL))
 		drm_warn(display->drm, "[ENCODER:%d:%s][%c] PHY PLL not locked\n",
 			 encoder->base.base.id, encoder->base.name, phy_name(phy));
 
@@ -3302,10 +3300,10 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 	/*
 	 * 5. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK**> == "0".
 	 */
-	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
-				 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |
-				 intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES), 0,
-				 XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, 0, NULL))
+	if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
+			     intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |
+			     intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES), 0,
+			     XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, NULL))
 		drm_warn(display->drm, "Port %c PLL not unlocked\n",
 			 phy_name(phy));
 
@@ -3350,8 +3348,8 @@ void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
 		     XELPDP_TBT_CLOCK_REQUEST, 0);
 
 	/* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "0". */
-	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
-				 XELPDP_TBT_CLOCK_ACK, 0, 10, 0, NULL))
+	if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
+			     XELPDP_TBT_CLOCK_ACK, 0, 10, NULL))
 		drm_warn(display->drm, "[ENCODER:%d:%s][%c] PHY PLL not unlocked\n",
 			 encoder->base.base.id, encoder->base.name, phy_name(phy));
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 33fca83c22b3..3b2d2b51ebc6 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2577,9 +2577,7 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
 
 	intel_de_rmw(display, reg, 0, set_bits);
 
-	ret = intel_de_wait_custom(display, reg,
-				   wait_bits, wait_bits,
-				   100, 0, NULL);
+	ret = intel_de_wait_us(display, reg, wait_bits, wait_bits, 100, NULL);
 	if (ret) {
 		drm_err(display->drm, "Timeout waiting for D2D Link enable for DDI/PORT_BUF_CTL %c\n",
 			port_name(port));
@@ -3079,9 +3077,7 @@ mtl_ddi_disable_d2d(struct intel_encoder *encoder)
 
 	intel_de_rmw(display, reg, clr_bits, 0);
 
-	ret = intel_de_wait_custom(display, reg,
-				   wait_bits, 0,
-				   100, 0, NULL);
+	ret = intel_de_wait_us(display, reg, wait_bits, 0, 100, NULL);
 	if (ret)
 		drm_err(display->drm, "Timeout waiting for D2D Link disable for DDI/PORT_BUF_CTL %c\n",
 			port_name(port));
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 2b86a634c1f5..cc701f8277b6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1292,9 +1292,9 @@ static void hsw_disable_lcpll(struct intel_display *display,
 		val |= LCPLL_CD_SOURCE_FCLK;
 		intel_de_write(display, LCPLL_CTL, val);
 
-		ret = intel_de_wait_custom(display, LCPLL_CTL,
-					   LCPLL_CD_SOURCE_FCLK_DONE, LCPLL_CD_SOURCE_FCLK_DONE,
-					   1, 0, NULL);
+		ret = intel_de_wait_us(display, LCPLL_CTL,
+				       LCPLL_CD_SOURCE_FCLK_DONE,
+				       LCPLL_CD_SOURCE_FCLK_DONE, 1, NULL);
 		if (ret)
 			drm_err(display->drm, "Switching to FCLK failed\n");
 
@@ -1368,9 +1368,8 @@ static void hsw_restore_lcpll(struct intel_display *display)
 	if (val & LCPLL_CD_SOURCE_FCLK) {
 		intel_de_rmw(display, LCPLL_CTL, LCPLL_CD_SOURCE_FCLK, 0);
 
-		ret = intel_de_wait_custom(display, LCPLL_CTL,
-					   LCPLL_CD_SOURCE_FCLK_DONE, 0,
-					   1, 0, NULL);
+		ret = intel_de_wait_us(display, LCPLL_CTL,
+				       LCPLL_CD_SOURCE_FCLK_DONE, 0, 1, NULL);
 		if (ret)
 			drm_err(display->drm,
 				"Switching back to LCPLL failed\n");
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 683bc61c03c1..1cc1a862c50b 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2057,9 +2057,9 @@ static void bxt_ddi_pll_enable(struct intel_display *display,
 		intel_de_rmw(display, BXT_PORT_PLL_ENABLE(port),
 			     0, PORT_PLL_POWER_ENABLE);
 
-		ret = intel_de_wait_custom(display, BXT_PORT_PLL_ENABLE(port),
-					   PORT_PLL_POWER_STATE, PORT_PLL_POWER_STATE,
-					   200, 0, NULL);
+		ret = intel_de_wait_us(display, BXT_PORT_PLL_ENABLE(port),
+				       PORT_PLL_POWER_STATE,
+				       PORT_PLL_POWER_STATE, 200, NULL);
 		if (ret)
 			drm_err(display->drm,
 				"Power state not set for PLL:%d\n", port);
@@ -2122,9 +2122,8 @@ static void bxt_ddi_pll_enable(struct intel_display *display,
 	intel_de_rmw(display, BXT_PORT_PLL_ENABLE(port), 0, PORT_PLL_ENABLE);
 	intel_de_posting_read(display, BXT_PORT_PLL_ENABLE(port));
 
-	ret = intel_de_wait_custom(display, BXT_PORT_PLL_ENABLE(port),
-				   PORT_PLL_LOCK, PORT_PLL_LOCK,
-				   200, 0, NULL);
+	ret = intel_de_wait_us(display, BXT_PORT_PLL_ENABLE(port),
+			       PORT_PLL_LOCK, PORT_PLL_LOCK, 200, NULL);
 	if (ret)
 		drm_err(display->drm, "PLL %d not locked\n", port);
 
@@ -2158,9 +2157,8 @@ static void bxt_ddi_pll_disable(struct intel_display *display,
 		intel_de_rmw(display, BXT_PORT_PLL_ENABLE(port),
 			     PORT_PLL_POWER_ENABLE, 0);
 
-		ret = intel_de_wait_custom(display, BXT_PORT_PLL_ENABLE(port),
-					   PORT_PLL_POWER_STATE, 0,
-					   200, 0, NULL);
+		ret = intel_de_wait_us(display, BXT_PORT_PLL_ENABLE(port),
+				       PORT_PLL_POWER_STATE, 0, 200, NULL);
 		if (ret)
 			drm_err(display->drm,
 				"Power state not reset for PLL:%d\n", port);
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 6bd42691de8f..243fca1c6a2d 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1982,9 +1982,9 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 			     XELPDP_LANE_PCLK_PLL_REQUEST(0), 0);
 
 		/* 8. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 0. */
-		if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
-					 XELPDP_LANE_PCLK_PLL_ACK(0), 0,
-					 XE3PLPD_MACCLK_TURNOFF_LATENCY_US, 0, NULL))
+		if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, port),
+				     XELPDP_LANE_PCLK_PLL_ACK(0), 0,
+				     XE3PLPD_MACCLK_TURNOFF_LATENCY_US, NULL))
 			drm_warn(display->drm, "PHY %c PLL MacCLK ack deassertion timeout\n",
 				 phy_name(phy));
 
@@ -2089,10 +2089,9 @@ void intel_lt_phy_pll_disable(struct intel_encoder *encoder)
 		     lane_pipe_reset);
 
 	/* 3. Poll for PORT_BUF_CTL2<port> Lane<PHY Lanes Owned> PHY Current Status == 1. */
-	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
-				 lane_phy_current_status,
-				 lane_phy_current_status,
-				 XE3PLPD_RESET_START_LATENCY_US, 0, NULL))
+	if (intel_de_wait_us(display, XELPDP_PORT_BUF_CTL2(display, port),
+			     lane_phy_current_status, lane_phy_current_status,
+			     XE3PLPD_RESET_START_LATENCY_US, NULL))
 		drm_warn(display->drm, "PHY %c failed to reset lane\n",
 			 phy_name(phy));
 
@@ -2113,9 +2112,9 @@ void intel_lt_phy_pll_disable(struct intel_encoder *encoder)
 	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), 0);
 
 	/* 8. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 0. */
-	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
-				 XELPDP_LANE_PCLK_PLL_ACK(0), 0,
-				 XE3PLPD_MACCLK_TURNOFF_LATENCY_US, 0, NULL))
+	if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, port),
+			     XELPDP_LANE_PCLK_PLL_ACK(0), 0,
+			     XE3PLPD_MACCLK_TURNOFF_LATENCY_US, NULL))
 		drm_warn(display->drm, "PHY %c PLL MacCLK ack deassertion timeout\n",
 			 phy_name(phy));
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index cca880c7eed4..ebf2d1c34b3e 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -21,17 +21,16 @@ static void lpt_fdi_reset_mphy(struct intel_display *display)
 
 	intel_de_rmw(display, SOUTH_CHICKEN2, 0, FDI_MPHY_IOSFSB_RESET_CTL);
 
-	ret = intel_de_wait_custom(display, SOUTH_CHICKEN2,
-				   FDI_MPHY_IOSFSB_RESET_STATUS, FDI_MPHY_IOSFSB_RESET_STATUS,
-				   100, 0, NULL);
+	ret = intel_de_wait_us(display, SOUTH_CHICKEN2,
+			       FDI_MPHY_IOSFSB_RESET_STATUS,
+			       FDI_MPHY_IOSFSB_RESET_STATUS, 100, NULL);
 	if (ret)
 		drm_err(display->drm, "FDI mPHY reset assert timeout\n");
 
 	intel_de_rmw(display, SOUTH_CHICKEN2, FDI_MPHY_IOSFSB_RESET_CTL, 0);
 
-	ret = intel_de_wait_custom(display, SOUTH_CHICKEN2,
-				   FDI_MPHY_IOSFSB_RESET_STATUS, 0,
-				   100, 0, NULL);
+	ret = intel_de_wait_us(display, SOUTH_CHICKEN2,
+			       FDI_MPHY_IOSFSB_RESET_STATUS, 0, 100, NULL);
 	if (ret)
 		drm_err(display->drm, "FDI mPHY reset de-assert timeout\n");
 }
-- 
2.49.1

