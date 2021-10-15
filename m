Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C6442F3FD
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 15:40:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4D266EDBB;
	Fri, 15 Oct 2021 13:40:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C84F6EDBB
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 13:40:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="214848493"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="214848493"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 06:40:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="564290484"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 15 Oct 2021 06:40:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 16:40:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Oct 2021 16:39:19 +0300
Message-Id: <20211015133921.4609-19-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/20] drm/i915/dp: Duplicate native HDMI TMDS
 clock limit handling for DP HDMI DFPs
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
index 2fa3e3013978..dfd3ab385b0f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -795,10 +795,14 @@ static int intel_dp_max_tmds_clock(struct intel_dp *intel_dp)
 
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
@@ -850,7 +854,7 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 
 	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
 	status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
-					   8, ycbcr_420_only);
+					   8, ycbcr_420_only, true);
 
 	if (status != MODE_OK) {
 		if (ycbcr_420_only ||
@@ -859,7 +863,7 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 			return status;
 
 		status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
-						   8, true);
+						   8, true, true);
 		if (status != MODE_OK)
 			return status;
 	}
@@ -1110,7 +1114,7 @@ static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
 
 static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
 				     const struct intel_crtc_state *crtc_state,
-				     int bpc)
+				     int bpc, bool respect_downstream_limits)
 {
 	bool ycbcr420_output = intel_dp_is_ycbcr420(intel_dp, crtc_state);
 	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
@@ -1122,10 +1126,19 @@ static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
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
 
@@ -1133,7 +1146,8 @@ static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
 }
 
 static int intel_dp_max_bpp(struct intel_dp *intel_dp,
-			    const struct intel_crtc_state *crtc_state)
+			    const struct intel_crtc_state *crtc_state,
+			    bool respect_downstream_limits)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct intel_connector *intel_connector = intel_dp->attached_connector;
@@ -1147,7 +1161,8 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
 	if (intel_dp->dfp.min_tmds_clock) {
 		int max_hdmi_bpc;
 
-		max_hdmi_bpc = intel_dp_hdmi_compute_bpc(intel_dp, crtc_state, bpc);
+		max_hdmi_bpc = intel_dp_hdmi_compute_bpc(intel_dp, crtc_state, bpc,
+							 respect_downstream_limits);
 		if (max_hdmi_bpc < 0)
 			return 0;
 
@@ -1466,7 +1481,8 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 static int
 intel_dp_compute_link_config(struct intel_encoder *encoder,
 			     struct intel_crtc_state *pipe_config,
-			     struct drm_connector_state *conn_state)
+			     struct drm_connector_state *conn_state,
+			     bool respect_downstream_limits)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct drm_display_mode *adjusted_mode =
@@ -1489,7 +1505,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	limits.max_lane_count = intel_dp_max_lane_count(intel_dp);
 
 	limits.min_bpp = intel_dp_min_bpp(pipe_config->output_format);
-	limits.max_bpp = intel_dp_max_bpp(intel_dp, pipe_config);
+	limits.max_bpp = intel_dp_max_bpp(intel_dp, pipe_config, respect_downstream_limits);
 
 	if (intel_dp->use_max_params) {
 		/*
@@ -1783,7 +1799,8 @@ static bool intel_dp_has_audio(struct intel_encoder *encoder,
 static int
 intel_dp_compute_output_format(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
-			       struct drm_connector_state *conn_state)
+			       struct drm_connector_state *conn_state,
+			       bool respect_downstream_limits)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -1803,7 +1820,8 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	}
 
-	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state);
+	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
+					   respect_downstream_limits);
 	if (ret) {
 		if (intel_dp_is_ycbcr420(intel_dp, crtc_state) ||
 		    !connector->base.ycbcr_420_allowed ||
@@ -1811,7 +1829,8 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 			return ret;
 
 		crtc_state->output_format = intel_dp_output_format(connector, true);
-		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state);
+		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
+						   respect_downstream_limits);
 	}
 
 	return ret;
@@ -1853,7 +1872,13 @@ intel_dp_compute_config(struct intel_encoder *encoder,
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
2.32.0

