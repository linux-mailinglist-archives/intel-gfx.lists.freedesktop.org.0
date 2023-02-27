Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1034C6A39FC
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 05:06:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64C1910E1AA;
	Mon, 27 Feb 2023 04:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 759C610E195
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 04:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677470777; x=1709006777;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ia0Y26fuFaDdTPjS/CJTlg9N0Qy2mQ7b359Wx9sbZq0=;
 b=FILMS7aJi76Ma6otBPEJDjSSt6EA2y5oWxgEsxW5DR8Wz4BgFr9efhsP
 VE0cazeacMOFZIkXiyPLFTE81CN8/pQVpTRquzLN6KrgpSWnscrOnMu7Y
 jrJeLWuYs40Yqw/qkYIlLBtcqYvKjVLJPt7XjA0Plgiw5LKKp+eoUVRaR
 NaRODxkTVynZr1zoC85y56y7VOQ0brPzvdmoVCEcjff4iKUT2XttYCM+K
 wJVaOmY69RQ3l4pD1oBH1wBnpSgFQ8/m3kRA/0tigSkCsRudQ587KzqbR
 iNELCCn9wfletoVRxHqPHCxKg0Mv4PVIG+7WmED4A2NYlsQAwyufk1K00 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="335251405"
X-IronPort-AV: E=Sophos;i="5.97,330,1669104000"; d="scan'208";a="335251405"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2023 20:06:17 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="783147029"
X-IronPort-AV: E=Sophos;i="5.97,330,1669104000"; d="scan'208";a="783147029"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2023 20:06:15 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Feb 2023 09:33:22 +0530
Message-Id: <20230227040324.130811-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230227040324.130811-1-ankit.k.nautiyal@intel.com>
References: <20230227040324.130811-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 11/13] drm/i915/dp: Handle BPP where HDMI2.1
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

v4: Rebase

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 61 +++++++++++++++++++++++--
 1 file changed, 58 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2b4b6849397a..6f2f3e02c35f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -116,6 +116,7 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 	return dig_port->base.type == INTEL_OUTPUT_EDP;
 }
 
+static bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp);
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
 
 /* Is link rate UHBR and thus 128b/132b? */
@@ -1620,6 +1621,39 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
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
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
@@ -1628,6 +1662,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				bool compute_pipe_bpp)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct drm_connector *connector = &intel_connector->base;
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
@@ -1644,12 +1680,31 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
 		return -EINVAL;
 
-	if (compute_pipe_bpp)
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
+	} else if (compute_pipe_bpp) {
 		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, pipe_config->output_format,
 						    conn_state->max_requested_bpc);
-	else
+	} else {
 		pipe_bpp = pipe_config->pipe_bpp;
-
+	}
 	if (intel_dp->force_dsc_bpc) {
 		pipe_bpp = intel_dp->force_dsc_bpc * 3;
 		drm_dbg_kms(&dev_priv->drm, "Input DSC BPP forced to %d", pipe_bpp);
-- 
2.25.1

