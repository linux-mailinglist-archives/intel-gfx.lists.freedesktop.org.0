Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 142F7C1EC6C
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:34:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99C8610E8D0;
	Thu, 30 Oct 2025 07:34:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C+tMJG6Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8641410E8CA;
 Thu, 30 Oct 2025 07:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761809695; x=1793345695;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=obaCEmc5n9xqTdoE7/a5rPu5RAzK4fpYKz0tOSthd54=;
 b=C+tMJG6Zc8rQIxt+AwoIsLftMRzJbuqY7P5JORcNre+ZI3G/8Y6FsZvt
 6Gkd2BUDjvUW+NwhOLpOeGdeW+BOy0bokt5M4DicHnfJ4yGPsbcw98wMO
 2k80N5YfijWg393WdcR6KhQF+OdZ7mLuVZ8sLvZvM+F+5gRkcd7h7pCuj
 PVZrsEZ24/FOgTue+VIOwcbQCiOs6KrFm939w/6oZeaw6biIq3oObr4e5
 fQ1hvAboJ55X40UF2Yr4oQw6cM1tKvjc/DpFD2M4F9pPElWNZSjSy0U1d
 5+B78rbVVV7jDZBaheVjZ5GnEPCAkZU1laUzayJLv0qpVPf5R/9KoYsCZ Q==;
X-CSE-ConnectionGUID: gZVTgSCsSb+ujCkMLzG2Vw==
X-CSE-MsgGUID: 433zJbsnT1uX4UMjh9xuqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75063377"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="75063377"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 00:34:55 -0700
X-CSE-ConnectionGUID: 2G/TzLgKSy2KkaErWZtpJQ==
X-CSE-MsgGUID: 7Xlj9LXgQx+u04jm8hxoIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185075352"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 30 Oct 2025 00:34:53 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 11/32] drm/i915/display: Determine Cx0 PLL DP mode from PLL
 state
Date: Thu, 30 Oct 2025 09:22:28 +0200
Message-Id: <20251030072249.155095-12-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251030072249.155095-1-mika.kahola@intel.com>
References: <20251030072249.155095-1-mika.kahola@intel.com>
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

From: Imre Deak <imre.deak@intel.com>

The Cx0 PLL enable programming needs to know if the PLL is in DP or HDMI
mode. The PLL manager framework doesn't pass the CRTC state to the PLL's
enable hook, so prepare here for the conversion to use the PLL manager
for Cx0 PHY PLLs by determining the DP/HDMI mode from the PLL state.

For C10 PHYs use the fact that the HDMI divider value in the PLL
registers are set if and only if the PLL is in HDMI mode.

For C20 PHYs use the DP mode flag programmed to the VDR SERDES register,
which is set if and only if the PLL is in DP mode.

Assert that the above PLL/VDR SERDES register values match the DP/HDMI
mode being configured already during state computation.

This also allows dropping the is_dp param from the
__intel_cx0pll_enable() function, since it can retrieve this now from
the PLL state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 43 ++++++++++++++++----
 1 file changed, 36 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f6b25291cd18..f1216beb5581 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2090,6 +2090,24 @@ static void intel_c10pll_update_pll(struct intel_encoder *encoder,
 		pll_state->c10.pll[i] = 0;
 }
 
+static bool c10pll_state_is_dp(const struct intel_c10pll_state *pll_state)
+{
+	return !REG_FIELD_GET8(C10_PLL15_HDMIDIV_MASK, pll_state->pll[15]);
+}
+
+static bool c20pll_state_is_dp(const struct intel_c20pll_state *pll_state)
+{
+	return pll_state->vdr.serdes_rate & PHY_C20_IS_DP;
+}
+
+static bool cx0pll_state_is_dp(const struct intel_cx0pll_state *pll_state)
+{
+	if (pll_state->use_c10)
+		return c10pll_state_is_dp(&pll_state->c10);
+
+	return c20pll_state_is_dp(&pll_state->c20);
+}
+
 /*
  * TODO: Convert the following align with intel_c20pll_find_table() and
  * intel_c20pll_calc_state_from_table().
@@ -2099,6 +2117,7 @@ static int intel_c10pll_calc_state_from_table(struct intel_encoder *encoder,
 					      bool is_dp, int port_clock, int lane_count,
 					      struct intel_cx0pll_state *pll_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	int i;
 
 	for (i = 0; tables[i]; i++) {
@@ -2110,6 +2129,8 @@ static int intel_c10pll_calc_state_from_table(struct intel_encoder *encoder,
 			pll_state->use_c10 = true;
 			pll_state->lane_count = lane_count;
 
+			drm_WARN_ON(display->drm, is_dp != c10pll_state_is_dp(&pll_state->c10));
+
 			return 0;
 		}
 	}
@@ -2120,6 +2141,8 @@ static int intel_c10pll_calc_state_from_table(struct intel_encoder *encoder,
 static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 				   struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(encoder);
+	bool is_dp = intel_crtc_has_dp_encoder(crtc_state);
 	const struct intel_c10pll_state * const *tables;
 	int err;
 
@@ -2127,8 +2150,7 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 	if (!tables)
 		return -EINVAL;
 
-	err = intel_c10pll_calc_state_from_table(encoder, tables,
-						 intel_crtc_has_dp_encoder(crtc_state),
+	err = intel_c10pll_calc_state_from_table(encoder, tables, is_dp,
 						 crtc_state->port_clock, crtc_state->lane_count,
 						 &crtc_state->dpll_hw_state.cx0pll);
 
@@ -2143,6 +2165,9 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 	crtc_state->dpll_hw_state.cx0pll.use_c10 = true;
 	crtc_state->dpll_hw_state.cx0pll.lane_count = crtc_state->lane_count;
 
+	drm_WARN_ON(display->drm,
+		    is_dp != c10pll_state_is_dp(&crtc_state->dpll_hw_state.cx0pll.c10));
+
 	return 0;
 }
 
@@ -2643,6 +2668,7 @@ static int intel_c20pll_calc_state_from_table(struct intel_crtc_state *crtc_stat
 static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 				   struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	bool is_dp = intel_crtc_has_dp_encoder(crtc_state);
 	int err = -ENOENT;
 
@@ -2663,6 +2689,9 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 	intel_c20_calc_vdr_params(&crtc_state->dpll_hw_state.cx0pll.c20.vdr,
 				  is_dp, crtc_state->port_clock);
 
+	drm_WARN_ON(display->drm,
+		    is_dp != c20pll_state_is_dp(&crtc_state->dpll_hw_state.cx0pll.c20));
+
 	return 0;
 }
 
@@ -2929,10 +2958,11 @@ static void intel_c20_pll_program(struct intel_display *display,
 
 static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 					 const struct intel_cx0pll_state *pll_state,
-					 bool is_dp, int port_clock,
+					 int port_clock,
 					 bool lane_reversal)
 {
 	struct intel_display *display = to_intel_display(encoder);
+	bool is_dp = cx0pll_state_is_dp(pll_state);
 	u32 val = 0;
 
 	intel_de_rmw(display, XELPDP_PORT_BUF_CTL1(display, encoder->port),
@@ -3178,7 +3208,7 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane_mask)
 
 static void __intel_cx0pll_enable(struct intel_encoder *encoder,
 				  const struct intel_cx0pll_state *pll_state,
-				  bool is_dp, int port_clock)
+				  int port_clock)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
@@ -3192,7 +3222,7 @@ static void __intel_cx0pll_enable(struct intel_encoder *encoder,
 	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
 	 * clock muxes, gating and SSC
 	 */
-	intel_program_port_clock_ctl(encoder, pll_state, is_dp, port_clock, lane_reversal);
+	intel_program_port_clock_ctl(encoder, pll_state, port_clock, lane_reversal);
 
 	/* 2. Bring PHY out of reset. */
 	intel_cx0_phy_lane_reset(encoder, lane_reversal);
@@ -3262,7 +3292,6 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state)
 {
 	__intel_cx0pll_enable(encoder, &crtc_state->dpll_hw_state.cx0pll,
-			      intel_crtc_has_dp_encoder(crtc_state),
 			      crtc_state->port_clock);
 }
 
@@ -3818,7 +3847,7 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
 			    "[ENCODER:%d:%s] Applying power saving workaround on disabled PLL\n",
 			    encoder->base.base.id, encoder->base.name);
 
-		__intel_cx0pll_enable(encoder, &pll_state, true, port_clock);
+		__intel_cx0pll_enable(encoder, &pll_state, port_clock);
 		intel_cx0pll_disable(encoder);
 	}
 }
-- 
2.34.1

