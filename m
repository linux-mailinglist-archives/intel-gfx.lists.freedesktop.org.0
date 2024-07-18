Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E319349A8
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 10:17:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E60F110E5C6;
	Thu, 18 Jul 2024 08:17:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q8uEAAkh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C2C610E5BF
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2024 08:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721290630; x=1752826630;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kyamOTV6u51F38u710zWKDMw25AcA8PzsuErGul2p1Y=;
 b=Q8uEAAkhL470fc1B7Yw5G+hW+Vd8NRscyUxy4hh/OUNYe2okeSpmjJRz
 R4LCP1ZxqsNL6BR1w42YMxAkDM6XDx01r422vrdnzsCNOobQGl1Hinw3z
 joeexDcE4stCQ+jLAXGCE92eSqSk5kkYrLQGFcbfP+dNMIayT6iqwufjW
 9PSmvfVJ3rDmvZL75XB9XK/STfaOF4KPgpm9S6nByLKvnVwfAcD4rb9g4
 aUNAVgXFLwp4tMECL1DENb9CYS7dKWLlq4Xu7RJVjAfVIWD7anstzjTd8
 bSvlK3Crq8C5pu6sezH6AbzSfweFxhtseyZyTYfc2TdEc69X/+v8sMw3A Q==;
X-CSE-ConnectionGUID: w2VJKRGJRZKHLddWkF+5WQ==
X-CSE-MsgGUID: 77Zu95WyQdad8Fq4NQn28g==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18706031"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="18706031"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:10 -0700
X-CSE-ConnectionGUID: Deftcm4uSqmE4iFqDolQ/g==
X-CSE-MsgGUID: CKRc/59USq6v5M7BG8VlFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="51400589"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:08 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stanislav.lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 04/12] drm/i915/display: Use joined pipes in dsc helpers for
 slices, bpp
Date: Thu, 18 Jul 2024 13:47:55 +0530
Message-ID: <20240718081803.3338564-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
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

In preparation of ultrajoiner, use number of joined pipes in the dsc
helpers to compute dsc slices and max compressed bpp, instead of using
the joiner flag.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 27 +++++++++++----------
 drivers/gpu/drm/i915/display/intel_dp.h     |  4 +--
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 +++++----
 3 files changed, 22 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 320d8b6d1bce..ff4c123de0ed 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -752,14 +752,14 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
 static
 u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 				       u32 mode_clock, u32 mode_hdisplay,
-				       bool bigjoiner)
+				       enum intel_joiner_pipe_count joined_pipes)
 {
 	u32 max_bpp_small_joiner_ram;
 
 	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
 	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) / mode_hdisplay;
 
-	if (bigjoiner) {
+	if (joined_pipes == INTEL_PIPE_JOINER_BIG) {
 		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
 		/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
 		int ppc = 2;
@@ -778,7 +778,7 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 					u32 link_clock, u32 lane_count,
 					u32 mode_clock, u32 mode_hdisplay,
-					bool bigjoiner,
+					enum intel_joiner_pipe_count joined_pipes,
 					enum intel_output_format output_format,
 					u32 pipe_bpp,
 					u32 timeslots)
@@ -824,7 +824,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 				intel_dp_mode_to_fec_clock(mode_clock));
 
 	joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, mode_clock,
-							    mode_hdisplay, bigjoiner);
+							    mode_hdisplay, joined_pipes);
 	bits_per_pixel = min(bits_per_pixel, joiner_max_bpp);
 
 	bits_per_pixel = intel_dp_dsc_nearest_valid_bpp(i915, bits_per_pixel, pipe_bpp);
@@ -834,7 +834,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
-				bool bigjoiner)
+				enum intel_joiner_pipe_count joined_pipes)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	u8 min_slice_count, i;
@@ -868,14 +868,14 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 
 	/* Find the closest match to the valid slice count values */
 	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
-		u8 test_slice_count = valid_dsc_slicecount[i] << bigjoiner;
+		u8 test_slice_count = valid_dsc_slicecount[i] << (joined_pipes / 2);
 
 		if (test_slice_count >
 		    drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, false))
 			break;
 
 		/* big joiner needs small joiner to be enabled */
-		if (bigjoiner && test_slice_count < 4)
+		if (joined_pipes == INTEL_PIPE_JOINER_BIG && test_slice_count < 4)
 			continue;
 
 		if (min_slice_count <= test_slice_count)
@@ -1201,7 +1201,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	enum drm_mode_status status;
-	bool dsc = false, joiner = false;
+	bool dsc = false;
 	enum intel_joiner_pipe_count joined_pipes = INTEL_PIPE_JOINER_NONE;
 
 	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
@@ -1225,7 +1225,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 
 	if (intel_dp_need_joiner(intel_dp, connector,
 				 mode->hdisplay, target_clock)) {
-		joiner = true;
 		joined_pipes = INTEL_PIPE_JOINER_BIG;
 		max_dotclk *= INTEL_PIPE_JOINER_BIG;
 	}
@@ -1272,14 +1271,14 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 								    max_lanes,
 								    target_clock,
 								    mode->hdisplay,
-								    joiner,
+								    joined_pipes,
 								    output_format,
 								    pipe_bpp, 64);
 			dsc_slice_count =
 				intel_dp_dsc_get_slice_count(connector,
 							     target_clock,
 							     mode->hdisplay,
-							     joiner);
+							     joined_pipes);
 		}
 
 		dsc = dsc_max_compressed_bpp && dsc_slice_count;
@@ -1995,6 +1994,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
 	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
 	int dsc_joiner_max_bpp;
+	int joined_pipes = intel_joiner_num_pipes(pipe_config);
 
 	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
 	dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
@@ -2009,7 +2009,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 
 	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, adjusted_mode->clock,
 								adjusted_mode->hdisplay,
-								pipe_config->joiner_pipes);
+								joined_pipes);
 	dsc_max_bpp = min(dsc_max_bpp, dsc_joiner_max_bpp);
 	dsc_max_bpp = min(dsc_max_bpp, to_bpp_int(limits->link.max_bpp_x16));
 
@@ -2194,6 +2194,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
+	int joined_pipes = intel_joiner_num_pipes(pipe_config);
 	int ret;
 
 	pipe_config->fec_enable = pipe_config->fec_enable ||
@@ -2243,7 +2244,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 			intel_dp_dsc_get_slice_count(connector,
 						     adjusted_mode->crtc_clock,
 						     adjusted_mode->crtc_hdisplay,
-						     pipe_config->joiner_pipes);
+						     joined_pipes);
 		if (!dsc_dp_slice_count) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Compressed Slice Count not supported\n");
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index a8116210c618..acd05dc7b8ad 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -142,7 +142,7 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 					u32 link_clock, u32 lane_count,
 					u32 mode_clock, u32 mode_hdisplay,
-					bool bigjoiner,
+					enum intel_joiner_pipe_count joined_pipes,
 					enum intel_output_format output_format,
 					u32 pipe_bpp,
 					u32 timeslots);
@@ -152,7 +152,7 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
 					 int bpc);
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
-				bool bigjoiner);
+				enum intel_joiner_pipe_count joined_pipes);
 bool intel_dp_need_joiner(struct intel_dp *intel_dp,
 			  struct intel_connector *connector,
 			  int hdisplay, int clock);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 3f45ac7ca4d5..31a2acb7fa11 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -101,11 +101,13 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
 	flags |= crtc_state->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
 
 	if (dsc) {
+		int joined_pipes = intel_joiner_num_pipes(crtc_state);
+
 		flags |= DRM_DP_BW_OVERHEAD_DSC;
 		dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
 							       adjusted_mode->clock,
 							       adjusted_mode->hdisplay,
-							       crtc_state->joiner_pipes);
+							       joined_pipes);
 	}
 
 	overhead = drm_dp_bw_overhead(crtc_state->lane_count,
@@ -1393,7 +1395,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	int ret;
-	bool dsc = false, joiner = false;
+	bool dsc = false;
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	int target_clock = mode->clock;
@@ -1439,7 +1441,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	 */
 	if (intel_dp_need_joiner(intel_dp, intel_connector,
 				 mode->hdisplay, target_clock)) {
-		joiner = true;
 		joined_pipes = INTEL_PIPE_JOINER_BIG;
 		max_dotclk *= INTEL_PIPE_JOINER_BIG;
 	}
@@ -1468,14 +1469,14 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 								    max_lanes,
 								    target_clock,
 								    mode->hdisplay,
-								    joiner,
+								    joined_pipes,
 								    INTEL_OUTPUT_FORMAT_RGB,
 								    pipe_bpp, 64);
 			dsc_slice_count =
 				intel_dp_dsc_get_slice_count(intel_connector,
 							     target_clock,
 							     mode->hdisplay,
-							     joiner);
+							     joined_pipes);
 		}
 
 		dsc = dsc_max_compressed_bpp && dsc_slice_count;
-- 
2.45.2

