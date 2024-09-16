Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D19A5979F43
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 12:27:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7999310E341;
	Mon, 16 Sep 2024 10:27:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CV8Rn8kz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6502710E33D
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 10:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726482416; x=1758018416;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3VMMuGSqpXoyIAa3T0aO81w0D8IuED1MC8YHSBqONX0=;
 b=CV8Rn8kzNf/fmJ4DafSkdnXq3moLP9Fkh6qmg2i7sxqQid4JufeXs6LK
 mEte5AG8auNo2GOLvu5OGfN2GzNML18gFxVnvmCyFCJDP7J7sywqiP+WE
 TLc3oXYrVH/KsVphsBF0DYnm2mz92SWdb3jE0J1E3gTvx0nQimBRqRRGL
 yidzPuRDOL4QCdAWQXK6e8Tl5LGVF6tU574nfD2yOKS9al37pZz0zsoSc
 Q2NUWoEY2emGzguzoMJGgcrJi7AgEUBVU/vJ/6M8SXXJe6Pi3FlZ8F0dg
 hvh/HpIYJcJHgh8ZF5fAG876FeENeBOk4kzsabt/U/b7IxGZbvs19Ur20 Q==;
X-CSE-ConnectionGUID: VLenj9z/RLyeQUaPfMjjFA==
X-CSE-MsgGUID: tQBbIgl/SqKmpYNgKhS1Fg==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="25428505"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="25428505"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 03:26:56 -0700
X-CSE-ConnectionGUID: q08nbk/XS1aFp6ISl7w1uw==
X-CSE-MsgGUID: VRR2N2/nTba8p91ooA3MMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="99678266"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 03:26:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 4/4] drm/i915/display: Use joined pipes in dsc helpers for
 slices, bpp
Date: Mon, 16 Sep 2024 15:58:36 +0530
Message-ID: <20240916102836.2149012-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240916102836.2149012-1-ankit.k.nautiyal@intel.com>
References: <20240916102836.2149012-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

v2: Adjust the formulae to use num of pipes as 1 (no joiner) or 2
(bigjoiner). (Ankit)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com> (v1)
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 24 +++++++++++----------
 drivers/gpu/drm/i915/display/intel_dp.h     |  4 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  8 ++++---
 3 files changed, 20 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3157cfbe5555..944c388793be 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -868,14 +868,14 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
 static
 u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 				       u32 mode_clock, u32 mode_hdisplay,
-				       bool bigjoiner)
+				       int num_joined_pipes)
 {
 	u32 max_bpp_small_joiner_ram;
 
 	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
 	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) / mode_hdisplay;
 
-	if (bigjoiner) {
+	if (num_joined_pipes == 2) {
 		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
 		/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
 		int ppc = 2;
@@ -894,7 +894,7 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 					u32 link_clock, u32 lane_count,
 					u32 mode_clock, u32 mode_hdisplay,
-					bool bigjoiner,
+					int num_joined_pipes,
 					enum intel_output_format output_format,
 					u32 pipe_bpp,
 					u32 timeslots)
@@ -940,7 +940,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 				intel_dp_mode_to_fec_clock(mode_clock));
 
 	joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, mode_clock,
-							    mode_hdisplay, bigjoiner);
+							    mode_hdisplay, num_joined_pipes);
 	bits_per_pixel = min(bits_per_pixel, joiner_max_bpp);
 
 	bits_per_pixel = intel_dp_dsc_nearest_valid_bpp(i915, bits_per_pixel, pipe_bpp);
@@ -950,7 +950,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
-				bool bigjoiner)
+				int num_joined_pipes)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	u8 min_slice_count, i;
@@ -984,14 +984,14 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 
 	/* Find the closest match to the valid slice count values */
 	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
-		u8 test_slice_count = valid_dsc_slicecount[i] << bigjoiner;
+		u8 test_slice_count = valid_dsc_slicecount[i] * num_joined_pipes;
 
 		if (test_slice_count >
 		    drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, false))
 			break;
 
 		/* big joiner needs small joiner to be enabled */
-		if (bigjoiner && test_slice_count < 4)
+		if (num_joined_pipes == 2 && test_slice_count < 4)
 			continue;
 
 		if (min_slice_count <= test_slice_count)
@@ -1390,14 +1390,14 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 								    max_lanes,
 								    target_clock,
 								    mode->hdisplay,
-								    joiner,
+								    num_joined_pipes,
 								    output_format,
 								    pipe_bpp, 64);
 			dsc_slice_count =
 				intel_dp_dsc_get_slice_count(connector,
 							     target_clock,
 							     mode->hdisplay,
-							     joiner);
+							     num_joined_pipes);
 		}
 
 		dsc = dsc_max_compressed_bpp && dsc_slice_count;
@@ -2113,6 +2113,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
 	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
 	int dsc_joiner_max_bpp;
+	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 
 	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
 	dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
@@ -2127,7 +2128,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 
 	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, adjusted_mode->clock,
 								adjusted_mode->hdisplay,
-								pipe_config->joiner_pipes);
+								num_joined_pipes);
 	dsc_max_bpp = min(dsc_max_bpp, dsc_joiner_max_bpp);
 	dsc_max_bpp = min(dsc_max_bpp, fxp_q4_to_int(limits->link.max_bpp_x16));
 
@@ -2312,6 +2313,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
+	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 	int ret;
 
 	/*
@@ -2367,7 +2369,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 			intel_dp_dsc_get_slice_count(connector,
 						     adjusted_mode->crtc_clock,
 						     adjusted_mode->crtc_hdisplay,
-						     pipe_config->joiner_pipes);
+						     num_joined_pipes);
 		if (!dsc_dp_slice_count) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Compressed Slice Count not supported\n");
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 3aef57dd463a..a0a31fb64716 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -143,7 +143,7 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 					u32 link_clock, u32 lane_count,
 					u32 mode_clock, u32 mode_hdisplay,
-					bool bigjoiner,
+					int num_joined_pipes,
 					enum intel_output_format output_format,
 					u32 pipe_bpp,
 					u32 timeslots);
@@ -153,7 +153,7 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
 					 int bpc);
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
-				bool bigjoiner);
+				int num_joined_pipes);
 bool intel_dp_need_joiner(struct intel_dp *intel_dp,
 			  struct intel_connector *connector,
 			  int hdisplay, int clock);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 1b94dfe9499a..dc050da29815 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -102,11 +102,13 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
 	flags |= crtc_state->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
 
 	if (dsc) {
+		int num_joined_pipes = intel_crtc_num_joined_pipes(crtc_state);
+
 		flags |= DRM_DP_BW_OVERHEAD_DSC;
 		dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
 							       adjusted_mode->clock,
 							       adjusted_mode->hdisplay,
-							       crtc_state->joiner_pipes);
+							       num_joined_pipes);
 	}
 
 	overhead = drm_dp_bw_overhead(crtc_state->lane_count,
@@ -1501,14 +1503,14 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 								    max_lanes,
 								    target_clock,
 								    mode->hdisplay,
-								    joiner,
+								    num_joined_pipes,
 								    INTEL_OUTPUT_FORMAT_RGB,
 								    pipe_bpp, 64);
 			dsc_slice_count =
 				intel_dp_dsc_get_slice_count(intel_connector,
 							     target_clock,
 							     mode->hdisplay,
-							     joiner);
+							     num_joined_pipes);
 		}
 
 		dsc = dsc_max_compressed_bpp && dsc_slice_count;
-- 
2.45.2

