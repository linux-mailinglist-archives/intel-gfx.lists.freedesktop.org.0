Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1004D6E1671
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 23:26:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9692B10E1AE;
	Thu, 13 Apr 2023 21:26:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B80210E03A
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 21:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681421156; x=1712957156;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N2DivXkaJY8Xj0ZAy4ZCKASZKjVTEr4ajI2TFzdCyhY=;
 b=LczuFbmrPdDhOocpC1laMQ76ELLkOw11ukuol8h5e1BucUC2mhugX70N
 Zf9cEh+Pu8xX/YITc2Lk0oNZYlrgKhe/h7LCjiuO5STqokMF8juPR9Z8X
 NrBLjmItVTWCex2salWsXEeMVcr+vYRjuD2JFAbtTr3LmAewtoXLFAxw/
 YDqehl9t9oIyxLP6G1N7Bw+5kEGwQWbajLwlxX8sLFa3z4RqDIWv5ojwf
 fgU4XO40Huq+JLzCjvOFb6c3KR0X5KzTdyvbf5tgvyDYUvdNfrsgT/v4c
 pTQ+5JX6h3Ekde0FOEASAD7sWEIkQcuKwtf4UNm30nF+B/cj4DT5j0pdU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="346129627"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="346129627"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 14:25:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="754168652"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="754168652"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 14:25:54 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Apr 2023 14:24:42 -0700
Message-Id: <20230413212443.1504245-9-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230413212443.1504245-1-radhakrishna.sripada@intel.com>
References: <20230413212443.1504245-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/9] drm/i915/display/mtl: Fill port width in
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

v2:
  - Added fixes from Clint's Add HDMI implementation changes.
  - Modified commit message.
v3:
  - Use TRANS_DDI_PORT_WIDTH() instead of DDI_PORT_WIDTH() for the value
    of TRANS_DDI_FUNC_CTL_*. (Gustavo)

Cc: Taylor, Clinton A <clinton.a.taylor@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 32 ++++++++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h          |  2 ++
 2 files changed, 32 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c0283829823f..ea012d7f378f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -541,6 +541,8 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
 			temp |= TRANS_DDI_HDMI_SCRAMBLING;
 		if (crtc_state->hdmi_high_tmds_clock_ratio)
 			temp |= TRANS_DDI_HIGH_TMDS_CHAR_RATE;
+		if (DISPLAY_VER(dev_priv) >= 14)
+			temp |= TRANS_DDI_PORT_WIDTH(crtc_state->lane_count);
 	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG)) {
 		temp |= TRANS_DDI_MODE_SELECT_FDI_OR_128B132B;
 		temp |= (crtc_state->fdi_lanes - 1) << 1;
@@ -3157,6 +3159,10 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 	if (has_buf_trans_select(dev_priv))
 		hsw_prepare_hdmi_ddi_buffers(encoder, crtc_state);
 
+	/* e. Enable D2D Link for C10/C20 Phy */
+	if (DISPLAY_VER(dev_priv) >= 14)
+		mtl_ddi_enable_d2d(encoder);
+
 	encoder->set_signal_levels(encoder, crtc_state);
 
 	/* Display WA #1143: skl,kbl,cfl */
@@ -3202,12 +3208,30 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 	 *
 	 * On ADL_P the PHY link rate and lane count must be programmed but
 	 * these are both 0 for HDMI.
+	 *
+	 * But MTL onwards HDMI2.1 is supported and in TMDS mode this
+	 * is filled with lane count, already set in the crtc_state.
+	 * The same is required to be filled in PORT_BUF_CTL for C10/20 Phy.
 	 */
 	buf_ctl = dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE;
-	if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		u8  lane_count = mtl_get_port_width(crtc_state->lane_count);
+		u32 port_buf = 0;
+
+		port_buf |= XELPDP_PORT_WIDTH(lane_count);
+
+		if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
+			port_buf |= XELPDP_PORT_REVERSAL;
+
+		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port),
+			     XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_REVERSAL, port_buf);
+
+		buf_ctl |= DDI_PORT_WIDTH(lane_count);
+	} else if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
 		drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
 		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	}
+
 	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
 
 	intel_wait_ddi_buf_active(dev_priv, port);
@@ -3668,7 +3692,11 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
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
index df29ab301326..f472baf242dc 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5596,6 +5596,8 @@ enum skl_power_gate {
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

