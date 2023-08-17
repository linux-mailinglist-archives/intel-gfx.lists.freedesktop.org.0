Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 406F377FBC1
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 18:16:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B101910E513;
	Thu, 17 Aug 2023 16:16:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51FA710E4FE
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 16:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692288964; x=1723824964;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UjoQkyc+JI58ELPWJT+x72Rel+5xpIhRDmIR/WSjYu8=;
 b=b+iwHDMIFwGedKYOn6SZiYBLnd62rFhQ402GcL4ViahBHpGTZbHqNbwo
 N0eiDSt6f3pkIsWdMY4yA6fTIG4k5ZRKrGZ0dLT/aKP/ls01l7bx88iJ5
 zOFs5wGhKucH7Ldoyd+MgA0FA2PDTa0jqMSab23f7smFHvHIBWjDFmL7J
 Z8eHMw73aNbx2u3orQT4pNDJGILKSTFxpXDpue+3ks6J49INtuRHEIutu
 Ck6WpxISAE8OQmxbJ/xYPHHnN6/112rLirj0drAZ4ppewvW9imeEnO1aK
 9ywJCcdsG/9tnxSuLmM1k1/MNyLcgjiWWjkStn1HRI3GOaQAYj8IszA/9 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="357826588"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="357826588"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:14:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="711601350"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="711601350"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:14:46 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 19:14:43 +0300
Message-Id: <20230817161456.3857111-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230817161456.3857111-1-imre.deak@intel.com>
References: <20230817161456.3857111-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/17] drm/i915/dp: Update the link bpp limits
 for DSC mode
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

In non-DSC mode the link bpp can be set in 2*3 bpp steps in the pipe bpp
range, while in DSC mode it can be set in 1/16 bpp steps to any value
up to the maximum pipe bpp. Update the limits accordingly in both modes
to prepare for a follow-up patch which may need to reduce the max link
bpp value and starts to check the link bpp limits in DSC mode as well.

While at it add more detail to the link limit debug print and print it
also for DSC mode.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 89 +++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp.h     |  6 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 23 ++++--
 3 files changed, 96 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 62dc3716c3998..c4016fd0dc980 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1798,16 +1798,68 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	return 0;
 }
 
-static void
+/**
+ * intel_dp_compute_config_link_bpp_limits - compute output link bpp limits
+ * @intel_dp: intel DP
+ * @crtc_state: crtc state
+ * @dsc: DSC compression mode
+ * @limits: link configuration limits
+ *
+ * Calculates the output link min, max bpp values in @limits based on the
+ * pipe bpp range, @crtc_state and @dsc mode.
+ *
+ * Returns %true in case of success.
+ */
+bool
+intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
+					const struct intel_crtc_state *crtc_state,
+					bool dsc,
+					struct link_config_limits *limits)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	int max_link_bpp;
+
+	max_link_bpp = limits->pipe.max_bpp << 4;
+
+	if (!dsc) {
+		max_link_bpp = rounddown(max_link_bpp, (2 * 3) << 4);
+
+		if (max_link_bpp < limits->pipe.min_bpp << 4)
+			return false;
+
+		limits->link.min_bpp = limits->pipe.min_bpp << 4;
+	} else {
+		limits->link.min_bpp = 0;
+	}
+
+	limits->link.max_bpp = max_link_bpp;
+
+	drm_dbg_kms(&i915->drm,
+		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d max link_bpp %d.%04d\n",
+		    encoder->base.base.id, encoder->base.name,
+		    crtc->base.base.id, crtc->base.name,
+		    adjusted_mode->crtc_clock,
+		    dsc ? "on" : "off",
+		    limits->max_lane_count,
+		    limits->max_rate,
+		    limits->pipe.max_bpp,
+		    limits->link.max_bpp >> 4,
+		    (limits->link.max_bpp & 0xf) * 625);
+
+	return true;
+}
+
+static bool
 intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 			       struct intel_crtc_state *crtc_state,
 			       bool respect_downstream_limits,
+			       bool dsc,
 			       struct link_config_limits *limits)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
-
 	limits->min_rate = intel_dp_common_rate(intel_dp, 0);
 	limits->max_rate = intel_dp_max_link_rate(intel_dp);
 
@@ -1833,13 +1885,10 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 
 	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
 
-	limits->link.min_bpp = limits->pipe.min_bpp << 4;
-	limits->link.max_bpp = limits->pipe.max_bpp << 4;
-
-	drm_dbg_kms(&i915->drm, "DP link computation with max lane count %i "
-		    "max rate %d max bpp %d pixel clock %iKHz\n",
-		    limits->max_lane_count, limits->max_rate,
-		    limits->link.max_bpp >> 4, adjusted_mode->crtc_clock);
+	return intel_dp_compute_config_link_bpp_limits(intel_dp,
+						       crtc_state,
+						       dsc,
+						       limits);
 }
 
 static int
@@ -1858,9 +1907,6 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	bool dsc_needed;
 	int ret = 0;
 
-	intel_dp_compute_config_limits(intel_dp, pipe_config,
-				       respect_downstream_limits, &limits);
-
 	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
 				    adjusted_mode->crtc_clock))
 		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
@@ -1872,7 +1918,11 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	 */
 	joiner_needs_dsc = DISPLAY_VER(i915) < 13 && pipe_config->bigjoiner_pipes;
 
-	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en;
+	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
+		     !intel_dp_compute_config_limits(intel_dp, pipe_config,
+						     respect_downstream_limits,
+						     false,
+						     &limits);
 
 	if (!dsc_needed) {
 		/*
@@ -1889,6 +1939,13 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 		drm_dbg_kms(&i915->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
 			    str_yes_no(intel_dp->force_dsc_en));
+
+		if (!intel_dp_compute_config_limits(intel_dp, pipe_config,
+						    respect_downstream_limits,
+						    true,
+						    &limits))
+			return -EINVAL;
+
 		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
 						  conn_state, &limits, 64, true);
 		if (ret < 0)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index a1789419c0d19..22c18310ae47d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -151,4 +151,10 @@ void intel_dp_phy_test(struct intel_encoder *encoder);
 
 void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
 
+bool
+intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
+					const struct intel_crtc_state *crtc_state,
+					bool dsc,
+					struct link_config_limits *limits);
+
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 68739e46a9edb..48c247ddef53a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -305,9 +305,10 @@ static bool intel_dp_mst_has_audio(const struct drm_connector_state *conn_state)
 		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
 }
 
-static void
+static bool
 intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *crtc_state,
+				   bool dsc,
 				   struct link_config_limits *limits)
 {
 	/*
@@ -333,8 +334,10 @@ intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
 
 	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
 
-	limits->link.min_bpp = limits->pipe.min_bpp << 4;
-	limits->link.max_bpp = limits->pipe.max_bpp << 4;
+	return intel_dp_compute_config_link_bpp_limits(intel_dp,
+						       crtc_state,
+						       dsc,
+						       limits);
 }
 
 static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
@@ -361,9 +364,11 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 		intel_dp_mst_has_audio(conn_state) &&
 		intel_audio_compute_config(encoder, pipe_config, conn_state);
 
-	intel_dp_mst_compute_config_limits(intel_dp, pipe_config, &limits);
-
-	dsc_needed = intel_dp->force_dsc_en;
+	dsc_needed = intel_dp->force_dsc_en ||
+		     !intel_dp_mst_compute_config_limits(intel_dp,
+							 pipe_config,
+							 false,
+							 &limits);
 
 	if (!dsc_needed) {
 		ret = intel_dp_mst_compute_link_config(encoder, pipe_config,
@@ -382,6 +387,12 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 			    str_yes_no(ret),
 			    str_yes_no(intel_dp->force_dsc_en));
 
+		if (!intel_dp_mst_compute_config_limits(intel_dp,
+							pipe_config,
+							true,
+							&limits))
+			return -EINVAL;
+
 		/*
 		 * Try to get at least some timeslots and then see, if
 		 * we can fit there with DSC.
-- 
2.37.2

