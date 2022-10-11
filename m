Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E69E5FACE1
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 08:35:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D61F710E7BD;
	Tue, 11 Oct 2022 06:34:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 248B110E7B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 06:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665470089; x=1697006089;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AamGp+lxnWHfLq5/gm4Sb31umyG0ELhSn8qJ0a0LDEE=;
 b=OA5LVpg0XmQXub3LaJKIDSxIXJ8v1RKdkyUAYHqhKv/owFRCLBVNZDRB
 f4GiaP00abqZ4HcYGCfD5b63tsZlAQGPGlW8d8rgzy8Y94ABYbHmugwyG
 u84988YmasPc2QbyCTRM8mu1nYjy8vLJqKIZxz74rLO1yN3zanlvR03nx
 B7bwjImauwhFNZmQUAr1PsPIc8ZAzRKNjvnS1pK6kJA+cJwqCGnldYp9v
 LHU7PnpqnB/FVyzwJxKrgJgdxGCf5j97x5nr8MMlXLWwj4hNqFbo5Irpl
 KrC1lTetk8+CrrJmreVxpyR2mt1c9VhT1wPRct3PMkXcYJoxV/OnD717o A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="302031872"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="302031872"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 23:34:48 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="768680374"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="768680374"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 23:34:46 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 12:04:46 +0530
Message-Id: <20221011063447.904649-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
References: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 7/8] drm/i915/dp: Handle BPP where HDMI2.1
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

v3: Set sink_format to YCBCR420 as appropriate.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 92 ++++++++++++++++++++++++-
 1 file changed, 89 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index adf9bc8ec820..af985c91f692 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -117,6 +117,7 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
 static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
+static bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp);
 
 /* Is link rate UHBR and thus 128b/132b? */
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
@@ -1466,12 +1467,80 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 	return drm_dsc_compute_rc_parameters(vdsc_cfg);
 }
 
+static int
+_intel_dp_pcon_hdmi21_get_bpp_nodsc(struct intel_dp *intel_dp,
+				    const struct drm_display_mode *adjusted_mode,
+				    int max_bpc, bool is_ycbcr420)
+{
+	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct drm_connector *connector = &intel_connector->base;
+	int i, num_bpc;
+	u8 dsc_bpc[3] = {0};
+	int req_rate_gbps;
+	int max_frl_rate = connector->display_info.hdmi.max_lanes *
+			   connector->display_info.hdmi.max_frl_rate_per_lane;
+
+	/*
+	 * Currently DSC with Ycbcr420 is not supported. So for modes with Ycbcr420,
+	 * DSC will use RGB and support for RGB->YCBCR444->YCBCR420 conversion is
+	 * required from DP HDMI2.1 PCON.
+	 */
+	if (is_ycbcr420 && !(intel_dp->dfp.rgb_to_ycbcr || intel_dp->dfp.ycbcr_444_to_420))
+		return 0;
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
+		if (is_ycbcr420)
+			req_rate_gbps /= 2;
+
+		if (req_rate_gbps < max_frl_rate)
+			return dsc_bpc[i] * 3;
+	}
+
+	return 0;
+}
+
+static int
+intel_dp_pcon_hdmi21_get_bpp_nodsc(struct intel_dp *intel_dp,
+				   struct intel_crtc_state *pipe_config,
+				   int max_bpc)
+{
+	const struct drm_display_mode *adjusted_mode =
+		&pipe_config->hw.adjusted_mode;
+	struct intel_connector *connector = intel_dp->attached_connector;
+	const struct drm_display_info *info = &connector->base.display_info;
+	bool is_ycbcr420 = drm_mode_is_420_only(info, adjusted_mode);
+	int pipe_bpp;
+
+	pipe_bpp = _intel_dp_pcon_hdmi21_get_bpp_nodsc(intel_dp, adjusted_mode,
+						       max_bpc, is_ycbcr420);
+	if (!pipe_bpp && !is_ycbcr420 && drm_mode_is_420_also(info, adjusted_mode)) {
+		is_ycbcr420 = true;
+		pipe_bpp = _intel_dp_pcon_hdmi21_get_bpp_nodsc(intel_dp, adjusted_mode,
+							       max_bpc, is_ycbcr420);
+	}
+
+	if (pipe_bpp && is_ycbcr420)
+		pipe_config->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+
+	return pipe_bpp;
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
@@ -1484,11 +1553,28 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
 		return -EINVAL;
 
-	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
-
-	if (intel_dp->force_dsc_bpc) {
+	/*
+	 * In cases where PCON with HDMI2.1 as branch device, if PCON supports
+	 * DSC but HDMI2.1 sink does not supports DSC, The PCON tries to use same
+	 * input DSC bpc that is used between Source and PCON with Ycbcr420
+	 * format.
+	 * So use the max BPC that will be sufficient to show the mode in YCbcr420
+	 * without DSC from PCON->HDMI2.1
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

