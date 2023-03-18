Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 534156BF71D
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 01:59:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A61910E449;
	Sat, 18 Mar 2023 00:59:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C582D10E2AA
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Mar 2023 00:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679101171; x=1710637171;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qI/rRb71M2KH+PnrPkRB9lH/MyqiBCQZ/MyZXcHvG1c=;
 b=D9QPC7KqlFNQQ1tcfoEwSI4yeWfgRMloZ7YwGJCVVBszmm6Ek4PrjxHN
 23nJ8g1WCeNoWQvOM0kJTM42sia3CwcrVDXSJZ/ji5o+w0Q5gVdZzPm0D
 VlQ5hbVbvzTnQd0SneXY/En04jhHKxgN2Cb7ezvWzAHY55HuRFL6KXxuq
 QRYsVh6CElWE/tjxYnEtLJpXlyQCQhvvXxIW4lUC3bFsJ/wuFZIoX21B3
 qXVx2ejHi1felBkyrXYQkgSi4h06NT+NDvq2EgJIkrnzGizdnwjlUUDX0
 hdr/HdAKjXLXpwO0dLEiOE9pMjRJ2GqR2rNhgWswQD+b02V8Mngmjg/7G g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="400971056"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="400971056"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 17:59:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="804301801"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="804301801"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 17:59:31 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Mar 2023 17:58:51 -0700
Message-Id: <20230318005852.2303937-4-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230318005852.2303937-1-radhakrishna.sripada@intel.com>
References: <20230318005852.2303937-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/display/mtl: Fill port width in
 DDI_BUF_/TRANS_DDI_FUNC_/PORT_BUF_CTL for HDMI
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

From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

MTL requires the PORT_CTL_WIDTH, TRANS_DDI_FUNC_CTL and DDI_BUF_CTL
to be filled with 4 lanes for TMDS mode.
This patch enables D2D link and fills PORT_WIDTH in appropriate
registers.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Taylor, Clinton A <clinton.a.taylor@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 48 +++++++++++++++++++++---
 drivers/gpu/drm/i915/i915_reg.h          |  2 +
 2 files changed, 44 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 1efa3b6f4101..a5a0b76c1b10 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -542,6 +542,8 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
 			temp |= TRANS_DDI_HDMI_SCRAMBLING;
 		if (crtc_state->hdmi_high_tmds_clock_ratio)
 			temp |= TRANS_DDI_HIGH_TMDS_CHAR_RATE;
+		if (DISPLAY_VER(dev_priv) >= 14)
+			temp |= TRANS_DDI_PORT_WIDTH(crtc_state->lane_count);
 	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG)) {
 		temp |= TRANS_DDI_MODE_SELECT_FDI_OR_128B132B;
 		temp |= (crtc_state->fdi_lanes - 1) << 1;
@@ -3142,6 +3144,10 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 	if (has_buf_trans_select(dev_priv))
 		hsw_prepare_hdmi_ddi_buffers(encoder, crtc_state);
 
+	/* e. Enable D2D Link for C10/C20 Phy */
+	if (DISPLAY_VER(dev_priv) >= 14)
+		mtl_ddi_enable_d2d(encoder);
+
 	encoder->set_signal_levels(encoder, crtc_state);
 
 	/* Display WA #1143: skl,kbl,cfl */
@@ -3187,13 +3193,39 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 	 *
 	 * On ADL_P the PHY link rate and lane count must be programmed but
 	 * these are both 0 for HDMI.
+	 *
+	 * But MTL onwards HDMI2.1 is supported and in TMDS mode this
+	 * is always filled with 4 lanes, already set in the crtc_state.
+	 * The same is required to be filled in PORT_BUF_CTL for C10/20 Phy.
 	 */
-	buf_ctl = dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE;
-	if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
-		drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
-		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		u32 ddi_buf = 0;
+		u8  lane_count = mtl_get_port_width(crtc_state->lane_count);
+		u32 port_buf = 0;
+
+		port_buf |= XELPDP_PORT_WIDTH(lane_count);
+
+		if (intel_bios_encoder_lane_reversal(encoder->devdata))
+			port_buf |= XELPDP_PORT_REVERSAL;
+
+		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port), 0, port_buf);
+
+		ddi_buf |= DDI_BUF_CTL_ENABLE |
+			   DDI_PORT_WIDTH(lane_count);
+
+		intel_de_write(dev_priv, DDI_BUF_CTL(port),
+			       dig_port->saved_port_bits | ddi_buf);
+
+		/* i. Poll for PORT_BUF_CTL Idle Status == 0, timeout after 100 us */
+		intel_wait_ddi_buf_active(dev_priv, port);
+	} else {
+		buf_ctl = dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE;
+		if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
+			drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
+			buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
+		}
+		intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
 	}
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
 
 	intel_wait_ddi_buf_active(dev_priv, port);
 
@@ -3702,7 +3734,11 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 		fallthrough;
 	case TRANS_DDI_MODE_SELECT_DVI:
 		pipe_config->output_types |= BIT(INTEL_OUTPUT_HDMI);
-		pipe_config->lane_count = 4;
+		if (DISPLAY_VER(dev_priv) >= 14)
+			pipe_config->lane_count =
+				((temp & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
+		else
+			pipe_config->lane_count = 4;
 		break;
 	case TRANS_DDI_MODE_SELECT_DP_SST:
 		if (encoder->type == INTEL_OUTPUT_EDP)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 82c9ba8f44b6..4c89f706481b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6751,6 +6751,8 @@ enum skl_power_gate {
 #define  TRANS_DDI_HDCP_SELECT		REG_BIT(5)
 #define  TRANS_DDI_BFI_ENABLE		(1 << 4)
 #define  TRANS_DDI_HIGH_TMDS_CHAR_RATE	(1 << 4)
+#define  TRANS_DDI_PORT_WIDTH_MASK	REG_GENMASK(3, 1)
+#define  TRANS_DDI_PORT_WIDTH(width)	REG_FIELD_PREP(TRANS_DDI_PORT_WIDTH_MASK, (width) - 1)
 #define  TRANS_DDI_HDMI_SCRAMBLING	(1 << 0)
 #define  TRANS_DDI_HDMI_SCRAMBLING_MASK (TRANS_DDI_HDMI_SCRAMBLER_CTS_ENABLE \
 					| TRANS_DDI_HDMI_SCRAMBLER_RESET_FREQ \
-- 
2.34.1

