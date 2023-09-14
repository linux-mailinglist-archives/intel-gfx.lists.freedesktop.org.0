Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F16F7A0E34
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:26:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A962210E586;
	Thu, 14 Sep 2023 19:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 891C610E2B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 19:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694719602; x=1726255602;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EN6qnUHaOJcjrcwf70Pc3Pd4OXZCuGpiRrisy3tQCvU=;
 b=gLPmFbp1MUlUKMo+/tHk1iAhXrObO5Ha1cpZWqzgJCbAyiMfMdvZ2Qm8
 pd8VSsbc/SDNslhrtMYQjUm+HfOE0/7hk+iaVzbHAsOdCWm3tZecv8jwU
 Acoux7DNfgUYIkxbs+8cTY23r51He4aHvBpQxmwgPqmVIF0NfE2M/VwnR
 GhvVGbPy3UmG3hf7CaLBLpMpkZyXQB69HJGdhjMKOJpdOnpreU5kneZXF
 b4j52eB7Z4MJNLbean6QT5cVrgycU4vHe+cE80CjtFAenMnUAYcDV96Qn
 OnjNzPdY4RuavY/lphTqn9BWNnmHDrKfCjSI+ofOfvOUIHtfehI7r7KkO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="465421652"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="465421652"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:26:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779790468"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779790468"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:26:41 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 22:26:35 +0300
Message-Id: <20230914192659.757475-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 01/25] drm/i915/dp: Factor out helpers to
 compute the link limits
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

Factor out helpers that DP / DP_MST encoders can use to compute the link
rate/lane count and bpp limits. A follow-up patch will call these to
recalculate the limits if DSC compression is required.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 61 +++++++++++++--------
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 52 ++++++++++--------
 2 files changed, 68 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 55ba6eeaa810d..78984d5126bbe 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2188,29 +2188,25 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	return 0;
 }
 
-static int
-intel_dp_compute_link_config(struct intel_encoder *encoder,
-			     struct intel_crtc_state *pipe_config,
-			     struct drm_connector_state *conn_state,
-			     bool respect_downstream_limits)
+static void
+intel_dp_compute_config_limits(struct intel_dp *intel_dp,
+			       struct intel_crtc_state *crtc_state,
+			       bool respect_downstream_limits,
+			       struct link_config_limits *limits)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	const struct drm_display_mode *adjusted_mode =
-		&pipe_config->hw.adjusted_mode;
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	struct link_config_limits limits;
-	bool joiner_needs_dsc = false;
-	int ret;
+		&crtc_state->hw.adjusted_mode;
 
-	limits.min_rate = intel_dp_common_rate(intel_dp, 0);
-	limits.max_rate = intel_dp_max_link_rate(intel_dp);
+	limits->min_rate = intel_dp_common_rate(intel_dp, 0);
+	limits->max_rate = intel_dp_max_link_rate(intel_dp);
 
-	limits.min_lane_count = 1;
-	limits.max_lane_count = intel_dp_max_lane_count(intel_dp);
+	limits->min_lane_count = 1;
+	limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
 
-	limits.min_bpp = intel_dp_min_bpp(pipe_config->output_format);
-	limits.max_bpp = intel_dp_max_bpp(intel_dp, pipe_config, respect_downstream_limits);
+	limits->min_bpp = intel_dp_min_bpp(crtc_state->output_format);
+	limits->max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
+					   respect_downstream_limits);
 
 	if (intel_dp->use_max_params) {
 		/*
@@ -2221,16 +2217,35 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 		 * configuration, and typically on older panels these
 		 * values correspond to the native resolution of the panel.
 		 */
-		limits.min_lane_count = limits.max_lane_count;
-		limits.min_rate = limits.max_rate;
+		limits->min_lane_count = limits->max_lane_count;
+		limits->min_rate = limits->max_rate;
 	}
 
-	intel_dp_adjust_compliance_config(intel_dp, pipe_config, &limits);
+	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
 
 	drm_dbg_kms(&i915->drm, "DP link computation with max lane count %i "
 		    "max rate %d max bpp %d pixel clock %iKHz\n",
-		    limits.max_lane_count, limits.max_rate,
-		    limits.max_bpp, adjusted_mode->crtc_clock);
+		    limits->max_lane_count, limits->max_rate,
+		    limits->max_bpp, adjusted_mode->crtc_clock);
+}
+
+static int
+intel_dp_compute_link_config(struct intel_encoder *encoder,
+			     struct intel_crtc_state *pipe_config,
+			     struct drm_connector_state *conn_state,
+			     bool respect_downstream_limits)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	const struct drm_display_mode *adjusted_mode =
+		&pipe_config->hw.adjusted_mode;
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct link_config_limits limits;
+	bool joiner_needs_dsc = false;
+	int ret;
+
+	intel_dp_compute_config_limits(intel_dp, pipe_config,
+				       respect_downstream_limits, &limits);
 
 	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
 				    adjusted_mode->crtc_clock))
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 1c7f0b6afe475..f4fcfc6926881 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -293,6 +293,35 @@ static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
 	return 0;
 }
 
+static void
+intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
+				   struct intel_crtc_state *crtc_state,
+				   struct link_config_limits *limits)
+{
+	/*
+	 * for MST we always configure max link bw - the spec doesn't
+	 * seem to suggest we should do otherwise.
+	 */
+	limits->min_rate = limits->max_rate =
+		intel_dp_max_link_rate(intel_dp);
+
+	limits->min_lane_count = limits->max_lane_count =
+		intel_dp_max_lane_count(intel_dp);
+
+	limits->min_bpp = intel_dp_min_bpp(crtc_state->output_format);
+	/*
+	 * FIXME: If all the streams can't fit into the link with
+	 * their current pipe_bpp we should reduce pipe_bpp across
+	 * the board until things start to fit. Until then we
+	 * limit to <= 8bpc since that's what was hardcoded for all
+	 * MST streams previously. This hack should be removed once
+	 * we have the proper retry logic in place.
+	 */
+	limits->max_bpp = min(crtc_state->pipe_bpp, 24);
+
+	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
+}
+
 static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 				       struct intel_crtc_state *pipe_config,
 				       struct drm_connector_state *conn_state)
@@ -312,28 +341,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
-	/*
-	 * for MST we always configure max link bw - the spec doesn't
-	 * seem to suggest we should do otherwise.
-	 */
-	limits.min_rate =
-	limits.max_rate = intel_dp_max_link_rate(intel_dp);
-
-	limits.min_lane_count =
-	limits.max_lane_count = intel_dp_max_lane_count(intel_dp);
-
-	limits.min_bpp = intel_dp_min_bpp(pipe_config->output_format);
-	/*
-	 * FIXME: If all the streams can't fit into the link with
-	 * their current pipe_bpp we should reduce pipe_bpp across
-	 * the board until things start to fit. Until then we
-	 * limit to <= 8bpc since that's what was hardcoded for all
-	 * MST streams previously. This hack should be removed once
-	 * we have the proper retry logic in place.
-	 */
-	limits.max_bpp = min(pipe_config->pipe_bpp, 24);
-
-	intel_dp_adjust_compliance_config(intel_dp, pipe_config, &limits);
+	intel_dp_mst_compute_config_limits(intel_dp, pipe_config, &limits);
 
 	ret = intel_dp_mst_compute_link_config(encoder, pipe_config,
 					       conn_state, &limits);
-- 
2.37.2

