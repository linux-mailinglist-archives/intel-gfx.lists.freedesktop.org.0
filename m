Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 789483C7CA3
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 05:16:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33E586E194;
	Wed, 14 Jul 2021 03:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6FEF6E15C
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 03:16:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="232085881"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="232085881"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:16:00 -0700
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="494031598"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 20:15:34 -0700
Message-Id: <20210714031540.3539704-45-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210714031540.3539704-1-matthew.d.roper@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 44/50] drm/i915/dg2: Update modeset sequences
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DG2 has some changes to the expected modesetting sequences when compared
to gen12.  Adjust our driver logic accordingly.  Although the DP
sequence is pretty similar to TGL's, there are some steps that change,
so let's split the handling for that out into a separate function.

v2:
 - Switch wait_for_us() -> _wait_for() so that we can parameterize the
   timeout rather than duplicating the macro call.  (Jani)

Bspec: 54128
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 131 +++++++++++++++++++++--
 1 file changed, 123 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ade03cf41caa..f96dd8dde61e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -172,14 +172,18 @@ void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
 static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
 				      enum port port)
 {
+	int ret;
+
 	/* Wait > 518 usecs for DDI_BUF_CTL to be non idle */
 	if (DISPLAY_VER(dev_priv) < 10) {
 		usleep_range(518, 1000);
 		return;
 	}
 
-	if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
-			  DDI_BUF_IS_IDLE), 500))
+	ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
+			  DDI_BUF_IS_IDLE), IS_DG2(dev_priv) ? 1200 : 500, 10, 10);
+
+	if (ret)
 		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get active\n",
 			port_name(port));
 }
@@ -2207,7 +2211,7 @@ void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
 		ddi_clk_needed = false;
 	}
 
-	if (ddi_clk_needed || !encoder->disable_clock ||
+	if (ddi_clk_needed || !encoder->is_clock_enabled ||
 	    !encoder->is_clock_enabled(encoder))
 		return;
 
@@ -2488,6 +2492,116 @@ static void intel_ddi_mso_configure(const struct intel_crtc_state *crtc_state)
 		     OVERLAP_PIXELS_MASK, dss1);
 }
 
+static void dg2_ddi_pre_enable_dp(struct intel_atomic_state *state,
+				  struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state,
+				  const struct drm_connector_state *conn_state)
+{
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
+	int level = intel_ddi_dp_level(intel_dp);
+
+	intel_dp_set_link_params(intel_dp, crtc_state->port_clock,
+				 crtc_state->lane_count);
+
+	/*
+	 * 1. Enable Power Wells
+	 *
+	 * This was handled at the beginning of intel_atomic_commit_tail(),
+	 * before we called down into this function.
+	 */
+
+	/* 2. Enable Panel Power if PPS is required */
+	intel_pps_on(intel_dp);
+
+	/*
+	 * 3. Enable the port PLL.
+	 */
+	intel_ddi_enable_clock(encoder, crtc_state);
+
+	/* 4. Enable IO power */
+	if (!intel_phy_is_tc(dev_priv, phy) ||
+	    dig_port->tc_mode != TC_PORT_TBT_ALT)
+		dig_port->ddi_io_wakeref = intel_display_power_get(dev_priv,
+								   dig_port->ddi_io_power_domain);
+
+	/*
+	 * 5. The rest of the below are substeps under the bspec's "Enable and
+	 * Train Display Port" step.  Note that steps that are specific to
+	 * MST will be handled by intel_mst_pre_enable_dp() before/after it
+	 * calls into this function.  Also intel_mst_pre_enable_dp() only calls
+	 * us when active_mst_links==0, so any steps designated for "single
+	 * stream or multi-stream master transcoder" can just be performed
+	 * unconditionally here.
+	 */
+
+	/*
+	 * 5.a Configure Transcoder Clock Select to direct the Port clock to the
+	 * Transcoder.
+	 */
+	intel_ddi_enable_pipe_clock(encoder, crtc_state);
+
+	/* 5.b Not relevant to i915 for now */
+
+	/*
+	 * 5.c Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
+	 * Transport Select
+	 */
+	intel_ddi_config_transcoder_func(encoder, crtc_state);
+
+	/*
+	 * 5.d Configure & enable DP_TP_CTL with link training pattern 1
+	 * selected
+	 *
+	 * This will be handled by the intel_dp_start_link_train() farther
+	 * down this function.
+	 */
+
+	/* 5.e Configure voltage swing and related IO settings */
+	intel_snps_phy_ddi_vswing_sequence(encoder, level);
+
+	/*
+	 * 5.f Configure and enable DDI_BUF_CTL
+	 * 5.g Wait for DDI_BUF_CTL DDI Idle Status = 0b (Not Idle), timeout
+	 *     after 1200 us.
+	 *
+	 * We only configure what the register value will be here.  Actual
+	 * enabling happens during link training farther down.
+	 */
+	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
+
+	if (!is_mst)
+		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
+
+	intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
+	/*
+	 * DDI FEC: "anticipates enabling FEC encoding sets the FEC_READY bit
+	 * in the FEC_CONFIGURATION register to 1 before initiating link
+	 * training
+	 */
+	intel_dp_sink_set_fec_ready(intel_dp, crtc_state);
+
+	/*
+	 * 5.h Follow DisplayPort specification training sequence (see notes for
+	 *     failure handling)
+	 * 5.i If DisplayPort multi-stream - Set DP_TP_CTL link training to Idle
+	 *     Pattern, wait for 5 idle patterns (DP_TP_STATUS Min_Idles_Sent)
+	 *     (timeout after 800 us)
+	 */
+	intel_dp_start_link_train(intel_dp, crtc_state);
+
+	/* 5.j Set DP_TP_CTL link training to Normal */
+	if (!is_trans_port_sync_mode(crtc_state))
+		intel_dp_stop_link_train(intel_dp, crtc_state);
+
+	/* 5.k Configure and enable FEC if needed */
+	intel_ddi_enable_fec(encoder, crtc_state);
+	intel_dsc_enable(encoder, crtc_state);
+}
+
 static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 				  struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state,
@@ -2573,10 +2687,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 */
 
 	/* 7.e Configure voltage swing and related IO settings */
-	if (IS_DG2(dev_priv))
-		intel_snps_phy_ddi_vswing_sequence(encoder, level);
-	else
-		tgl_ddi_vswing_sequence(encoder, crtc_state, level);
+	tgl_ddi_vswing_sequence(encoder, crtc_state, level);
 
 	/*
 	 * 7.f Combo PHY: Configure PORT_CL_DW10 Static Power Down to power up
@@ -2708,7 +2819,9 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (IS_DG2(dev_priv))
+		dg2_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
+	else if (DISPLAY_VER(dev_priv) >= 12)
 		tgl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
 	else
 		hsw_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
@@ -4634,6 +4747,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	encoder->pipe_mask = ~0;
 
 	if (IS_DG2(dev_priv)) {
+		encoder->enable_clock = intel_mpllb_enable;
+		encoder->disable_clock = intel_mpllb_disable;
 		encoder->get_config = dg2_ddi_get_config;
 	} else if (IS_ALDERLAKE_S(dev_priv)) {
 		encoder->enable_clock = adls_ddi_enable_clock;
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
