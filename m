Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53BC14E3DFC
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 13:00:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3EBA10E55E;
	Tue, 22 Mar 2022 12:00:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E3A310E55E
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 12:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647950448; x=1679486448;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GHov+XifhfYir+jF00vzIn4KQ7nCqG+9uDTNn47tua0=;
 b=AnenjMiTzcqLaSLTYWdKeqfAnafkifnP62IaY2gj8K/9vWALTy+4dfv7
 PXCIn/+HscMbQxz9aE5kONyka26s6NNZs1NomL7Js6LBcFVo+0k0UyuEP
 C7O5AQI17VxuE1A789D5/2kpMvGOotOD789lQIW9xBckQtcjPDoqyDTbK
 M7vpqy2DbKCtt84SZ2OLlPONieXt0pTROYvOl+/FkrUEEIp6+C+g9Z3bA
 tuC0E12KAQbEXSNm27Ly1uKbBlPHWFDezCg5eIkn1DnQGJ5+Qg2cBdydV
 g8NNL0P8FlzcuIPo7PnNFPbbJTGaAZhmmJimJtNaih9ih0YVGl4b1hale Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="237740349"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="237740349"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 05:00:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="692522305"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga001.fm.intel.com with SMTP; 22 Mar 2022 05:00:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Mar 2022 14:00:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 14:00:13 +0200
Message-Id: <20220322120015.28074-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/12] drm/i915/dp: Duplicate native HDMI
 TMDS clock limit handling for DP HDMI DFPs
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

With native HDMI we allow the user to override the mode with
something that may not respect the downstream (sink,dual-mode adapter)
TMDS clock limits. Let's reuse the same logic for DP HDMI DFPs
so that behaviour is more or less uniform.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 51 ++++++++++++++++++-------
 1 file changed, 38 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3dbb68fa4e51..053853a3054e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -870,10 +870,14 @@ static int intel_dp_max_tmds_clock(struct intel_dp *intel_dp)
 
 static enum drm_mode_status
 intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
-			  int clock, int bpc, bool ycbcr420_output)
+			  int clock, int bpc, bool ycbcr420_output,
+			  bool respect_downstream_limits)
 {
 	int tmds_clock, min_tmds_clock, max_tmds_clock;
 
+	if (!respect_downstream_limits)
+		return MODE_OK;
+
 	tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
 
 	min_tmds_clock = intel_dp->dfp.min_tmds_clock;
@@ -925,7 +929,7 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 
 	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
 	status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
-					   8, ycbcr_420_only);
+					   8, ycbcr_420_only, true);
 
 	if (status != MODE_OK) {
 		if (ycbcr_420_only ||
@@ -934,7 +938,7 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 			return status;
 
 		status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
-						   8, true);
+						   8, true, true);
 		if (status != MODE_OK)
 			return status;
 	}
@@ -1183,7 +1187,7 @@ static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
 
 static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
 				     const struct intel_crtc_state *crtc_state,
-				     int bpc)
+				     int bpc, bool respect_downstream_limits)
 {
 	bool ycbcr420_output = intel_dp_is_ycbcr420(intel_dp, crtc_state);
 	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
@@ -1195,10 +1199,19 @@ static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
 	 */
 	bpc = max(bpc, 8);
 
+	/*
+	 * We will never exceed downstream TMDS clock limits while
+	 * attempting deep color. If the user insists on forcing an
+	 * out of spec mode they will have to be satisfied with 8bpc.
+	 */
+	if (!respect_downstream_limits)
+		bpc = 8;
+
 	for (; bpc >= 8; bpc -= 2) {
 		if (intel_hdmi_bpc_possible(crtc_state, bpc,
 					    intel_dp->has_hdmi_sink, ycbcr420_output) &&
-		    intel_dp_tmds_clock_valid(intel_dp, clock, bpc, ycbcr420_output) == MODE_OK)
+		    intel_dp_tmds_clock_valid(intel_dp, clock, bpc, ycbcr420_output,
+					      respect_downstream_limits) == MODE_OK)
 			return bpc;
 	}
 
@@ -1206,7 +1219,8 @@ static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
 }
 
 static int intel_dp_max_bpp(struct intel_dp *intel_dp,
-			    const struct intel_crtc_state *crtc_state)
+			    const struct intel_crtc_state *crtc_state,
+			    bool respect_downstream_limits)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct intel_connector *intel_connector = intel_dp->attached_connector;
@@ -1220,7 +1234,8 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
 	if (intel_dp->dfp.min_tmds_clock) {
 		int max_hdmi_bpc;
 
-		max_hdmi_bpc = intel_dp_hdmi_compute_bpc(intel_dp, crtc_state, bpc);
+		max_hdmi_bpc = intel_dp_hdmi_compute_bpc(intel_dp, crtc_state, bpc,
+							 respect_downstream_limits);
 		if (max_hdmi_bpc < 0)
 			return 0;
 
@@ -1539,7 +1554,8 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 static int
 intel_dp_compute_link_config(struct intel_encoder *encoder,
 			     struct intel_crtc_state *pipe_config,
-			     struct drm_connector_state *conn_state)
+			     struct drm_connector_state *conn_state,
+			     bool respect_downstream_limits)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
@@ -1556,7 +1572,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	limits.max_lane_count = intel_dp_max_lane_count(intel_dp);
 
 	limits.min_bpp = intel_dp_min_bpp(pipe_config->output_format);
-	limits.max_bpp = intel_dp_max_bpp(intel_dp, pipe_config);
+	limits.max_bpp = intel_dp_max_bpp(intel_dp, pipe_config, respect_downstream_limits);
 
 	if (intel_dp->use_max_params) {
 		/*
@@ -1850,7 +1866,8 @@ static bool intel_dp_has_audio(struct intel_encoder *encoder,
 static int
 intel_dp_compute_output_format(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
-			       struct drm_connector_state *conn_state)
+			       struct drm_connector_state *conn_state,
+			       bool respect_downstream_limits)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -1870,7 +1887,8 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	}
 
-	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state);
+	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
+					   respect_downstream_limits);
 	if (ret) {
 		if (intel_dp_is_ycbcr420(intel_dp, crtc_state) ||
 		    !connector->base.ycbcr_420_allowed ||
@@ -1878,7 +1896,8 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 			return ret;
 
 		crtc_state->output_format = intel_dp_output_format(connector, true);
-		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state);
+		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
+						   respect_downstream_limits);
 	}
 
 	return ret;
@@ -1922,7 +1941,13 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (intel_dp_hdisplay_bad(dev_priv, adjusted_mode->crtc_hdisplay))
 		return -EINVAL;
 
-	ret = intel_dp_compute_output_format(encoder, pipe_config, conn_state);
+	/*
+	 * Try to respect downstream TMDS clock limits first, if
+	 * that fails assume the user might know something we don't.
+	 */
+	ret = intel_dp_compute_output_format(encoder, pipe_config, conn_state, true);
+	if (ret)
+		ret = intel_dp_compute_output_format(encoder, pipe_config, conn_state, false);
 	if (ret)
 		return ret;
 
-- 
2.34.1

