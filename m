Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5B9493A31
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 13:21:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEE6A10F0A1;
	Wed, 19 Jan 2022 12:21:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09E2A10F09E
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jan 2022 12:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642594914; x=1674130914;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jXKn9Zkfv89WpHm+VSwUrZk4nF8TtAiwTOwGKQjwAhw=;
 b=TXLAMzrbVvlr8OewZvxvtE3ww46IUn/n/o8dEmhsMARdfLxOskeCkwrO
 w16pYJYPWtmf5zz/bWZje9x3naqycWYEx/FcVZW6iL+W1tKbu/l2S+xr/
 KEz2Tdd1MdG0LKv9liKJkipqpns8/visI4lKLvjnIBU0/TCQcVrJDJHeM
 uYBhw1zAs7aWhQMBEolFkiohbgtrBWF/OkyvLrFYPc3cSJK6YjbstGLhC
 0D4DU1R0kvN0bG+AqO9DsyUWUq4i2khuY0hPNV4J2bwk6Ub3fTZ0f68qr
 /d/gclgg/snbEbc892jxWLd7OdHToQQzkTD8AJmobOv19Y3DpjrMGnenA w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="225726895"
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="225726895"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 04:21:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="561023298"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga001.jf.intel.com with SMTP; 19 Jan 2022 04:21:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Jan 2022 14:21:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jan 2022 14:21:50 +0200
Message-Id: <20220119122150.12941-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Nuke dg2_ddi_pre_enable_dp()
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

dg2_ddi_pre_enable_dp() has outlived its usefulness so eliminate
it.

The one thing that tgl_ddi_pre_enable_dp() is missing that we
need is intel_ddi_config_transcoder_dp2(). So we'll bring that
over.

tgl_ddi_pre_enable_dp() does also have a few things that
dg2_ddi_pre_enable_dp() didn't have:
- icl_program_mg_dp_mode() -> nop due to intel_phy_is_tc()==false on DG2
- intel_ddi_power_up_lanes() -> nop due to intel_phy_is_combo()==false on DG2
- intel_ddi_mso_configure() -> only matters for MSO panels

Another slight difference is that dg2_ddi_pre_enable_dp() was
missing a bigjoiner check around intel_dsc_enable(), which
tgl_ddi_pre_enable_dp() does have.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 117 +----------------------
 1 file changed, 4 insertions(+), 113 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4e93eac926a5..2f20abc5122d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2289,116 +2289,6 @@ static void intel_ddi_mso_configure(const struct intel_crtc_state *crtc_state)
 		     OVERLAP_PIXELS_MASK, dss1);
 }
 
-static void dg2_ddi_pre_enable_dp(struct intel_atomic_state *state,
-				  struct intel_encoder *encoder,
-				  const struct intel_crtc_state *crtc_state,
-				  const struct drm_connector_state *conn_state)
-{
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
-
-	intel_dp_set_link_params(intel_dp, crtc_state->port_clock,
-				 crtc_state->lane_count);
-
-	/*
-	 * We only configure what the register value will be here.  Actual
-	 * enabling happens during link training farther down.
-	 */
-	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
-
-	/*
-	 * 1. Enable Power Wells
-	 *
-	 * This was handled at the beginning of intel_atomic_commit_tail(),
-	 * before we called down into this function.
-	 */
-
-	/* 2. Enable Panel Power if PPS is required */
-	intel_pps_on(intel_dp);
-
-	/*
-	 * 3. Enable the port PLL.
-	 */
-	intel_ddi_enable_clock(encoder, crtc_state);
-
-	/* 4. Enable IO power */
-	if (!intel_tc_port_in_tbt_alt_mode(dig_port))
-		dig_port->ddi_io_wakeref = intel_display_power_get(dev_priv,
-								   dig_port->ddi_io_power_domain);
-
-	/*
-	 * 5. The rest of the below are substeps under the bspec's "Enable and
-	 * Train Display Port" step.  Note that steps that are specific to
-	 * MST will be handled by intel_mst_pre_enable_dp() before/after it
-	 * calls into this function.  Also intel_mst_pre_enable_dp() only calls
-	 * us when active_mst_links==0, so any steps designated for "single
-	 * stream or multi-stream master transcoder" can just be performed
-	 * unconditionally here.
-	 */
-
-	/*
-	 * 5.a Configure Transcoder Clock Select to direct the Port clock to the
-	 * Transcoder.
-	 */
-	intel_ddi_enable_pipe_clock(encoder, crtc_state);
-
-	/* 5.b Configure transcoder for DP 2.0 128b/132b */
-	intel_ddi_config_transcoder_dp2(encoder, crtc_state);
-
-	/*
-	 * 5.c Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
-	 * Transport Select
-	 */
-	intel_ddi_config_transcoder_func(encoder, crtc_state);
-
-	/*
-	 * 5.d Configure & enable DP_TP_CTL with link training pattern 1
-	 * selected
-	 *
-	 * This will be handled by the intel_dp_start_link_train() farther
-	 * down this function.
-	 */
-
-	/* 5.e Configure voltage swing and related IO settings */
-	encoder->set_signal_levels(encoder, crtc_state);
-
-	if (!is_mst)
-		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
-
-	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
-	intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
-	/*
-	 * DDI FEC: "anticipates enabling FEC encoding sets the FEC_READY bit
-	 * in the FEC_CONFIGURATION register to 1 before initiating link
-	 * training
-	 */
-	intel_dp_sink_set_fec_ready(intel_dp, crtc_state);
-	intel_dp_check_frl_training(intel_dp);
-	intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
-
-	/*
-	 * 5.h Follow DisplayPort specification training sequence (see notes for
-	 *     failure handling)
-	 * 5.i If DisplayPort multi-stream - Set DP_TP_CTL link training to Idle
-	 *     Pattern, wait for 5 idle patterns (DP_TP_STATUS Min_Idles_Sent)
-	 *     (timeout after 800 us)
-	 */
-	intel_dp_start_link_train(intel_dp, crtc_state);
-
-	/* 5.j Set DP_TP_CTL link training to Normal */
-	if (!is_trans_port_sync_mode(crtc_state))
-		intel_dp_stop_link_train(intel_dp, crtc_state);
-
-	/* 5.k Configure and enable FEC if needed */
-	intel_ddi_enable_fec(encoder, crtc_state);
-
-	intel_dsc_dp_pps_write(encoder, crtc_state);
-
-	intel_dsc_enable(crtc_state);
-}
-
 static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 				  struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state,
@@ -2472,6 +2362,9 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 */
 	intel_ddi_enable_pipe_clock(encoder, crtc_state);
 
+	if (HAS_DP20(dev_priv))
+		intel_ddi_config_transcoder_dp2(encoder, crtc_state);
+
 	/*
 	 * 7.b Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
 	 * Transport Select
@@ -2612,9 +2505,7 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	if (IS_DG2(dev_priv))
-		dg2_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
-	else if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 12)
 		tgl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
 	else
 		hsw_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
-- 
2.32.0

