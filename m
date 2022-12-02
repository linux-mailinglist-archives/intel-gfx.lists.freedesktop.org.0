Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C3D640427
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 11:09:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 259F210E6C5;
	Fri,  2 Dec 2022 10:09:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F081810E6C0
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 10:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669975781; x=1701511781;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ddKXU84qgv8p02WGDOrHRkjBIBb4T/y0DHqYfeCiK8I=;
 b=L44FYbjlzmUrn5b4VKNmabwOckfdKjTTOHjeaf+pMEASoFVUNQNTp1PL
 e0cC94DiK1x7Fuwqrh1EzfMba2CkD/fdNd96GHQvOxgDrA5pc+eChR3Ge
 35ME1bnKGpZrVjWIWbtBUaVpHbHXeZX0WpxAyqFHK4V4FjXjRItXbMEnl
 rUKUUFYQXK9idyou8nnWZ1GrJB3Jd66DitPpRNQIWA5p83OkUFGAwXGKA
 5uuoBZiNz6IKeoKZCDg+Yz9KjIJqabgAoESWoLaeWBxCW7IJt/vVnwF1k
 L5CZyeqCwhqwV4+oxGHtHkZ08HR/fkBKlx5FxwQHy4XARV40quR4SdYce A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="313564574"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="313564574"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:09:41 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="647115758"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="647115758"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:09:39 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Dec 2022 15:40:19 +0530
Message-Id: <20221202101028.803630-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221202101028.803630-1-ankit.k.nautiyal@intel.com>
References: <20221202101028.803630-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/14] drm/i915/dp: Compute output format
 with/without DSC
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

Currently we compute the output format first and later try DSC if the
bandwidth without compression is not sufficient for that output format.
Since we do not support DSC with YCbCr420 format, this creates problem
for YCbCr420 only modes, that can be still be set if DFP has color
conversion and DSC capabilities.

So compute output format, first without DSC and inturn compute the link
config without DSC. If cannot be supported without DSC, compute the
output format with DSC and continue.
With this apporach, check can be added for YCbCr420 output, which cannot
be supported with DSC.

v2: Rebased

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 84 ++++++++++++++++++-------
 1 file changed, 61 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e3ba84e7fda6..4789d3c3cb2e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -861,20 +861,37 @@ ycbcr420_scaler_constraints(struct drm_i915_private *i915,
 	return mode->hdisplay > max_w || mode->vdisplay > max_h;
 }
 
+static bool
+ycbcr420_constraints(struct drm_i915_private *i915,
+		     const struct drm_display_mode *mode,
+		     bool with_dsc)
+{
+	/*
+	 * DSC with YCbCr420 is a constraint as currently we do not support compression
+	 * with 420 format.
+	 */
+	if (with_dsc)
+		return true;
+
+	return ycbcr420_scaler_constraints(i915, mode);
+}
+
 static enum intel_output_format
 intel_dp_output_format(struct intel_connector *connector,
 		       const struct drm_display_mode *mode,
-		       enum intel_output_format sink_format)
+		       enum intel_output_format sink_format,
+		       bool with_dsc)
 {
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
 	/*
 	 * For YCbCr420 output, scaler is required for downsampling.
-	 * So go for native YCbCr420 only if there are no scaler constraints.
+	 * DSC1.1 supports compression only with 444 formats.
+	 * So go for native YCbCr420 only if there are no scaler and dsc constraints.
 	 */
 	if ((sink_format != INTEL_OUTPUT_FORMAT_YCBCR420 ||
-	     !ycbcr420_scaler_constraints(i915, mode)) &&
+	     !ycbcr420_constraints(i915, mode, with_dsc)) &&
 	    source_can_output(intel_dp, sink_format))
 		return sink_format;
 
@@ -922,7 +939,7 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
 	else
 		sink_format = INTEL_OUTPUT_FORMAT_RGB;
 
-	output_format = intel_dp_output_format(connector, mode, sink_format);
+	output_format = intel_dp_output_format(connector, mode, sink_format, false);
 
 	return intel_dp_output_bpp(output_format, intel_dp_min_bpp(output_format));
 }
@@ -1671,7 +1688,8 @@ static int
 intel_dp_compute_link_config(struct intel_encoder *encoder,
 			     struct intel_crtc_state *pipe_config,
 			     struct drm_connector_state *conn_state,
-			     bool respect_downstream_limits)
+			     bool respect_downstream_limits,
+			     bool with_dsc)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
@@ -1682,6 +1700,20 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	bool joiner_needs_dsc = false;
 	int ret;
 
+	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
+				    adjusted_mode->crtc_clock))
+		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
+
+	/*
+	 * Pipe joiner needs compression up to display 12 due to bandwidth
+	 * limitation. DG2 onwards pipe joiner can be enabled without
+	 * compression.
+	 */
+	joiner_needs_dsc = DISPLAY_VER(i915) < 13 && pipe_config->bigjoiner_pipes;
+
+	if (joiner_needs_dsc && !with_dsc)
+		return -EINVAL;
+
 	limits.min_rate = intel_dp_common_rate(intel_dp, 0);
 	limits.max_rate = intel_dp_max_link_rate(intel_dp);
 
@@ -1711,23 +1743,15 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 		    limits.max_lane_count, limits.max_rate,
 		    limits.max_bpp, adjusted_mode->crtc_clock);
 
-	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
-				    adjusted_mode->crtc_clock))
-		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
-
-	/*
-	 * Pipe joiner needs compression up to display 12 due to bandwidth
-	 * limitation. DG2 onwards pipe joiner can be enabled without
-	 * compression.
-	 */
-	joiner_needs_dsc = DISPLAY_VER(i915) < 13 && pipe_config->bigjoiner_pipes;
-
 	/*
 	 * Optimize for slow and wide for everything, because there are some
 	 * eDP 1.3 and 1.4 panels don't work well with fast and narrow.
 	 */
 	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, conn_state, &limits);
 
+	if (ret && !with_dsc)
+		return -EINVAL;
+
 	if (ret || joiner_needs_dsc || intel_dp->force_dsc_en) {
 		drm_dbg_kms(&i915->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
@@ -2063,7 +2087,8 @@ static int
 intel_dp_compute_output_format(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
 			       struct drm_connector_state *conn_state,
-			       bool respect_downstream_limits)
+			       bool respect_downstream_limits,
+			       bool with_dsc)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -2086,10 +2111,10 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	}
 
 	crtc_state->output_format = intel_dp_output_format(connector, adjusted_mode,
-							   crtc_state->sink_format);
+							   crtc_state->sink_format, with_dsc);
 
 	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
-					   respect_downstream_limits);
+					   respect_downstream_limits, with_dsc);
 	if (ret) {
 		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
 		    !drm_mode_is_420_also(info, adjusted_mode))
@@ -2097,9 +2122,10 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 
 		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
 		crtc_state->output_format = intel_dp_output_format(connector, adjusted_mode,
-								   crtc_state->sink_format);
+								   crtc_state->sink_format,
+								   with_dsc);
 		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
-						   respect_downstream_limits);
+						   respect_downstream_limits, with_dsc);
 	}
 
 	return ret;
@@ -2163,9 +2189,21 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	 * Try to respect downstream TMDS clock limits first, if
 	 * that fails assume the user might know something we don't.
 	 */
-	ret = intel_dp_compute_output_format(encoder, pipe_config, conn_state, true);
+	ret = intel_dp_compute_output_format(encoder, pipe_config,
+					     conn_state, true, false);
 	if (ret)
-		ret = intel_dp_compute_output_format(encoder, pipe_config, conn_state, false);
+		ret = intel_dp_compute_output_format(encoder, pipe_config,
+						     conn_state, false, false);
+
+	/* Try with DSC */
+	if (ret) {
+		ret = intel_dp_compute_output_format(encoder, pipe_config,
+						     conn_state, true, true);
+		if (ret)
+			ret = intel_dp_compute_output_format(encoder, pipe_config,
+							     conn_state, false, true);
+	}
+
 	if (ret)
 		return ret;
 
-- 
2.25.1

