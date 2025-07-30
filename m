Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A285AB158C7
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 08:13:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35A2410E3F8;
	Wed, 30 Jul 2025 06:13:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mIqA32MJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6053E10E3EC;
 Wed, 30 Jul 2025 06:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753855996; x=1785391996;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tT6lI3PEbKBycIWooNLp39cbH2D6hJwxVpwHr8GNIGE=;
 b=mIqA32MJZKNbAOzlBeF0qqxIgRZhThIIskWzdLjf4n+86ubUvxF0HaGE
 T4MFUlhhy+3QM6NyGbP3KQn47YmGiQtbp0zsENNVD8+djsAe1+OSkPG90
 9R/QGpm12acFysFXWFXszs5CA4gAYhRvZQNGnSmrsUjdLzFYs+scBNsCc
 qZi+2FdbMDGL7KO2tCLHLlRc7yi3Lbbbv8515m7OUpz1xlJJWBfsi7k15
 V1DSa/tfWZ7uj5F5UkXB8zyHLqikHqfcoiTzfgFq35GLuJXFy7K4rnpsT
 sgV1QeMiWjwV4xmRx5R1HvV2NepWC1BtS9zQBGLjppt7OfFZw8aeTkRUK w==;
X-CSE-ConnectionGUID: T1RghT1AS9u3z4YA4DhZhg==
X-CSE-MsgGUID: /MO4MwZlQRem4iS1xv3Asg==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="56233860"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="56233860"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 23:13:15 -0700
X-CSE-ConnectionGUID: wiO3m1E+TFqrBl0SO15sWg==
X-CSE-MsgGUID: fMcQpbR2SK2tkaICLMiBvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="193890496"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa002.jf.intel.com with ESMTP; 29 Jul 2025 23:13:13 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com
Subject: [PATCH 2/2] drm/i915/dp: Set min_bpp limit to 30 in HDR mode
Date: Wed, 30 Jul 2025 11:25:23 +0530
Message-Id: <20250730055523.2214966-3-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250730055523.2214966-1-chaitanya.kumar.borah@intel.com>
References: <20250730055523.2214966-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
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

Update intel_dp_compute_config_limits() to use a minimum of
30 bits per pixel when the connector is in HDR mode
(specifically, when EOTF is SMPTE ST2084), aligning with HDR
display requirements.

To support this, the function now takes a drm_connector_state
instead of an intel_connector, and the required updates are
made in all call sites, including MST handling.

This ensures sufficient bitdepth for HDR content to avoid
banding.

If the required bandwidth for 30 bpp cannot be supported,
the driver will either fall back to DSC or reject the mode
during atomic check if DSC is not supported.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 11 +++++++----
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 +++++++----
 3 files changed, 15 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 59d814abd3a9..49a3ff414dc4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2536,13 +2536,15 @@ intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
 
 bool
 intel_dp_compute_config_limits(struct intel_dp *intel_dp,
-			       struct intel_connector *connector,
+			       struct drm_connector_state *conn_state,
 			       struct intel_crtc_state *crtc_state,
 			       bool respect_downstream_limits,
 			       bool dsc,
 			       struct link_config_limits *limits)
 {
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
+	struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
 
 	limits->min_rate = intel_dp_min_link_rate(intel_dp);
 	limits->max_rate = intel_dp_max_link_rate(intel_dp);
@@ -2552,7 +2554,8 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
 	limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
 
-	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
+	limits->pipe.min_bpp = intel_dp_in_hdr_mode(conn_state) ? 30 :
+				intel_dp_min_bpp(crtc_state->output_format);
 	if (is_mst) {
 		/*
 		 * FIXME: If all the streams can't fit into the link with their
@@ -2651,7 +2654,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
-		     !intel_dp_compute_config_limits(intel_dp, connector, pipe_config,
+		     !intel_dp_compute_config_limits(intel_dp, conn_state, pipe_config,
 						     respect_downstream_limits,
 						     false,
 						     &limits);
@@ -2685,7 +2688,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
 			    str_yes_no(intel_dp->force_dsc_en));
 
-		if (!intel_dp_compute_config_limits(intel_dp, connector, pipe_config,
+		if (!intel_dp_compute_config_limits(intel_dp, conn_state, pipe_config,
 						    respect_downstream_limits,
 						    true,
 						    &limits))
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 5def589e3c0e..f90cfd1dbbd0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -193,7 +193,7 @@ void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
 int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);
 
 bool intel_dp_compute_config_limits(struct intel_dp *intel_dp,
-				    struct intel_connector *connector,
+				    struct drm_connector_state *conn_state,
 				    struct intel_crtc_state *crtc_state,
 				    bool respect_downstream_limits,
 				    bool dsc,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 74497c9a0554..352f7ef29c28 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -611,12 +611,15 @@ adjust_limits_for_dsc_hblank_expansion_quirk(struct intel_dp *intel_dp,
 
 static bool
 mst_stream_compute_config_limits(struct intel_dp *intel_dp,
-				 struct intel_connector *connector,
+				 struct drm_connector_state *conn_state,
 				 struct intel_crtc_state *crtc_state,
 				 bool dsc,
 				 struct link_config_limits *limits)
 {
-	if (!intel_dp_compute_config_limits(intel_dp, connector,
+	struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
+
+	if (!intel_dp_compute_config_limits(intel_dp, conn_state,
 					    crtc_state, false, dsc,
 					    limits))
 		return false;
@@ -665,7 +668,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
-		!mst_stream_compute_config_limits(intel_dp, connector,
+		!mst_stream_compute_config_limits(intel_dp, conn_state,
 						  pipe_config, false, &limits);
 
 	if (!dsc_needed) {
@@ -691,7 +694,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 			    str_yes_no(intel_dp->force_dsc_en));
 
 
-		if (!mst_stream_compute_config_limits(intel_dp, connector,
+		if (!mst_stream_compute_config_limits(intel_dp, conn_state,
 						      pipe_config, true,
 						      &limits))
 			return -EINVAL;
-- 
2.25.1

