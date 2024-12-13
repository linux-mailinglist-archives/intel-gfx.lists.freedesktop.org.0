Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE649F09C4
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 11:40:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0314F10EFA6;
	Fri, 13 Dec 2024 10:40:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZdyAogzB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F263010EFAC;
 Fri, 13 Dec 2024 10:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734086419; x=1765622419;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cff6+lP9dRv1OikhLqMaQUUvCbeTyJENGr18BDT9pF0=;
 b=ZdyAogzBHzo2PNq4MDE83AOLNegLqFOuo6OT7TtfdqhQiEMN6s15jmg9
 5DEfdl6l/jC80JifP82jYNEe7eE6bUgpxZijC2n5KkXDd6PyEawF0+BC+
 TH6ae7AZCssTRxjCF5zs4rYDz5bJ82yyCmf+EbpghoU7/3l2PtIcA4Oaw
 tSYqjPghh1PzsKIm6/9Hcgp9xC48PsRWNMhF3JohRrQHmvh1DcW2OB3h2
 QJUzdPtITxDf1s65gUpcgRsgTlLhsEjpxaKNGP7eZGVFST+hRUsS7pMUn
 ieuD0PMIH/u+cktaTzcBqRh+2UhuCx0u82Ee0FLaeBG257iGNXiOgEQGe A==;
X-CSE-ConnectionGUID: YjEH4AfXRIKWKLlZUdutlA==
X-CSE-MsgGUID: KROZk+kIRgKRhn067t++eg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="45945161"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="45945161"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:19 -0800
X-CSE-ConnectionGUID: FbFb2gVfRN2DpXTOGUgomg==
X-CSE-MsgGUID: XgDa3BXHQruqZbjoDODL2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="127313646"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com,
 nagavenkata.srikanth.v@intel.com
Subject: [RFC v0 02/13] drm/i915/mst: use intel_dp_compute_config_limits() for
 DP MST
Date: Fri, 13 Dec 2024 12:39:46 +0200
Message-Id: <14272a2538ff17d345cfb06cdfdad1fdf37abf29.1734085515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1734085515.git.jani.nikula@intel.com>
References: <cover.1734085515.git.jani.nikula@intel.com>
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
index f8100c4f4d20..9b930622b8ce 100644
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
index 822500d4d2af..67b0e40a7888 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -584,33 +584,8 @@ mst_stream_compute_config_limits(struct intel_dp *intel_dp,
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

