Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9A6C4853D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 18:28:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1479710E48F;
	Mon, 10 Nov 2025 17:28:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hURD3gOc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86C2310E48F;
 Mon, 10 Nov 2025 17:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762795721; x=1794331721;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5nQTgUWVxwateTclL94PQBc89bNCP+B5FXHDYMXkXOo=;
 b=hURD3gOcF7c7ssz60fBMFXn35HZ/duTMMzYAc5lwUC+TqLWcgab1UbVL
 td4T6RhLJpfQqzftN2KJL38rUK1m0yFesaARoTascF5JCG7IB2wNIijF5
 f2M+zoKfW65uymQRejMMNo+Bc4uAd/GCp0fSrEyOFDwMkqJSUvPlrRbj1
 N1mlQKlLJacfqyMpOMazmKzsDjdY3ptuTa5OEXl9Ni5ETS+DkOd5me/H7
 lwcENzJBjVqiHijJaaXk1+bw5J0od7nJI170zfy8TpsjduKq6FOMHp17n
 91iPmy/kggfCQXqMr4BKglutRWrenP9hJkLyf96kWNYOlBLWiO26hhUAr Q==;
X-CSE-ConnectionGUID: xVI0ECgkQR+Uv7v6k8Qekw==
X-CSE-MsgGUID: Mrcyb9kvSkeC7BqJZK5bCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64779362"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64779362"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:40 -0800
X-CSE-ConnectionGUID: WUWX3XDKRLCVOp0f9TelVg==
X-CSE-MsgGUID: sUzAZu6MRM+0BciJL43iJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="188566970"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.30])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:38 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 09/16] drm/i915/de: Use intel_de_wait_for_{set,clear}_us()
Date: Mon, 10 Nov 2025 19:27:48 +0200
Message-ID: <20251110172756.2132-10-ville.syrjala@linux.intel.com>
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

Use intel_de_wait_for_{set,clear}_us() instead of
intel_de_wait_us() where appropriate.

Done with cocci (with manual formatting fixes):
@@
identifier func !~ "intel_de_wait_for";
expression display, reg, mask, timeout_us;
@@
func(...)
{
<...
(
- intel_de_wait_us(display, reg, mask, mask, timeout_us, NULL)
+ intel_de_wait_for_set_us(display, reg, mask, timeout_us)
|
- intel_de_wait_us(display, reg, mask, 0, timeout_us, NULL)
+ intel_de_wait_for_clear_us(display, reg, mask, timeout_us)
)
...>
}

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        | 24 +++++++--------
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  8 ++---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 29 +++++++++----------
 drivers/gpu/drm/i915/display/intel_ddi.c      |  4 +--
 .../drm/i915/display/intel_display_power.c    |  9 +++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 15 +++++-----
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 18 ++++++------
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  9 +++---
 8 files changed, 57 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 151266ffd582..9230792960f2 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -148,8 +148,9 @@ static void wait_for_cmds_dispatched_to_panel(struct intel_encoder *encoder)
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
 
-		ret = intel_de_wait_us(display, DSI_LP_MSG(dsi_trans),
-				       LPTX_IN_PROGRESS, 0, 20, NULL);
+		ret = intel_de_wait_for_clear_us(display,
+						 DSI_LP_MSG(dsi_trans),
+						 LPTX_IN_PROGRESS, 20);
 		if (ret)
 			drm_err(display->drm, "LPTX bit not cleared\n");
 	}
@@ -533,8 +534,8 @@ static void gen11_dsi_enable_ddi_buffer(struct intel_encoder *encoder)
 	for_each_dsi_port(port, intel_dsi->ports) {
 		intel_de_rmw(display, DDI_BUF_CTL(port), 0, DDI_BUF_CTL_ENABLE);
 
-		ret = intel_de_wait_us(display, DDI_BUF_CTL(port),
-				       DDI_BUF_IS_IDLE, 0, 500, NULL);
+		ret = intel_de_wait_for_clear_us(display, DDI_BUF_CTL(port),
+						 DDI_BUF_IS_IDLE, 500);
 		if (ret)
 			drm_err(display->drm, "DDI port:%c buffer idle\n",
 				port_name(port));
@@ -855,9 +856,9 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 
 		dsi_trans = dsi_port_to_transcoder(port);
 
-		ret = intel_de_wait_us(display,
-				       DSI_TRANS_FUNC_CONF(dsi_trans),
-				       LINK_READY, LINK_READY, 2500, NULL);
+		ret = intel_de_wait_for_set_us(display,
+					       DSI_TRANS_FUNC_CONF(dsi_trans),
+					       LINK_READY, 2500);
 		if (ret)
 			drm_err(display->drm, "DSI link not ready\n");
 	}
@@ -1356,8 +1357,8 @@ static void gen11_dsi_deconfigure_trancoder(struct intel_encoder *encoder)
 		tmp &= ~LINK_ULPS_TYPE_LP11;
 		intel_de_write(display, DSI_LP_MSG(dsi_trans), tmp);
 
-		ret = intel_de_wait_us(display, DSI_LP_MSG(dsi_trans),
-				       LINK_IN_ULPS, LINK_IN_ULPS, 10, NULL);
+		ret = intel_de_wait_for_set_us(display, DSI_LP_MSG(dsi_trans),
+					       LINK_IN_ULPS, 10);
 		if (ret)
 			drm_err(display->drm, "DSI link not in ULPS\n");
 	}
@@ -1392,9 +1393,8 @@ static void gen11_dsi_disable_port(struct intel_encoder *encoder)
 	for_each_dsi_port(port, intel_dsi->ports) {
 		intel_de_rmw(display, DDI_BUF_CTL(port), DDI_BUF_CTL_ENABLE, 0);
 
-		ret = intel_de_wait_us(display, DDI_BUF_CTL(port),
-				       DDI_BUF_IS_IDLE, DDI_BUF_IS_IDLE, 8,
-				       NULL);
+		ret = intel_de_wait_for_set_us(display, DDI_BUF_CTL(port),
+					       DDI_BUF_IS_IDLE, 8);
 
 		if (ret)
 			drm_err(display->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index f7daebccb10f..37801c744b05 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -902,8 +902,8 @@ static void bdw_set_cdclk(struct intel_display *display,
 	 * According to the spec, it should be enough to poll for this 1 us.
 	 * However, extensive testing shows that this can take longer.
 	 */
-	ret = intel_de_wait_us(display, LCPLL_CTL, LCPLL_CD_SOURCE_FCLK_DONE,
-			       LCPLL_CD_SOURCE_FCLK_DONE, 100, NULL);
+	ret = intel_de_wait_for_set_us(display, LCPLL_CTL,
+				       LCPLL_CD_SOURCE_FCLK_DONE, 100);
 	if (ret)
 		drm_err(display->drm, "Switching to FCLK failed\n");
 
@@ -913,8 +913,8 @@ static void bdw_set_cdclk(struct intel_display *display,
 	intel_de_rmw(display, LCPLL_CTL,
 		     LCPLL_CD_SOURCE_FCLK, 0);
 
-	ret = intel_de_wait_us(display, LCPLL_CTL, LCPLL_CD_SOURCE_FCLK_DONE,
-			       0, 1, NULL);
+	ret = intel_de_wait_for_clear_us(display, LCPLL_CTL,
+					 LCPLL_CD_SOURCE_FCLK_DONE, 1);
 	if (ret)
 		drm_err(display->drm, "Switching back to LCPLL failed\n");
 
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 55fd95994ea7..68e9009d2556 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2887,10 +2887,9 @@ static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
 					   XELPDP_LANE_PHY_CURRENT_STATUS(1))
 					: XELPDP_LANE_PHY_CURRENT_STATUS(0);
 
-	if (intel_de_wait_us(display, XELPDP_PORT_BUF_CTL1(display, port),
-			     XELPDP_PORT_BUF_SOC_PHY_READY,
-			     XELPDP_PORT_BUF_SOC_PHY_READY,
-			     XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, NULL))
+	if (intel_de_wait_for_set_us(display, XELPDP_PORT_BUF_CTL1(display, port),
+				     XELPDP_PORT_BUF_SOC_PHY_READY,
+				     XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US))
 		drm_warn(display->drm,
 			 "PHY %c failed to bring out of SOC reset\n",
 			 phy_name(phy));
@@ -2898,9 +2897,9 @@ static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
 	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_pipe_reset,
 		     lane_pipe_reset);
 
-	if (intel_de_wait_us(display, XELPDP_PORT_BUF_CTL2(display, port),
-			     lane_phy_current_status, lane_phy_current_status,
-			     XELPDP_PORT_RESET_START_TIMEOUT_US, NULL))
+	if (intel_de_wait_for_set_us(display, XELPDP_PORT_BUF_CTL2(display, port),
+				     lane_phy_current_status,
+				     XELPDP_PORT_RESET_START_TIMEOUT_US))
 		drm_warn(display->drm,
 			 "PHY %c failed to bring out of lane reset\n",
 			 phy_name(phy));
@@ -3187,8 +3186,8 @@ void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
 	intel_de_write(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port), val);
 
 	/* 5. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "1". */
-	if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
-			     XELPDP_TBT_CLOCK_ACK, XELPDP_TBT_CLOCK_ACK, 100, NULL))
+	if (intel_de_wait_for_set_us(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
+				     XELPDP_TBT_CLOCK_ACK, 100))
 		drm_warn(display->drm, "[ENCODER:%d:%s][%c] PHY PLL not locked\n",
 			 encoder->base.base.id, encoder->base.name, phy_name(phy));
 
@@ -3299,10 +3298,10 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 	/*
 	 * 5. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK**> == "0".
 	 */
-	if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
-			     intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |
-			     intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES), 0,
-			     XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, NULL))
+	if (intel_de_wait_for_clear_us(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
+				       intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |
+				       intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES),
+				       XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US))
 		drm_warn(display->drm, "Port %c PLL not unlocked\n",
 			 phy_name(phy));
 
@@ -3347,8 +3346,8 @@ void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
 		     XELPDP_TBT_CLOCK_REQUEST, 0);
 
 	/* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "0". */
-	if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
-			     XELPDP_TBT_CLOCK_ACK, 0, 10, NULL))
+	if (intel_de_wait_for_clear_us(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
+				       XELPDP_TBT_CLOCK_ACK, 10))
 		drm_warn(display->drm, "[ENCODER:%d:%s][%c] PHY PLL not unlocked\n",
 			 encoder->base.base.id, encoder->base.name, phy_name(phy));
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3b2d2b51ebc6..002ccd47856d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2577,7 +2577,7 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
 
 	intel_de_rmw(display, reg, 0, set_bits);
 
-	ret = intel_de_wait_us(display, reg, wait_bits, wait_bits, 100, NULL);
+	ret = intel_de_wait_for_set_us(display, reg, wait_bits, 100);
 	if (ret) {
 		drm_err(display->drm, "Timeout waiting for D2D Link enable for DDI/PORT_BUF_CTL %c\n",
 			port_name(port));
@@ -3077,7 +3077,7 @@ mtl_ddi_disable_d2d(struct intel_encoder *encoder)
 
 	intel_de_rmw(display, reg, clr_bits, 0);
 
-	ret = intel_de_wait_us(display, reg, wait_bits, 0, 100, NULL);
+	ret = intel_de_wait_for_clear_us(display, reg, wait_bits, 100);
 	if (ret)
 		drm_err(display->drm, "Timeout waiting for D2D Link disable for DDI/PORT_BUF_CTL %c\n",
 			port_name(port));
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index cc701f8277b6..2a4cc1dcc293 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1292,9 +1292,8 @@ static void hsw_disable_lcpll(struct intel_display *display,
 		val |= LCPLL_CD_SOURCE_FCLK;
 		intel_de_write(display, LCPLL_CTL, val);
 
-		ret = intel_de_wait_us(display, LCPLL_CTL,
-				       LCPLL_CD_SOURCE_FCLK_DONE,
-				       LCPLL_CD_SOURCE_FCLK_DONE, 1, NULL);
+		ret = intel_de_wait_for_set_us(display, LCPLL_CTL,
+					       LCPLL_CD_SOURCE_FCLK_DONE, 1);
 		if (ret)
 			drm_err(display->drm, "Switching to FCLK failed\n");
 
@@ -1368,8 +1367,8 @@ static void hsw_restore_lcpll(struct intel_display *display)
 	if (val & LCPLL_CD_SOURCE_FCLK) {
 		intel_de_rmw(display, LCPLL_CTL, LCPLL_CD_SOURCE_FCLK, 0);
 
-		ret = intel_de_wait_us(display, LCPLL_CTL,
-				       LCPLL_CD_SOURCE_FCLK_DONE, 0, 1, NULL);
+		ret = intel_de_wait_for_clear_us(display, LCPLL_CTL,
+						 LCPLL_CD_SOURCE_FCLK_DONE, 1);
 		if (ret)
 			drm_err(display->drm,
 				"Switching back to LCPLL failed\n");
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 1cc1a862c50b..9c7cf03cf022 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2057,9 +2057,9 @@ static void bxt_ddi_pll_enable(struct intel_display *display,
 		intel_de_rmw(display, BXT_PORT_PLL_ENABLE(port),
 			     0, PORT_PLL_POWER_ENABLE);
 
-		ret = intel_de_wait_us(display, BXT_PORT_PLL_ENABLE(port),
-				       PORT_PLL_POWER_STATE,
-				       PORT_PLL_POWER_STATE, 200, NULL);
+		ret = intel_de_wait_for_set_us(display,
+					       BXT_PORT_PLL_ENABLE(port),
+					       PORT_PLL_POWER_STATE, 200);
 		if (ret)
 			drm_err(display->drm,
 				"Power state not set for PLL:%d\n", port);
@@ -2122,8 +2122,8 @@ static void bxt_ddi_pll_enable(struct intel_display *display,
 	intel_de_rmw(display, BXT_PORT_PLL_ENABLE(port), 0, PORT_PLL_ENABLE);
 	intel_de_posting_read(display, BXT_PORT_PLL_ENABLE(port));
 
-	ret = intel_de_wait_us(display, BXT_PORT_PLL_ENABLE(port),
-			       PORT_PLL_LOCK, PORT_PLL_LOCK, 200, NULL);
+	ret = intel_de_wait_for_set_us(display, BXT_PORT_PLL_ENABLE(port),
+				       PORT_PLL_LOCK, 200);
 	if (ret)
 		drm_err(display->drm, "PLL %d not locked\n", port);
 
@@ -2157,8 +2157,9 @@ static void bxt_ddi_pll_disable(struct intel_display *display,
 		intel_de_rmw(display, BXT_PORT_PLL_ENABLE(port),
 			     PORT_PLL_POWER_ENABLE, 0);
 
-		ret = intel_de_wait_us(display, BXT_PORT_PLL_ENABLE(port),
-				       PORT_PLL_POWER_STATE, 0, 200, NULL);
+		ret = intel_de_wait_for_clear_us(display,
+						 BXT_PORT_PLL_ENABLE(port),
+						 PORT_PLL_POWER_STATE, 200);
 		if (ret)
 			drm_err(display->drm,
 				"Power state not reset for PLL:%d\n", port);
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index ac6f61107528..ac6ff183bc97 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1981,9 +1981,9 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 			     XELPDP_LANE_PCLK_PLL_REQUEST(0), 0);
 
 		/* 8. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 0. */
-		if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, port),
-				     XELPDP_LANE_PCLK_PLL_ACK(0), 0,
-				     XE3PLPD_MACCLK_TURNOFF_LATENCY_US, NULL))
+		if (intel_de_wait_for_clear_us(display, XELPDP_PORT_CLOCK_CTL(display, port),
+					       XELPDP_LANE_PCLK_PLL_ACK(0),
+					       XE3PLPD_MACCLK_TURNOFF_LATENCY_US))
 			drm_warn(display->drm, "PHY %c PLL MacCLK ack deassertion timeout\n",
 				 phy_name(phy));
 
@@ -2087,9 +2087,9 @@ void intel_lt_phy_pll_disable(struct intel_encoder *encoder)
 		     lane_pipe_reset);
 
 	/* 3. Poll for PORT_BUF_CTL2<port> Lane<PHY Lanes Owned> PHY Current Status == 1. */
-	if (intel_de_wait_us(display, XELPDP_PORT_BUF_CTL2(display, port),
-			     lane_phy_current_status, lane_phy_current_status,
-			     XE3PLPD_RESET_START_LATENCY_US, NULL))
+	if (intel_de_wait_for_set_us(display, XELPDP_PORT_BUF_CTL2(display, port),
+				     lane_phy_current_status,
+				     XE3PLPD_RESET_START_LATENCY_US))
 		drm_warn(display->drm, "PHY %c failed to reset lane\n",
 			 phy_name(phy));
 
@@ -2110,9 +2110,9 @@ void intel_lt_phy_pll_disable(struct intel_encoder *encoder)
 	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), 0);
 
 	/* 8. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 0. */
-	if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, port),
-			     XELPDP_LANE_PCLK_PLL_ACK(0), 0,
-			     XE3PLPD_MACCLK_TURNOFF_LATENCY_US, NULL))
+	if (intel_de_wait_for_clear_us(display, XELPDP_PORT_CLOCK_CTL(display, port),
+				       XELPDP_LANE_PCLK_PLL_ACK(0),
+				       XE3PLPD_MACCLK_TURNOFF_LATENCY_US))
 		drm_warn(display->drm, "PHY %c PLL MacCLK ack deassertion timeout\n",
 			 phy_name(phy));
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index ebf2d1c34b3e..9a89bb6dcf65 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -21,16 +21,15 @@ static void lpt_fdi_reset_mphy(struct intel_display *display)
 
 	intel_de_rmw(display, SOUTH_CHICKEN2, 0, FDI_MPHY_IOSFSB_RESET_CTL);
 
-	ret = intel_de_wait_us(display, SOUTH_CHICKEN2,
-			       FDI_MPHY_IOSFSB_RESET_STATUS,
-			       FDI_MPHY_IOSFSB_RESET_STATUS, 100, NULL);
+	ret = intel_de_wait_for_set_us(display, SOUTH_CHICKEN2,
+				       FDI_MPHY_IOSFSB_RESET_STATUS, 100);
 	if (ret)
 		drm_err(display->drm, "FDI mPHY reset assert timeout\n");
 
 	intel_de_rmw(display, SOUTH_CHICKEN2, FDI_MPHY_IOSFSB_RESET_CTL, 0);
 
-	ret = intel_de_wait_us(display, SOUTH_CHICKEN2,
-			       FDI_MPHY_IOSFSB_RESET_STATUS, 0, 100, NULL);
+	ret = intel_de_wait_for_clear_us(display, SOUTH_CHICKEN2,
+					 FDI_MPHY_IOSFSB_RESET_STATUS, 100);
 	if (ret)
 		drm_err(display->drm, "FDI mPHY reset de-assert timeout\n");
 }
-- 
2.49.1

