Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 853F296F4CB
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 14:56:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BA2510EA3F;
	Fri,  6 Sep 2024 12:56:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hB2KIy9r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D105310EA33
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 12:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725627396; x=1757163396;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VM8jhY8/G3kbi2mssYSk/zRS7tSkcfdfeGgk5lAFBLc=;
 b=hB2KIy9rLnRfvVzyOg9ZOfbkUa9OeQRi3lJB+WMQRg6+1pZyJXnYoJdq
 WU1w+AGPWwYnfB/pDmqO1TRI+ZvDiE7nzgdu2lmTr4g7HzMtDHaiV3kop
 pa5hves5slRjqPcECBr63IDiuXY9yIrfKUOTz5h/Ci7KV04JjyGKEwmh8
 woLivboDhFxSIWFNQ0zaUX2yfNIZCEefokNPvfiAxZjeJ2Otl17yWHZ1M
 fkoRov0KH/f9dm+2suiGVJo4v1VgcLWzfJKzB3gkTW4kmu8xYUh1he6mL
 FRkO436an/f0yP7nu8JgEZv3CR5oB8HJfymI4bg8xriYCBvh8bhS64cyb A==;
X-CSE-ConnectionGUID: W8goJH2CR0qRUxV7X98n2w==
X-CSE-MsgGUID: MqCG5ppvQ3G0q4RHODGmNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="24257403"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="24257403"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:36 -0700
X-CSE-ConnectionGUID: 2mpFbC1OSwGeGFdnAn8VRw==
X-CSE-MsgGUID: Z/FZauflTv2lW85wJhq2Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="66691059"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:34 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 04/14] drm/i915/display: Use joined pipes in dsc helpers for
 slices, bpp
Date: Fri,  6 Sep 2024 18:27:57 +0530
Message-ID: <20240906125807.3960642-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
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
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 27 +++++++++++----------
 drivers/gpu/drm/i915/display/intel_dp.h     |  4 +--
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 +++++----
 3 files changed, 22 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 71f33470f7a8..942431a470c3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -859,14 +859,14 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
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
+	if (joined_pipes == INTEL_BIG_JOINER_PIPES) {
 		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
 		/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
 		int ppc = 2;
@@ -885,7 +885,7 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 					u32 link_clock, u32 lane_count,
 					u32 mode_clock, u32 mode_hdisplay,
-					bool bigjoiner,
+					enum intel_joiner_pipe_count joined_pipes,
 					enum intel_output_format output_format,
 					u32 pipe_bpp,
 					u32 timeslots)
@@ -931,7 +931,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 				intel_dp_mode_to_fec_clock(mode_clock));
 
 	joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, mode_clock,
-							    mode_hdisplay, bigjoiner);
+							    mode_hdisplay, joined_pipes);
 	bits_per_pixel = min(bits_per_pixel, joiner_max_bpp);
 
 	bits_per_pixel = intel_dp_dsc_nearest_valid_bpp(i915, bits_per_pixel, pipe_bpp);
@@ -941,7 +941,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
-				bool bigjoiner)
+				enum intel_joiner_pipe_count joined_pipes)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	u8 min_slice_count, i;
@@ -975,14 +975,14 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 
 	/* Find the closest match to the valid slice count values */
 	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
-		u8 test_slice_count = valid_dsc_slicecount[i] << bigjoiner;
+		u8 test_slice_count = valid_dsc_slicecount[i] << (joined_pipes / 2);
 
 		if (test_slice_count >
 		    drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, false))
 			break;
 
 		/* big joiner needs small joiner to be enabled */
-		if (bigjoiner && test_slice_count < 4)
+		if (joined_pipes == INTEL_BIG_JOINER_PIPES && test_slice_count < 4)
 			continue;
 
 		if (min_slice_count <= test_slice_count)
@@ -1308,7 +1308,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	enum drm_mode_status status;
-	bool dsc = false, joiner = false;
+	bool dsc = false;
 	enum intel_joiner_pipe_count joined_pipes = INTEL_NONE_JOINER_PIPES;
 
 	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
@@ -1332,7 +1332,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 
 	if (intel_dp_need_joiner(intel_dp, connector,
 				 mode->hdisplay, target_clock)) {
-		joiner = true;
 		joined_pipes = INTEL_BIG_JOINER_PIPES;
 		max_dotclk *= INTEL_BIG_JOINER_PIPES;
 	}
@@ -1379,14 +1378,14 @@ intel_dp_mode_valid(struct drm_connector *_connector,
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
@@ -2102,6 +2101,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
 	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
 	int dsc_joiner_max_bpp;
+	int joined_pipes = intel_joiner_num_pipes(pipe_config);
 
 	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
 	dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
@@ -2116,7 +2116,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 
 	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, adjusted_mode->clock,
 								adjusted_mode->hdisplay,
-								pipe_config->joiner_pipes);
+								joined_pipes);
 	dsc_max_bpp = min(dsc_max_bpp, dsc_joiner_max_bpp);
 	dsc_max_bpp = min(dsc_max_bpp, fxp_q4_to_int(limits->link.max_bpp_x16));
 
@@ -2301,6 +2301,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
+	int joined_pipes = intel_joiner_num_pipes(pipe_config);
 	int ret;
 
 	pipe_config->fec_enable = pipe_config->fec_enable ||
@@ -2350,7 +2351,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 			intel_dp_dsc_get_slice_count(connector,
 						     adjusted_mode->crtc_clock,
 						     adjusted_mode->crtc_hdisplay,
-						     pipe_config->joiner_pipes);
+						     joined_pipes);
 		if (!dsc_dp_slice_count) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Compressed Slice Count not supported\n");
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 0a14db9bb20f..f284058f5148 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -144,7 +144,7 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 					u32 link_clock, u32 lane_count,
 					u32 mode_clock, u32 mode_hdisplay,
-					bool bigjoiner,
+					enum intel_joiner_pipe_count joined_pipes,
 					enum intel_output_format output_format,
 					u32 pipe_bpp,
 					u32 timeslots);
@@ -154,7 +154,7 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
 					 int bpc);
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
-				bool bigjoiner);
+				enum intel_joiner_pipe_count joined_pipes);
 bool intel_dp_need_joiner(struct intel_dp *intel_dp,
 			  struct intel_connector *connector,
 			  int hdisplay, int clock);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 9aae14a2ed15..ef524935b136 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -102,11 +102,13 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
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
@@ -1427,7 +1429,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	int ret;
-	bool dsc = false, joiner = false;
+	bool dsc = false;
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	int target_clock = mode->clock;
@@ -1473,7 +1475,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	 */
 	if (intel_dp_need_joiner(intel_dp, intel_connector,
 				 mode->hdisplay, target_clock)) {
-		joiner = true;
 		joined_pipes = INTEL_BIG_JOINER_PIPES;
 		max_dotclk *= INTEL_BIG_JOINER_PIPES;
 	}
@@ -1502,14 +1503,14 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
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

