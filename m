Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FE07A0E38
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:27:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B0E910E58D;
	Thu, 14 Sep 2023 19:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E716510E2B3
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 19:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694719606; x=1726255606;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Sre/ROdIPcfsYamXoxA6oB+nLFw9rV05jHeYfM7jMak=;
 b=LA+abhHnpHqDmyu3S7MnjN8k1wV23+rWVoXyptvQKSBhuA/KjLg9uK2A
 q7nCxnb0zLyMJ/HzI4NU2NB6oQtATKr3HogAo9mrFsst65RC496uQiVtY
 kMkPtNWplYZLKF+iT5PIdkatI/bK81GdlX0HG3yH4CueWfuUAqDugYEup
 V354DxURce83Phhk3myJ7nVxuipWG01EKl4mRhd48hdGCSyj/B/6M+XPj
 YK5XOiz/ejxCzHvhuu5TUUDANdSBnNKR8lT5Odsksm54uAlAw0aX3yl/I
 /nlG1AINKvarTXddMoI7iJ2drwMSLtxTsVjJNgUjXuxHOrBcVNYfSY/nH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="465421665"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="465421665"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:26:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779790494"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779790494"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:26:45 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 22:26:38 +0300
Message-Id: <20230914192659.757475-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 04/25] drm/i915/dp: Update the link bpp
 limits for DSC mode
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

v2:
- Add to_bpp_frac_dec() instead of open coding it. (Jani)
v3: (Ville)
- Add BPP_X16_FMT / BPP_X16_ARG.
- Add TODO: comment about initializing the DSC link bpp limits earlier.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  8 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 93 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp.h       |  6 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 23 +++--
 4 files changed, 108 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index bdad675e03fb8..50fe8ff354137 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2115,6 +2115,14 @@ static inline int to_bpp_int(int bpp_x16)
 	return bpp_x16 >> 4;
 }
 
+static inline int to_bpp_frac(int bpp_x16)
+{
+	return bpp_x16 & 0xf;
+}
+
+#define BPP_X16_FMT		"%d.%04d"
+#define BPP_X16_ARGS(bpp_x16)	to_bpp_int(bpp_x16), (to_bpp_frac(bpp_x16) * 625)
+
 static inline int to_bpp_x16(int bpp)
 {
 	return bpp << 4;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index bdaaad34463fb..2a45eefc83ebf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2190,16 +2190,72 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
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
+	int max_link_bpp_x16;
+
+	max_link_bpp_x16 = to_bpp_x16(limits->pipe.max_bpp);
+
+	if (!dsc) {
+		max_link_bpp_x16 = rounddown(max_link_bpp_x16, to_bpp_x16(2 * 3));
+
+		if (max_link_bpp_x16 < to_bpp_x16(limits->pipe.min_bpp))
+			return false;
+
+		limits->link.min_bpp_x16 = to_bpp_x16(limits->pipe.min_bpp);
+	} else {
+		/*
+		 * TODO: set the DSC link limits already here, atm these are
+		 * initialized only later in intel_edp_dsc_compute_pipe_bpp() /
+		 * intel_dp_dsc_compute_pipe_bpp()
+		 */
+		limits->link.min_bpp_x16 = 0;
+	}
+
+	limits->link.max_bpp_x16 = max_link_bpp_x16;
+
+	drm_dbg_kms(&i915->drm,
+		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d max link_bpp " BPP_X16_FMT "\n",
+		    encoder->base.base.id, encoder->base.name,
+		    crtc->base.base.id, crtc->base.name,
+		    adjusted_mode->crtc_clock,
+		    dsc ? "on" : "off",
+		    limits->max_lane_count,
+		    limits->max_rate,
+		    limits->pipe.max_bpp,
+		    BPP_X16_ARGS(limits->link.max_bpp_x16));
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
 
@@ -2225,13 +2281,10 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 
 	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
 
-	limits->link.min_bpp_x16 = to_bpp_x16(limits->pipe.min_bpp);
-	limits->link.max_bpp_x16 = to_bpp_x16(limits->pipe.max_bpp);
-
-	drm_dbg_kms(&i915->drm, "DP link computation with max lane count %i "
-		    "max rate %d max bpp %d pixel clock %iKHz\n",
-		    limits->max_lane_count, limits->max_rate,
-		    to_bpp_int(limits->link.max_bpp_x16), adjusted_mode->crtc_clock);
+	return intel_dp_compute_config_link_bpp_limits(intel_dp,
+						       crtc_state,
+						       dsc,
+						       limits);
 }
 
 static int
@@ -2250,9 +2303,6 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	bool dsc_needed;
 	int ret = 0;
 
-	intel_dp_compute_config_limits(intel_dp, pipe_config,
-				       respect_downstream_limits, &limits);
-
 	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
 				    adjusted_mode->crtc_clock))
 		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
@@ -2264,7 +2314,11 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
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
@@ -2281,6 +2335,13 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
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
index 98c60ab6e182e..2cf3681bac64a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -156,4 +156,10 @@ void intel_dp_phy_test(struct intel_encoder *encoder);
 void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
 int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);
 
+bool
+intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
+					const struct intel_crtc_state *crtc_state,
+					bool dsc,
+					struct link_config_limits *limits);
+
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 2a0f2caf5b8d7..7d84689d69fad 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -295,9 +295,10 @@ static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
 	return 0;
 }
 
-static void
+static bool
 intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *crtc_state,
+				   bool dsc,
 				   struct link_config_limits *limits)
 {
 	/*
@@ -323,8 +324,10 @@ intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
 
 	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
 
-	limits->link.min_bpp_x16 = to_bpp_x16(limits->pipe.min_bpp);
-	limits->link.max_bpp_x16 = to_bpp_x16(limits->pipe.max_bpp);
+	return intel_dp_compute_config_link_bpp_limits(intel_dp,
+						       crtc_state,
+						       dsc,
+						       limits);
 }
 
 static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
@@ -347,9 +350,11 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
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
@@ -368,6 +373,12 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 			    str_yes_no(ret),
 			    str_yes_no(intel_dp->force_dsc_en));
 
+		if (!intel_dp_mst_compute_config_limits(intel_dp,
+							pipe_config,
+							true,
+							&limits))
+			return -EINVAL;
+
 		/*
 		 * FIXME: As bpc is hardcoded to 8, as mentioned above,
 		 * WARN and ignore the debug flag force_dsc_bpc for now.
-- 
2.37.2

