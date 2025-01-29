Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DE0A224ED
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 21:01:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D92610E8AB;
	Wed, 29 Jan 2025 20:01:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cstEYPpa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E99E10E8AA;
 Wed, 29 Jan 2025 20:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738180916; x=1769716916;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XDBwVev7FV7xldNU1PsGCXPQj94g5oT9hVpGR7jnwiY=;
 b=cstEYPpasAIVipSPpvD6w+Eo63OlSwBlM7YZJVgen/A3KidqPPC3FNmR
 nNJxl4jZ4HoMWhP3xfi6nwe8fsyCEX3g3gcxkjaYYy5t3NGG6iIKqhY0g
 LoefA6xFXwuPIpwiOTB97HpGXtBWxgC9i3wiPgQmbRJBIj4asJ/f+i7kd
 4jyv3YQB04sKLo/pzPs+PkLKv/ZcXR2xRNliZQJvFr1LqSl10ABmoXIRV
 xSrd4tGflRnC8sKmCURsFQVpeOx0O1459GEkqv5EyBxE3mzZHZ2LLOyOF
 eMaq8h8JLCTsOChxOXPk+3QOUArTMQJruHa0MBYsgN1FNGFMlZ/SdHpdf Q==;
X-CSE-ConnectionGUID: S25yYA3sSl6Nf4oUg0UwaQ==
X-CSE-MsgGUID: 1yiZHuj2TbmpRES707qiwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="38977746"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="38977746"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:43 -0800
X-CSE-ConnectionGUID: donRXytVTNSEi/A1CnpKKQ==
X-CSE-MsgGUID: G8WYs3PsRta76gyMNs+AEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113750914"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:41 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 14/17] drm/i915/ddi: Reuse helper to compute the HDMI
 DDI_BUF_CTL config
Date: Wed, 29 Jan 2025 22:02:18 +0200
Message-ID: <20250129200221.2508101-15-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250129200221.2508101-1-imre.deak@intel.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
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

Reuse the existing helper to compute the configuration value of the
DDI_BUF_CTL register for HDMI outputs instead of open-coding this.

Note that dropping the XE2LPD_DDI_BUF_D2D_LINK_ENABLE flag is ok,
since an earlier mtl_ddi_enable_d2d() has set it already and
intel_enable_ddi_buf()'s RMW will not update this flag.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 30 ++++++++----------------
 1 file changed, 10 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index dd8ae5cf96c70..e03ec9a235d33 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -339,11 +339,14 @@ static u32 intel_ddi_buf_ctl_config_val(struct intel_encoder *encoder,
 	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool is_dp = intel_crtc_has_dp_encoder(crtc_state);
 	u32 val = 0;
 
 	/* DDI_BUF_CTL_ENABLE will be set by intel_ddi_prepare_link_retrain() later */
-	val |= DDI_PORT_WIDTH(crtc_state->lane_count) |
-		DDI_BUF_TRANS_SELECT(0);
+	if (is_dp || DISPLAY_VER(display) >= 14)
+		val |= DDI_PORT_WIDTH(crtc_state->lane_count);
+
+	val |= DDI_BUF_TRANS_SELECT(0);
 
 	if (dig_port->lane_reversal)
 		val |= DDI_BUF_PORT_REVERSAL;
@@ -351,14 +354,15 @@ static u32 intel_ddi_buf_ctl_config_val(struct intel_encoder *encoder,
 		val |= DDI_A_4_LANES;
 
 	if (DISPLAY_VER(i915) >= 14) {
-		if (intel_dp_is_uhbr(crtc_state))
+		if (is_dp && intel_dp_is_uhbr(crtc_state))
 			val |= DDI_BUF_PORT_DATA_40BIT;
 		else
 			val |= DDI_BUF_PORT_DATA_10BIT;
 	}
 
 	if (IS_ALDERLAKE_P(i915) && intel_encoder_is_tc(encoder)) {
-		val |= ddi_buf_phy_link_rate(crtc_state->port_clock);
+		if (is_dp)
+			val |= ddi_buf_phy_link_rate(crtc_state->port_clock);
 		/*
 		 * TODO: remove the following once DDI_BUF_CTL is updated via
 		 * an RMW everywhere.
@@ -367,7 +371,7 @@ static u32 intel_ddi_buf_ctl_config_val(struct intel_encoder *encoder,
 			val |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	}
 
-	if (IS_DISPLAY_VER(display, 11, 13) && intel_encoder_is_tc(encoder)) {
+	if (is_dp && IS_DISPLAY_VER(display, 11, 13) && intel_encoder_is_tc(encoder)) {
 		int delay = dp_phy_lane_stagger_delay(crtc_state->port_clock);
 
 		val |= DDI_BUF_LANE_STAGGER_DELAY(delay);
@@ -3417,7 +3421,6 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_connector *connector = conn_state->connector;
 	enum port port = encoder->port;
-	u32 buf_ctl = 0;
 
 	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
 					       crtc_state->hdmi_high_tmds_clock_ratio,
@@ -3482,11 +3485,6 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 	 * is filled with lane count, already set in the crtc_state.
 	 * The same is required to be filled in PORT_BUF_CTL for C10/20 Phy.
 	 */
-	if (dig_port->lane_reversal)
-		buf_ctl |= DDI_BUF_PORT_REVERSAL;
-	if (dig_port->ddi_a_4_lanes)
-		buf_ctl |= DDI_A_4_LANES;
-
 	if (DISPLAY_VER(dev_priv) >= 14) {
 		u32 port_buf = 0;
 
@@ -3497,17 +3495,9 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 
 		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(dev_priv, port),
 			     XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_REVERSAL, port_buf);
-
-		buf_ctl |= DDI_PORT_WIDTH(crtc_state->lane_count);
-
-		if (DISPLAY_VER(dev_priv) >= 20)
-			buf_ctl |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
-	} else if (IS_ALDERLAKE_P(dev_priv) && intel_encoder_is_tc(encoder)) {
-		drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
-		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	}
 
-	intel_enable_ddi_buf(encoder, buf_ctl);
+	intel_enable_ddi_buf(encoder, intel_ddi_buf_ctl_config_val(encoder, crtc_state));
 }
 
 static void intel_ddi_enable(struct intel_atomic_state *state,
-- 
2.44.2

