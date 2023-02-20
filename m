Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A567369C988
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 12:15:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E672110E686;
	Mon, 20 Feb 2023 11:15:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D3B610E67F
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 11:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676891727; x=1708427727;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sTY7Yin0Y2mDKM2lypeKKoCR4/nt8rnhgAJnTRz3Nvk=;
 b=be6+bnXMxOPUcDQzS4l2UksF1lrE4rcYfU5/uW6ZKNn52cNwfqG2GRqB
 wF8TLsekm3U9rfZXAmKAZa9ajBPBzu+bjbtNLZvQW4gEO7Erc0RSZCj19
 e6vh9rPyKlN4xU4a+bHtCNuLb3nfCDTnOScntVqMZgjdWxXrOTxU0iKYU
 o7Y55Ve8/sZzLb3Z5RfaaaBXXEag3Yrs5hfSh02ZGTeCcNxfnuByGUEo4
 YwpoZETc8ymidx8spnqTV1vOBrgUPjWzQEdR1143GAA79RwphLtgQChZv
 9dr60SN/UvjgxsvI8rguP6z3qgd+KkesBCIq8UVLJZO/VbjNnT1N0xChM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="397061762"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="397061762"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 03:15:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="740013053"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="740013053"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 03:15:25 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 16:42:23 +0530
Message-Id: <20230220111232.3383820-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230220111232.3383820-1-ankit.k.nautiyal@intel.com>
References: <20230220111232.3383820-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/14] drm/i915/dp: Compute output format
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
index 065ec37aef73..0b53c5cc897f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -888,20 +888,37 @@ ycbcr420_scaler_constraints(struct drm_i915_private *i915,
 	return mode->hdisplay > max_src_w || mode->vdisplay > max_src_h;
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
 
@@ -949,7 +966,7 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
 	else
 		sink_format = INTEL_OUTPUT_FORMAT_RGB;
 
-	output_format = intel_dp_output_format(connector, mode, sink_format);
+	output_format = intel_dp_output_format(connector, mode, sink_format, false);
 
 	return intel_dp_output_bpp(output_format, intel_dp_min_bpp(output_format));
 }
@@ -1719,7 +1736,8 @@ static int
 intel_dp_compute_link_config(struct intel_encoder *encoder,
 			     struct intel_crtc_state *pipe_config,
 			     struct drm_connector_state *conn_state,
-			     bool respect_downstream_limits)
+			     bool respect_downstream_limits,
+			     bool with_dsc)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
@@ -1730,6 +1748,20 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
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
 
@@ -1759,23 +1791,15 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
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
@@ -2111,7 +2135,8 @@ static int
 intel_dp_compute_output_format(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
 			       struct drm_connector_state *conn_state,
-			       bool respect_downstream_limits)
+			       bool respect_downstream_limits,
+			       bool with_dsc)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -2134,10 +2159,10 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
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
@@ -2145,9 +2170,10 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 
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
@@ -2213,9 +2239,21 @@ intel_dp_compute_config(struct intel_encoder *encoder,
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

