Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B166D9851
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 15:33:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9212410EBCA;
	Thu,  6 Apr 2023 13:32:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A83810EBB9
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 13:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680787968; x=1712323968;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KPcR8ng7lO0b0p/M1Pv52KbtTpu4FHKq2d3YdDbCY2E=;
 b=N9Q+huVGrk44yO22wHZqd5QldijL/IdLczJeKNEEd52GC68MWrDaIlwS
 zO+lmBUL7vhvwP5C4WTksOblMtG/t522afgmXmkK2DmtKqXe3GG5C1cJc
 Ead0dthMjtf6x1yq+7jxSeHQU8CJYwSo6/VUKf1QPpBjxnwTUzNyqxHjD
 y+HlwNyNHcqmev+I3qScqScHHBG9l9u5u6V9W+b1eDE7dLs6qFUfxv1CA
 zJKtNiivWL3pDEFlsF97MX3JkXqdnCllasmbVY+N2u4XOK3tPAxkNYpM1
 /38uHndnHwBmiYqTIUA90mTtgqWktKqeKuuybQ2+X8agdHUKpQrTZKkQd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="345352345"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="345352345"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 06:07:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="751641724"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="751641724"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 06 Apr 2023 06:07:42 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Apr 2023 16:02:20 +0300
Message-Id: <20230406130221.2998457-8-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230406130221.2998457-1-mika.kahola@intel.com>
References: <20230406130221.2998457-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 7/8] drm/i915/display/mtl: Fill port width in
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
Cc: Taylor@freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

MTL requires the PORT_CTL_WIDTH, TRANS_DDI_FUNC_CTL and DDI_BUF_CTL
to be filled with 4 lanes for TMDS mode.
This patch enables D2D link and fills PORT_WIDTH in appropriate
registers.

v2:
  - Added fixes from Clint's Add HDMI implementation changes.
  - Modified commit message.
v3:
  - Use TRANS_DDI_PORT_WIDTH() instead of DDI_PORT_WIDTH() for the value
    of TRANS_DDI_FUNC_CTL_*. (Gustavo)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Taylor, Clinton A <clinton.a.taylor@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 48 +++++++++++++++++++++---
 drivers/gpu/drm/i915/i915_reg.h          |  2 +
 2 files changed, 44 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e97d7627d9d1..20b0844b8240 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -516,6 +516,8 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
 			temp |= TRANS_DDI_HDMI_SCRAMBLING;
 		if (crtc_state->hdmi_high_tmds_clock_ratio)
 			temp |= TRANS_DDI_HIGH_TMDS_CHAR_RATE;
+		if (DISPLAY_VER(dev_priv) >= 14)
+			temp |= TRANS_DDI_PORT_WIDTH(crtc_state->lane_count);
 	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG)) {
 		temp |= TRANS_DDI_MODE_SELECT_FDI_OR_128B132B;
 		temp |= (crtc_state->fdi_lanes - 1) << 1;
@@ -2891,6 +2893,10 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 	if (has_buf_trans_select(dev_priv))
 		hsw_prepare_hdmi_ddi_buffers(encoder, crtc_state);
 
+	/* e. Enable D2D Link for C10/C20 Phy */
+	if (DISPLAY_VER(dev_priv) >= 14)
+		mtl_ddi_enable_d2d(encoder);
+
 	encoder->set_signal_levels(encoder, crtc_state);
 
 	/* Display WA #1143: skl,kbl,cfl */
@@ -2936,13 +2942,39 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
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
+		if (intel_bios_is_lane_reversal_needed(dev_priv, port))
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
 
@@ -3357,7 +3389,11 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
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
index 8d49676148f2..c4d363248bd2 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5597,6 +5597,8 @@ enum skl_power_gate {
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

