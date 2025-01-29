Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E711A224EC
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 21:01:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE01310E8B1;
	Wed, 29 Jan 2025 20:01:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mUbp9/Cp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AADA610E8AB;
 Wed, 29 Jan 2025 20:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738180917; x=1769716917;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7wTE5eq/gsTZ+bmnqapWApK95QJXUGwCUf8KXQnrk+k=;
 b=mUbp9/Cpj5lOJLVQ50CtguDYWZdtMV/nSFYCoDu38RIFo9uNQyj6vQ1O
 wqtTf/k53sWkNTvRck3WDABeGhk+Ryetk214P1R3CVasj6vnWXYEY77cK
 Hr1cV9RnPbx8Z2b6Zb+RdYzEYacrKBuwGuRgL2pIDBvznHIHDykVp38oD
 iSA5VyC5dvQvcqGPP9Dm4k7IQZXwjtmEs0stN0Vat/6PhiBOaH8NUc2BT
 O5i15VqE0FLzfymRyKWDHP9QjxSgYHrLhHgj3FPQfiqjOD6WudXV5+Caj
 NXsZNBajULiMEhE6ROq33wqiMXcF3dqrjUQab6lqX1L4mCya7FGWPKyF5 g==;
X-CSE-ConnectionGUID: zmQ+Hr/9RPyMOoHvFzxEyw==
X-CSE-MsgGUID: b8mQzPw7RaOQzNlsp2e20g==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="38977737"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="38977737"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:41 -0800
X-CSE-ConnectionGUID: vU7fflPqTxiM0j2+j7VYiA==
X-CSE-MsgGUID: BZ/DJMtISyC8rTeOPULWuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113750912"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:40 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 13/17] drm/i915/ddi: Factor out a helper to get DDI_BUF_CTL's
 config value
Date: Wed, 29 Jan 2025 22:02:17 +0200
Message-ID: <20250129200221.2508101-14-imre.deak@intel.com>
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

Factor out a function to get the configuration fields in the DDI_BUF_CTL
register. This can be used for configuring an HDMI output as well.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 32 ++++++++++++++++--------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 64c42505f2ad6..dd8ae5cf96c70 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -333,45 +333,55 @@ static int dp_phy_lane_stagger_delay(int port_clock)
 	return DIV_ROUND_UP(port_clock, intel_dp_link_symbol_size(port_clock) * 1000);
 }
 
-static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
-				      const struct intel_crtc_state *crtc_state)
+static u32 intel_ddi_buf_ctl_config_val(struct intel_encoder *encoder,
+					const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	u32 val = 0;
 
 	/* DDI_BUF_CTL_ENABLE will be set by intel_ddi_prepare_link_retrain() later */
-	intel_dp->DP = DDI_PORT_WIDTH(crtc_state->lane_count) |
+	val |= DDI_PORT_WIDTH(crtc_state->lane_count) |
 		DDI_BUF_TRANS_SELECT(0);
 
 	if (dig_port->lane_reversal)
-		intel_dp->DP |= DDI_BUF_PORT_REVERSAL;
+		val |= DDI_BUF_PORT_REVERSAL;
 	if (dig_port->ddi_a_4_lanes)
-		intel_dp->DP |= DDI_A_4_LANES;
+		val |= DDI_A_4_LANES;
 
 	if (DISPLAY_VER(i915) >= 14) {
 		if (intel_dp_is_uhbr(crtc_state))
-			intel_dp->DP |= DDI_BUF_PORT_DATA_40BIT;
+			val |= DDI_BUF_PORT_DATA_40BIT;
 		else
-			intel_dp->DP |= DDI_BUF_PORT_DATA_10BIT;
+			val |= DDI_BUF_PORT_DATA_10BIT;
 	}
 
 	if (IS_ALDERLAKE_P(i915) && intel_encoder_is_tc(encoder)) {
-		intel_dp->DP |= ddi_buf_phy_link_rate(crtc_state->port_clock);
+		val |= ddi_buf_phy_link_rate(crtc_state->port_clock);
 		/*
 		 * TODO: remove the following once DDI_BUF_CTL is updated via
 		 * an RMW everywhere.
 		 */
 		if (!intel_tc_port_in_tbt_alt_mode(dig_port))
-			intel_dp->DP |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
+			val |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	}
 
 	if (IS_DISPLAY_VER(display, 11, 13) && intel_encoder_is_tc(encoder)) {
 		int delay = dp_phy_lane_stagger_delay(crtc_state->port_clock);
 
-		intel_dp->DP |= DDI_BUF_LANE_STAGGER_DELAY(delay);
+		val |= DDI_BUF_LANE_STAGGER_DELAY(delay);
 	}
+
+	return val;
+}
+
+static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
+				      const struct intel_crtc_state *crtc_state)
+{
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	intel_dp->DP = intel_ddi_buf_ctl_config_val(encoder, crtc_state);
 }
 
 static u32 intel_ddi_buf_ctl_config_mask(struct intel_encoder *encoder)
-- 
2.44.2

