Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5894C633630
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 08:47:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE6A10E395;
	Tue, 22 Nov 2022 07:47:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 057DE10E38E
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 07:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669103172; x=1700639172;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JORb1UM2bFYI2Y1FD2ODC6VRR8SY7BYQ7ycKHbW6CzA=;
 b=PfT6tnaTgj/MqyIO93wGyNCCKGFL3IVjw+Lcsa26Yi4NmBxIE9yh2OBG
 MMkrNn8EhTMqjFEhRzzNbwDWyFkYc6/ayr1SmUT1Oc7+75YLFmVfrarFe
 LGOs2uZTqfyLnqimkhV2WOujG60SRvTKTlP+e/QW5bEYBdVwJeQ4gWZRN
 ZXS6Y1W6bLLcwnMN7j/1qAJmBC1XpoENb31tgYg3jEed8aG83IYJjf7x9
 mOtn4KjeExvIcRIX8kNuh5s/VQgnDLM48750A7gEe7xaDzmeOUq7JozzU
 dyzIThFGCt+86pAhBOhEbOD/7NET6meoBoF9WWB7pXVJAyJ5mX4EVspw9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="378015395"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="378015395"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 23:46:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="783756342"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="783756342"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 23:46:08 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Nov 2022 13:16:42 +0530
Message-Id: <20221122074644.2969553-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221122074644.2969553-1-ankit.k.nautiyal@intel.com>
References: <20221122074644.2969553-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 08/10] drm/i915/dp: Handle BPP where HDMI2.1
 DFP doesn't support DSC
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

Currently we use the highest input BPC supported by DP sink while using
DSC.In cases where PCON with HDMI2.1 as branch device, if PCON supports
DSC but HDMI2.1 sink does not supports DSC, The PCON tries to use same
input BPC that is used between Source and the PCON without DSC, which
might not work even with the maximum FRL rate supported by HDMI2.1
sink.

This patch calculates the max BPC that can be sufficient with either
RGB or YCBCR420 format for the maximum FRL rate supported.

v2: Rebase

v3: Use the sink_format in the functions instead of ycbcr420 flag.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 61 +++++++++++++++++++++++--
 1 file changed, 58 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a96f28d88673..b981a16b3a4c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -118,6 +118,7 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
 static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
+static bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp);
 
 /* Is link rate UHBR and thus 128b/132b? */
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
@@ -1552,12 +1553,47 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 	return drm_dsc_compute_rc_parameters(vdsc_cfg);
 }
 
+static int
+intel_dp_pcon_hdmi21_get_bpp_nodsc(struct intel_dp *intel_dp,
+				   struct intel_crtc_state *pipe_config,
+				   int max_bpc)
+{
+	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct drm_connector *connector = &intel_connector->base;
+	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
+	int i, num_bpc;
+	u8 dsc_bpc[3] = {0};
+	int req_rate_gbps;
+	int max_frl_rate = connector->display_info.hdmi.max_lanes *
+			   connector->display_info.hdmi.max_frl_rate_per_lane;
+
+	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
+						       dsc_bpc);
+	for (i = 0; i < num_bpc; i++) {
+		if (dsc_bpc[i] > max_bpc)
+			continue;
+
+		req_rate_gbps = DIV_ROUND_UP(dsc_bpc[i] * 3 * adjusted_mode->clock, 1000000);
+
+		/* YCBCR420 reduces data rate by 2 */
+		if (intel_crtc_has_420_sink_format(pipe_config))
+			req_rate_gbps /= 2;
+
+		if (req_rate_gbps < max_frl_rate)
+			return dsc_bpc[i] * 3;
+	}
+
+	return 0;
+}
+
 static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				       struct intel_crtc_state *pipe_config,
 				       struct drm_connector_state *conn_state,
 				       struct link_config_limits *limits)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct drm_connector *connector = &intel_connector->base;
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
@@ -1574,11 +1610,30 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
 		return -EINVAL;
 
-	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
-
-	if (intel_dp->force_dsc_bpc) {
+	/*
+	 * In cases where PCON with HDMI2.1 as branch device, if PCON supports
+	 * DSC but HDMI2.1 sink does not supports DSC, there can be issues due
+	 * to the bpc used.
+	 * With DSC, a source-PCON pair can support the mode with higher bpcs.
+	 * But PCON->Sink pair, cannot support the same bpc without sink having
+	 * DSC support.
+	 * So use the max BPC as input BPC that will be sufficient to show the
+	 * mode without DSC from PCON->HDMI2.1
+	 */
+	if (intel_dp_is_hdmi_2_1_sink(intel_dp) &&
+	    !connector->display_info.hdmi.dsc_cap.v_1p2) {
+		pipe_bpp = intel_dp_pcon_hdmi21_get_bpp_nodsc(intel_dp, pipe_config,
+							      conn_state->max_requested_bpc);
+		if (!pipe_bpp) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "No BPC possible to support the mode without HDMI2.1 DSC\n");
+			return -EINVAL;
+		}
+	} else if (intel_dp->force_dsc_bpc) {
 		pipe_bpp = intel_dp->force_dsc_bpc * 3;
 		drm_dbg_kms(&dev_priv->drm, "Input DSC BPP forced to %d", pipe_bpp);
+	} else {
+		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
 	}
 
 	/* Min Input BPC for ICL+ is 8 */
-- 
2.25.1

