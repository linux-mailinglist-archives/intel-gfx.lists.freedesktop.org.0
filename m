Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA896E022C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 00:51:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EDD110E9F0;
	Wed, 12 Apr 2023 22:51:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC59310E9D9
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 22:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681339847; x=1712875847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=15SKBaYTEL4Ldkv8aSduthzrw/beglV6Rw/53Mrk7Yg=;
 b=d/qDbiReSUGa13U+q0rSrUnF6mw5R9TrZjHSXMh+HA2+2No7qc0MM6D5
 omY2B6LqsgjZymRml84i2bwnox5f9R6hJvwnROGM7UmPYg+6khtT44UVw
 gjLeqXYlwLv7PnjITxYE6gFC25RNXh6FByGyRP+8Fl/eX/k0TqVBuUaZA
 uKmu3oaNNRP3aVEANtUXR/u6DXqab6Glh6Pf9zcFTg0bvas/AkYX8XjQ9
 YVF7Jwqfy7OgWOOQRKuSRqv4GBDcUxAVK3gIQDOI8o4wsft6PTif/fcOY
 /V7nfQK+ZC0/y+f1QGImxMaZreIIW9Xxxt1Q6Mc/t7v8KwdwpWkzTV1wa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="371890359"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="371890359"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 15:50:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="1018906851"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="1018906851"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 15:50:45 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Apr 2023 15:49:22 -0700
Message-Id: <20230412224925.1309815-7-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230412224925.1309815-1-radhakrishna.sripada@intel.com>
References: <20230412224925.1309815-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/9] drm/i915/mtl/display: Implement DisplayPort
 sequences
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

From: José Roberto de Souza <jose.souza@intel.com>

The differences between MTL and TGL DP sequences are big enough to
MTL have its own functions.

Also it is much easier to follow MTL sequences against spec with
its own functions.

One change worthy to mention is the move of
'intel_display_power_get(dev_priv, dig_port->ddi_io_power_domain)'.
This call is not necessary for MTL but we have _put() counter part in
intel_ddi_post_disable_dp() that needs to balanced.
We could add a display version check on it but instead here it is
moving it to intel_ddi_pre_enable_dp() so it is executed for all
platforms in a single place and this will not cause any harm in MTL
and newer platforms.

v2:
 - Fix logic to wait for buf idle.
 - Use the right register to wait for ddi active.(RK)
v3:
 - Increase wait timeout for ddi buf active (Mika)
v4:
 - Increase idle timeout for ddi buf idle (Mika)

BSpec: 65448 65505
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Satyeshwar Singh <satyeshwar.singh@intel.com>
Cc: Clint Taylor <clinton.a.taylor@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   8 +
 drivers/gpu/drm/i915/display/intel_ddi.c      | 345 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h               |   5 +
 3 files changed, 346 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 9cfa7f508c90..fe2e3edef69b 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -59,8 +59,16 @@
 										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_USBC2))
+#define   XELPDP_PORT_BUF_D2D_LINK_ENABLE		REG_BIT(29)
+#define   XELPDP_PORT_BUF_D2D_LINK_STATE		REG_BIT(28)
 #define   XELPDP_PORT_BUF_SOC_PHY_READY			REG_BIT(24)
+#define   XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK		REG_GENMASK(19, 18)
+#define   XELPDP_PORT_BUF_PORT_DATA_10BIT		REG_FIELD_PREP(XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK, 0)
+#define   XELPDP_PORT_BUF_PORT_DATA_20BIT		REG_FIELD_PREP(XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK, 1)
+#define   XELPDP_PORT_BUF_PORT_DATA_40BIT		REG_FIELD_PREP(XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK, 2)
 #define   XELPDP_PORT_REVERSAL				REG_BIT(16)
+#define   XELPDP_PORT_BUF_IO_SELECT_TBT			REG_BIT(11)
+#define   XELPDP_PORT_BUF_PHY_IDLE			REG_BIT(7)
 #define   XELPDP_TC_PHY_OWNERSHIP			REG_BIT(6)
 #define   XELPDP_TCSS_POWER_REQUEST			REG_BIT(5)
 #define   XELPDP_TCSS_POWER_STATE			REG_BIT(4)
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index b30e3ed7aedb..9df3da46fdca 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -40,6 +40,7 @@
 #include "intel_connector.h"
 #include "intel_crtc.h"
 #include "intel_cx0_phy.h"
+#include "intel_cx0_phy_regs.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
@@ -169,6 +170,18 @@ static void hsw_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
 		       trans->entries[level].hsw.trans2);
 }
 
+static void mtl_wait_ddi_buf_idle(struct drm_i915_private *i915, enum port port)
+{
+	int ret;
+
+	/* FIXME: find out why Bspec's 100us timeout is too short */
+	ret = wait_for_us((intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port)) &
+			   XELPDP_PORT_BUF_PHY_IDLE), 10000);
+	if (ret)
+		drm_err(&i915->drm, "Timeout waiting for DDI BUF %c to get idle\n",
+			port_name(port));
+}
+
 void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
 			     enum port port)
 {
@@ -196,7 +209,9 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (IS_DG2(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		timeout_us = 10000;
+	} else if (IS_DG2(dev_priv)) {
 		timeout_us = 1200;
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		if (intel_phy_is_tc(dev_priv, phy))
@@ -207,8 +222,12 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
 		timeout_us = 500;
 	}
 
-	ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
-			  DDI_BUF_IS_IDLE), timeout_us, 10, 10);
+	if (DISPLAY_VER(dev_priv) >= 14)
+		ret = _wait_for(!(intel_de_read(dev_priv, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_PORT_BUF_PHY_IDLE),
+				timeout_us, 10, 10);
+	else
+		ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) & DDI_BUF_IS_IDLE),
+				timeout_us, 10, 10);
 
 	if (ret)
 		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get active\n",
@@ -313,6 +332,13 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
 		DDI_PORT_WIDTH(crtc_state->lane_count) |
 		DDI_BUF_TRANS_SELECT(0);
 
+	if (DISPLAY_VER(i915) >= 14) {
+		if (intel_dp_is_uhbr(crtc_state))
+			intel_dp->DP |= DDI_BUF_PORT_DATA_40BIT;
+		else
+			intel_dp->DP |= DDI_BUF_PORT_DATA_10BIT;
+	}
+
 	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
 		intel_dp->DP |= ddi_buf_phy_link_rate(crtc_state->port_clock);
 		if (!intel_tc_port_in_tbt_alt_mode(dig_port))
@@ -2309,6 +2335,179 @@ static void intel_ddi_mso_configure(const struct intel_crtc_state *crtc_state)
 		     OVERLAP_PIXELS_MASK, dss1);
 }
 
+static u8 mtl_get_port_width(u8 lane_count)
+{
+	switch (lane_count) {
+	case 1:
+		return 0;
+	case 2:
+		return 1;
+	case 3:
+		return 4;
+	case 4:
+		return 3;
+	default:
+		MISSING_CASE(lane_count);
+		return 4;
+	}
+}
+
+static void
+mtl_ddi_enable_d2d(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
+
+	intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port), 0,
+		     XELPDP_PORT_BUF_D2D_LINK_ENABLE);
+
+	if (wait_for_us((intel_de_read(dev_priv, XELPDP_PORT_BUF_CTL1(port)) &
+			 XELPDP_PORT_BUF_D2D_LINK_STATE), 100)) {
+		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link enable for PORT_BUF_CTL %c\n",
+			port_name(port));
+	}
+}
+
+static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
+				     const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	enum port port = encoder->port;
+	u32 val;
+
+	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
+	val &= ~XELPDP_PORT_WIDTH_MASK;
+	val |= XELPDP_PORT_WIDTH(mtl_get_port_width(crtc_state->lane_count));
+
+	val &= ~XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK;
+	if (intel_dp_is_uhbr(crtc_state))
+		val |= XELPDP_PORT_BUF_PORT_DATA_40BIT;
+	else
+		val |= XELPDP_PORT_BUF_PORT_DATA_10BIT;
+
+	if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
+		val |= XELPDP_PORT_REVERSAL;
+
+	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
+}
+
+static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	u32 val;
+
+	val = intel_tc_port_in_tbt_alt_mode(dig_port) ?
+	      XELPDP_PORT_BUF_IO_SELECT_TBT : 0;
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(encoder->port),
+		     XELPDP_PORT_BUF_IO_SELECT_TBT, val);
+}
+
+static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
+				  struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state,
+				  const struct drm_connector_state *conn_state)
+{
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
+
+	intel_dp_set_link_params(intel_dp,
+				 crtc_state->port_clock,
+				 crtc_state->lane_count);
+
+	/*
+	 * We only configure what the register value will be here.  Actual
+	 * enabling happens during link training farther down.
+	 */
+	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
+
+	/*
+	 * 1. Enable Power Wells
+	 *
+	 * This was handled at the beginning of intel_atomic_commit_tail(),
+	 * before we called down into this function.
+	 */
+
+	/* 2. PMdemand was already set */
+
+	/* 3. Select Thunderbolt */
+	mtl_port_buf_ctl_io_selection(encoder);
+
+	/* 4. Enable Panel Power if PPS is required */
+	intel_pps_on(intel_dp);
+
+	/* 5. Enable the port PLL */
+	intel_ddi_enable_clock(encoder, crtc_state);
+
+	/*
+	 * 6.a Configure Transcoder Clock Select to direct the Port clock to the
+	 * Transcoder.
+	 */
+	intel_ddi_enable_transcoder_clock(encoder, crtc_state);
+
+	/*
+	 * 6.b If DP v2.0/128b mode - Configure TRANS_DP2_CTL register settings.
+	 */
+	intel_ddi_config_transcoder_dp2(encoder, crtc_state);
+
+	/*
+	 * 6.c Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
+	 * Transport Select
+	 */
+	intel_ddi_config_transcoder_func(encoder, crtc_state);
+
+	/*
+	 * 6.e Program CoG/MSO configuration bits in DSS_CTL1 if selected.
+	 */
+	intel_ddi_mso_configure(crtc_state);
+
+	if (!is_mst)
+		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
+
+	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
+	intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
+	/*
+	 * DDI FEC: "anticipates enabling FEC encoding sets the FEC_READY bit
+	 * in the FEC_CONFIGURATION register to 1 before initiating link
+	 * training
+	 */
+	intel_dp_sink_set_fec_ready(intel_dp, crtc_state);
+
+	intel_dp_check_frl_training(intel_dp);
+	intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
+
+	/*
+	 * 6. The rest of the below are substeps under the bspec's "Enable and
+	 * Train Display Port" step.  Note that steps that are specific to
+	 * MST will be handled by intel_mst_pre_enable_dp() before/after it
+	 * calls into this function.  Also intel_mst_pre_enable_dp() only calls
+	 * us when active_mst_links==0, so any steps designated for "single
+	 * stream or multi-stream master transcoder" can just be performed
+	 * unconditionally here.
+	 *
+	 * mtl_ddi_prepare_link_retrain() that is called by
+	 * intel_dp_start_link_train() will execute steps: 6.d, 6.f, 6.g, 6.h,
+	 * 6.i and 6.j
+	 *
+	 * 6.k Follow DisplayPort specification training sequence (see notes for
+	 *     failure handling)
+	 * 6.m If DisplayPort multi-stream - Set DP_TP_CTL link training to Idle
+	 *     Pattern, wait for 5 idle patterns (DP_TP_STATUS Min_Idles_Sent)
+	 *     (timeout after 800 us)
+	 */
+	intel_dp_start_link_train(intel_dp, crtc_state);
+
+	/* 6.n Set DP_TP_CTL link training to Normal */
+	if (!is_trans_port_sync_mode(crtc_state))
+		intel_dp_stop_link_train(intel_dp, crtc_state);
+
+	/* 6.o Configure and enable FEC if needed */
+	intel_ddi_enable_fec(encoder, crtc_state);
+
+	intel_dsc_dp_pps_write(encoder, crtc_state);
+}
+
 static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 				  struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state,
@@ -2523,7 +2722,9 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
 		intel_dp_128b132b_sdp_crc16(enc_to_intel_dp(encoder),
 					    crtc_state);
 
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 14)
+		mtl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
+	else if (DISPLAY_VER(dev_priv) >= 12)
 		tgl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
 	else
 		hsw_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
@@ -2604,8 +2805,51 @@ static void intel_ddi_pre_enable(struct intel_atomic_state *state,
 	}
 }
 
-static void intel_disable_ddi_buf(struct intel_encoder *encoder,
-				  const struct intel_crtc_state *crtc_state)
+static void
+mtl_ddi_disable_d2d_link(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
+
+	intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port),
+		     XELPDP_PORT_BUF_D2D_LINK_ENABLE, 0);
+
+	if (wait_for_us(!(intel_de_read(dev_priv, XELPDP_PORT_BUF_CTL1(port)) &
+			  XELPDP_PORT_BUF_D2D_LINK_STATE), 100))
+		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link disable for PORT_BUF_CTL %c\n",
+			port_name(port));
+}
+
+static void mtl_disable_ddi_buf(struct intel_encoder *encoder,
+				const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
+	u32 val;
+
+	/* 3.b Clear DDI_CTL_DE Enable to 0. */
+	val = intel_de_read(dev_priv, DDI_BUF_CTL(port));
+	if (val & DDI_BUF_CTL_ENABLE) {
+		val &= ~DDI_BUF_CTL_ENABLE;
+		intel_de_write(dev_priv, DDI_BUF_CTL(port), val);
+
+		/* 3.c Poll for PORT_BUF_CTL Idle Status == 1, timeout after 100us */
+		mtl_wait_ddi_buf_idle(dev_priv, port);
+	}
+
+	/* 3.d Disable D2D Link */
+	mtl_ddi_disable_d2d_link(encoder);
+
+	/* 3.e Disable DP_TP_CTL */
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		val = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
+		val &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
+		intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
+	}
+}
+
+static void disable_ddi_buf(struct intel_encoder *encoder,
+			    const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
@@ -2630,6 +2874,21 @@ static void intel_disable_ddi_buf(struct intel_encoder *encoder,
 		intel_wait_ddi_buf_idle(dev_priv, port);
 }
 
+static void intel_disable_ddi_buf(struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		mtl_disable_ddi_buf(encoder, crtc_state);
+
+		/* 3.f Disable DP_TP_CTL FEC Enable if it is needed */
+		intel_ddi_disable_fec_state(encoder, crtc_state);
+	} else {
+		disable_ddi_buf(encoder, crtc_state);
+	}
+}
+
 static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 				      struct intel_encoder *encoder,
 				      const struct intel_crtc_state *old_crtc_state,
@@ -2638,6 +2897,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_dp *intel_dp = &dig_port->dp;
+	intel_wakeref_t wakeref;
 	bool is_mst = intel_crtc_has_type(old_crtc_state,
 					  INTEL_OUTPUT_DP_MST);
 
@@ -2677,12 +2937,19 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	intel_pps_vdd_on(intel_dp);
 	intel_pps_off(intel_dp);
 
-	if (!intel_tc_port_in_tbt_alt_mode(dig_port))
+	wakeref = fetch_and_zero(&dig_port->ddi_io_wakeref);
+
+	if (wakeref)
 		intel_display_power_put(dev_priv,
 					dig_port->ddi_io_power_domain,
-					fetch_and_zero(&dig_port->ddi_io_wakeref));
+					wakeref);
 
 	intel_ddi_disable_clock(encoder);
+
+	/* De-select Thunderbolt */
+	if (DISPLAY_VER(dev_priv) >= 14)
+		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(encoder->port),
+			     XELPDP_PORT_BUF_IO_SELECT_TBT, 0);
 }
 
 static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
@@ -2693,6 +2960,7 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
+	intel_wakeref_t wakeref;
 
 	dig_port->set_infoframes(encoder, false,
 				 old_crtc_state, old_conn_state);
@@ -2705,9 +2973,11 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) >= 12)
 		intel_ddi_disable_transcoder_clock(old_crtc_state);
 
-	intel_display_power_put(dev_priv,
-				dig_port->ddi_io_power_domain,
-				fetch_and_zero(&dig_port->ddi_io_wakeref));
+	wakeref = fetch_and_zero(&dig_port->ddi_io_wakeref);
+	if (wakeref)
+		intel_display_power_put(dev_priv,
+					dig_port->ddi_io_power_domain,
+					wakeref);
 
 	intel_ddi_disable_clock(encoder);
 
@@ -3104,6 +3374,53 @@ static void adlp_tbt_to_dp_alt_switch_wa(struct intel_encoder *encoder)
 		intel_dkl_phy_rmw(i915, DKL_PCS_DW5(tc_port, ln), DKL_PCS_DW5_CORE_SOFTRESET, 0);
 }
 
+static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
+					 const struct intel_crtc_state *crtc_state)
+{
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct intel_encoder *encoder = &dig_port->base;
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
+	u32 dp_tp_ctl;
+
+	/*
+	 * TODO: To train with only a different voltage swing entry is not
+	 * necessary disable and enable port
+	 */
+	dp_tp_ctl = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
+	if (dp_tp_ctl & DP_TP_CTL_ENABLE)
+		mtl_disable_ddi_buf(encoder, crtc_state);
+
+	/* 6.d Configure and enable DP_TP_CTL with link training pattern 1 selected */
+	dp_tp_ctl = DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1;
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
+		dp_tp_ctl |= DP_TP_CTL_MODE_MST;
+	} else {
+		dp_tp_ctl |= DP_TP_CTL_MODE_SST;
+		if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
+			dp_tp_ctl |= DP_TP_CTL_ENHANCED_FRAME_ENABLE;
+	}
+	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
+	intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
+
+	/* 6.f Enable D2D Link */
+	mtl_ddi_enable_d2d(encoder);
+
+	/* 6.g Configure voltage swing and related IO settings */
+	encoder->set_signal_levels(encoder, crtc_state);
+
+	/* 6.h Configure PORT_BUF_CTL1 */
+	mtl_port_buf_ctl_program(encoder, crtc_state);
+
+	/* 6.i Configure and enable DDI_CTL_DE to start sending valid data to port slice */
+	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
+	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
+	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
+
+	/* 6.j Poll for PORT_BUF_CTL Idle Status == 0, timeout after 100 us */
+	intel_wait_ddi_buf_active(dev_priv, port);
+}
+
 static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 					   const struct intel_crtc_state *crtc_state)
 {
@@ -3871,6 +4188,7 @@ static const struct drm_encoder_funcs intel_ddi_funcs = {
 static struct intel_connector *
 intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 {
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_connector *connector;
 	enum port port = dig_port->base.port;
 
@@ -3879,7 +4197,10 @@ intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 		return NULL;
 
 	dig_port->dp.output_reg = DDI_BUF_CTL(port);
-	dig_port->dp.prepare_link_retrain = intel_ddi_prepare_link_retrain;
+	if (DISPLAY_VER(i915) >= 14)
+		dig_port->dp.prepare_link_retrain = mtl_ddi_prepare_link_retrain;
+	else
+		dig_port->dp.prepare_link_retrain = intel_ddi_prepare_link_retrain;
 	dig_port->dp.set_link_train = intel_ddi_set_link_train;
 	dig_port->dp.set_idle_link_train = intel_ddi_set_idle_link_train;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b4962bef8d03..d917353d4161 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5655,11 +5655,16 @@ enum skl_power_gate {
 /* DDI Buffer Control */
 #define _DDI_BUF_CTL_A				0x64000
 #define _DDI_BUF_CTL_B				0x64100
+/* Known as DDI_CTL_DE in MTL+ */
 #define DDI_BUF_CTL(port) _MMIO_PORT(port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B)
 #define  DDI_BUF_CTL_ENABLE			(1 << 31)
 #define  DDI_BUF_TRANS_SELECT(n)	((n) << 24)
 #define  DDI_BUF_EMP_MASK			(0xf << 24)
 #define  DDI_BUF_PHY_LINK_RATE(r)		((r) << 20)
+#define  DDI_BUF_PORT_DATA_MASK			REG_GENMASK(19, 18)
+#define  DDI_BUF_PORT_DATA_10BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 0)
+#define  DDI_BUF_PORT_DATA_20BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 1)
+#define  DDI_BUF_PORT_DATA_40BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 2)
 #define  DDI_BUF_PORT_REVERSAL			(1 << 16)
 #define  DDI_BUF_IS_IDLE			(1 << 7)
 #define  DDI_BUF_CTL_TC_PHY_OWNERSHIP		REG_BIT(6)
-- 
2.34.1

