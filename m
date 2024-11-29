Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8852F9DC214
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 11:25:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A4EA10E341;
	Fri, 29 Nov 2024 10:25:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jUQI0qvI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C79B10E272;
 Fri, 29 Nov 2024 10:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732875913; x=1764411913;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2aDJuOZheyqkyLvSw2ZZ7GtPFn4eWfbi/JsXU2ni8hc=;
 b=jUQI0qvIF5FG8uAn1WOgPv9pF58QE28bk9ecrdp7liZdZZ+Y6N4bz416
 4eWtNxb54idmqbRdukL4umAyZ/0CXbqU7SvlQImlZXf06gkFgGPQqfeVt
 HmPF7GX/iMpEfha31z/jhsHpOciAANuaKGaI1TT8K++4Iy0/yQdfZQHPt
 EMfuV+8VaFnBDkRB1PN6enj38rJP10GplnSXArUU9o259KHC89VqegMcB
 uQOFr1xJCzjISSqKrk3dF+uClrTSJ9acIOeL7RaPxlTpleI2CFXow8QeV
 Achs7X1Ndvlz1+D8Xbagt6msRYf24wyhs+4id6XsyoVD1TpseoJghSAIm Q==;
X-CSE-ConnectionGUID: FY9ev4iXS2aAwOMvjdStWw==
X-CSE-MsgGUID: vxdgJM10Qrir0hYRNv5FRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="43726442"
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="43726442"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 02:25:12 -0800
X-CSE-ConnectionGUID: RgFFs4AvQzWo0AEzILlYPw==
X-CSE-MsgGUID: LC8Eg530TNebX5ryKgZvCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="92334423"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.241])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 02:25:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/display: replace dig_port->saved_port_bits with flags
Date: Fri, 29 Nov 2024 12:25:03 +0200
Message-Id: <20241129102503.452272-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
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

dig_port->saved_port_bits is used to permanently store two DDI_BUF_CTL
bits, DDI_BUF_PORT_REVERSAL and DDI_A_4_LANES. Store them separately as
bools to make their use more logical and less about storing state as
register bits.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 44 ++++++++++---------
 .../drm/i915/display/intel_display_types.h    |  4 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |  2 +-
 4 files changed, 29 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 71dc659228ab..cc734079c3b8 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2987,7 +2987,7 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
+	bool lane_reversal = dig_port->lane_reversal;
 	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
 					  INTEL_CX0_LANE0;
 	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 7d37ddd9ad12..4f9c50996446 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -335,10 +335,14 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
 	/* DDI_BUF_CTL_ENABLE will be set by intel_ddi_prepare_link_retrain() later */
-	intel_dp->DP = dig_port->saved_port_bits |
-		DDI_PORT_WIDTH(crtc_state->lane_count) |
+	intel_dp->DP = DDI_PORT_WIDTH(crtc_state->lane_count) |
 		DDI_BUF_TRANS_SELECT(0);
 
+	if (dig_port->lane_reversal)
+		intel_dp->DP |= DDI_BUF_PORT_REVERSAL;
+	if (dig_port->ddi_a_4_lanes)
+		intel_dp->DP |= DDI_A_4_LANES;
+
 	if (DISPLAY_VER(i915) >= 14) {
 		if (intel_dp_is_uhbr(crtc_state))
 			intel_dp->DP |= DDI_BUF_PORT_DATA_40BIT;
@@ -2402,12 +2406,10 @@ static void intel_ddi_power_up_lanes(struct intel_encoder *encoder,
 
 	if (intel_encoder_is_combo(encoder)) {
 		enum phy phy = intel_encoder_to_phy(encoder);
-		bool lane_reversal =
-			dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
 
 		intel_combo_phy_power_up_lanes(i915, phy, false,
 					       crtc_state->lane_count,
-					       lane_reversal);
+					       dig_port->lane_reversal);
 	}
 }
 
@@ -2547,7 +2549,7 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
 	else
 		val |= XELPDP_PORT_BUF_PORT_DATA_10BIT;
 
-	if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
+	if (dig_port->lane_reversal)
 		val |= XELPDP_PORT_REVERSAL;
 
 	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(i915, port), val);
@@ -3413,14 +3415,20 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 	 * is filled with lane count, already set in the crtc_state.
 	 * The same is required to be filled in PORT_BUF_CTL for C10/20 Phy.
 	 */
-	buf_ctl = dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE;
+	buf_ctl = DDI_BUF_CTL_ENABLE;
+
+	if (dig_port->lane_reversal)
+		buf_ctl |= DDI_BUF_PORT_REVERSAL;
+	if (dig_port->ddi_a_4_lanes)
+		buf_ctl |= DDI_A_4_LANES;
+
 	if (DISPLAY_VER(dev_priv) >= 14) {
 		u8  lane_count = mtl_get_port_width(crtc_state->lane_count);
 		u32 port_buf = 0;
 
 		port_buf |= XELPDP_PORT_WIDTH(lane_count);
 
-		if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
+		if (dig_port->lane_reversal)
 			port_buf |= XELPDP_PORT_REVERSAL;
 
 		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(dev_priv, port),
@@ -4763,7 +4771,7 @@ static bool intel_ddi_a_force_4_lanes(struct intel_digital_port *dig_port)
 	if (dig_port->base.port != PORT_A)
 		return false;
 
-	if (dig_port->saved_port_bits & DDI_A_4_LANES)
+	if (dig_port->ddi_a_4_lanes)
 		return false;
 
 	/* Broxton/Geminilake: Bspec says that DDI_A_4_LANES is the only
@@ -4801,7 +4809,7 @@ intel_ddi_max_lanes(struct intel_digital_port *dig_port)
 	if (intel_ddi_a_force_4_lanes(dig_port)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Forcing DDI_A_4_LANES for port A\n");
-		dig_port->saved_port_bits |= DDI_A_4_LANES;
+		dig_port->ddi_a_4_lanes = true;
 		max_lanes = 4;
 	}
 
@@ -4980,6 +4988,7 @@ void intel_ddi_init(struct intel_display *display,
 	bool init_hdmi, init_dp;
 	enum port port;
 	enum phy phy;
+	u32 ddi_buf_ctl;
 
 	port = intel_bios_encoder_port(devdata);
 	if (port == PORT_NONE)
@@ -5229,17 +5238,12 @@ void intel_ddi_init(struct intel_display *display,
 	else
 		encoder->hpd_pin = intel_hpd_pin_default(dev_priv, port);
 
-	if (DISPLAY_VER(dev_priv) >= 11)
-		dig_port->saved_port_bits =
-			intel_de_read(dev_priv, DDI_BUF_CTL(port))
-			& DDI_BUF_PORT_REVERSAL;
-	else
-		dig_port->saved_port_bits =
-			intel_de_read(dev_priv, DDI_BUF_CTL(port))
-			& (DDI_BUF_PORT_REVERSAL | DDI_A_4_LANES);
+	ddi_buf_ctl = intel_de_read(dev_priv, DDI_BUF_CTL(port));
+
+	dig_port->lane_reversal = intel_bios_encoder_lane_reversal(devdata) ||
+		ddi_buf_ctl & DDI_BUF_PORT_REVERSAL;
 
-	if (intel_bios_encoder_lane_reversal(devdata))
-		dig_port->saved_port_bits |= DDI_BUF_PORT_REVERSAL;
+	dig_port->ddi_a_4_lanes = DISPLAY_VER(dev_priv) < 11 && ddi_buf_ctl & DDI_A_4_LANES;
 
 	dig_port->dp.output_reg = INVALID_MMIO_REG;
 	dig_port->max_lanes = intel_ddi_max_lanes(dig_port);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ec68bbfed442..167aa8ec4948 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1814,11 +1814,13 @@ struct intel_lspcon {
 
 struct intel_digital_port {
 	struct intel_encoder base;
-	u32 saved_port_bits;
 	struct intel_dp dp;
 	struct intel_hdmi hdmi;
 	struct intel_lspcon lspcon;
 	enum irqreturn (*hpd_pulse)(struct intel_digital_port *, bool);
+
+	bool lane_reversal;
+	bool ddi_a_4_lanes;
 	bool release_cl2_override;
 	u8 max_lanes;
 	/* Used for DP and ICL+ TypeC/DP and TypeC/HDMI ports. */
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index b16c4d2d4077..0e4d78b146f6 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -390,7 +390,7 @@ void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
-	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
+	bool lane_reversal = dig_port->lane_reversal;
 	u32 val;
 
 	if (DISPLAY_VER(i915) >= 14)
-- 
2.39.5

