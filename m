Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B438E9ECEDD
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 15:43:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 108DE10EB6C;
	Wed, 11 Dec 2024 14:43:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="STb6a0M2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E105C10EB6B;
 Wed, 11 Dec 2024 14:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733928196; x=1765464196;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QOtjQ3CpQIlryF5RAy73feqf93QvLv7+RyRRV9OcYVI=;
 b=STb6a0M2i3S6xDkzsuEmHYscWjcaRCocncZFQkgPIfQpqO1Lmeq8Elia
 4Kg/0l2caFefP0pCPihXTvBQiGNY3UWPrIXsAvyoeteJLPg9VHSQFz9YC
 qnneZcrQOZFUjSC8JeSOZB8AozWxb/uJDZ2E9dVP6SghKjBAiqhtdeMZE
 Ipz8ymOoFsMnuLpRf9pb/5fPEENhC+kHOM4KYMWsZfXn6kd+0TKHH3khz
 RqjHtuHPXSmn9GjKcEmopKzwJW4DGPo4WnhhCQX1lxxuRX06VxYRo06z7
 RNOe87XsxJiupM58od+fswHy2B1fxJojkMo5HRiRD9MD1Eh75Iobwlguy g==;
X-CSE-ConnectionGUID: bxVxdFzyQwCRIs9jtmwt+A==
X-CSE-MsgGUID: n2FPDzgbSM6vLJ1VgZIJcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="44781575"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="44781575"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 06:43:16 -0800
X-CSE-ConnectionGUID: rZonb+ccQIKcZJkrbX+4eA==
X-CSE-MsgGUID: WNinf30jScSZz0TPlR/HDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="100652844"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.44])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 06:43:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH] drm/i915/mst: use intel_dp_compute_config_limits() for DP MST
Date: Wed, 11 Dec 2024 16:43:10 +0200
Message-Id: <20241211144310.701895-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

There's a lot of duplication between mst_stream_compute_config_limits()
and intel_dp_compute_config_limits(). Adjust the latter to suit the
needs of the former, and use the same function for both. This reduces
duplication and highlights the differences for SST and MST and UHBR.

Remove the kernel-doc for intel_dp_compute_config_link_bpp_limits()
which now becomes static.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 44 +++++++++++++--------
 drivers/gpu/drm/i915/display/intel_dp.h     | 10 ++---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 29 +-------------
 3 files changed, 34 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fbe6b77d642e..4b6676e785bf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2455,19 +2455,11 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	return 0;
 }
 
-/**
- * intel_dp_compute_config_link_bpp_limits - compute output link bpp limits
- * @intel_dp: intel DP
- * @crtc_state: crtc state
- * @dsc: DSC compression mode
- * @limits: link configuration limits
- *
- * Calculates the output link min, max bpp values in @limits based on the
- * pipe bpp range, @crtc_state and @dsc mode.
- *
- * Returns %true in case of success.
+/*
+ * Calculate the output link min, max bpp values in limits based on the pipe bpp
+ * range, crtc_state and dsc mode. Return true on success.
  */
-bool
+static bool
 intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 					const struct intel_crtc_state *crtc_state,
 					bool dsc,
@@ -2515,29 +2507,47 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 	return true;
 }
 
-static bool
+bool
 intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 			       struct intel_crtc_state *crtc_state,
 			       bool respect_downstream_limits,
 			       bool dsc,
 			       struct link_config_limits *limits)
 {
+	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
+
 	limits->min_rate = intel_dp_min_link_rate(intel_dp);
 	limits->max_rate = intel_dp_max_link_rate(intel_dp);
 
 	/* FIXME 128b/132b SST support missing */
-	limits->max_rate = min(limits->max_rate, 810000);
+	if (!is_mst)
+		limits->max_rate = min(limits->max_rate, 810000);
 	limits->min_rate = min(limits->min_rate, limits->max_rate);
 
 	limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
 	limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
 
 	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
-	limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
-						     respect_downstream_limits);
+	if (is_mst) {
+		/*
+		 * FIXME: If all the streams can't fit into the link with their
+		 * current pipe_bpp we should reduce pipe_bpp across the board
+		 * until things start to fit. Until then we limit to <= 8bpc
+		 * since that's what was hardcoded for all MST streams
+		 * previously. This hack should be removed once we have the
+		 * proper retry logic in place.
+		 */
+		limits->pipe.max_bpp = min(crtc_state->pipe_bpp, 24);
+	} else {
+		limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
+							respect_downstream_limits);
+	}
 
-	if (intel_dp->use_max_params) {
+	if (is_mst || intel_dp->use_max_params) {
 		/*
+		 * For MST we always configure max link bw - the spec doesn't
+		 * seem to suggest we should do otherwise.
+		 *
 		 * Use the maximum clock and number of lanes the eDP panel
 		 * advertizes being capable of in case the initial fast
 		 * optimal params failed us. The panels are generally
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 48f10876be65..8572d7df5335 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -193,11 +193,11 @@ void intel_dp_invalidate_source_oui(struct intel_dp *intel_dp);
 void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
 int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);
 
-bool
-intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
-					const struct intel_crtc_state *crtc_state,
-					bool dsc,
-					struct link_config_limits *limits);
+bool intel_dp_compute_config_limits(struct intel_dp *intel_dp,
+				    struct intel_crtc_state *crtc_state,
+				    bool respect_downstream_limits,
+				    bool dsc,
+				    struct link_config_limits *limits);
 
 void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
 bool intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 123c4ece6268..d77ebcb1432e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -585,33 +585,8 @@ mst_stream_compute_config_limits(struct intel_dp *intel_dp,
 				 bool dsc,
 				 struct link_config_limits *limits)
 {
-	/*
-	 * for MST we always configure max link bw - the spec doesn't
-	 * seem to suggest we should do otherwise.
-	 */
-	limits->min_rate = limits->max_rate =
-		intel_dp_max_link_rate(intel_dp);
-
-	limits->min_lane_count = limits->max_lane_count =
-		intel_dp_max_lane_count(intel_dp);
-
-	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
-	/*
-	 * FIXME: If all the streams can't fit into the link with
-	 * their current pipe_bpp we should reduce pipe_bpp across
-	 * the board until things start to fit. Until then we
-	 * limit to <= 8bpc since that's what was hardcoded for all
-	 * MST streams previously. This hack should be removed once
-	 * we have the proper retry logic in place.
-	 */
-	limits->pipe.max_bpp = min(crtc_state->pipe_bpp, 24);
-
-	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
-
-	if (!intel_dp_compute_config_link_bpp_limits(intel_dp,
-						     crtc_state,
-						     dsc,
-						     limits))
+	if (!intel_dp_compute_config_limits(intel_dp, crtc_state, false, dsc,
+					    limits))
 		return false;
 
 	return adjust_limits_for_dsc_hblank_expansion_quirk(connector,
-- 
2.39.5

