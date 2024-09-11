Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7DB97534F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 15:12:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D89910EA1B;
	Wed, 11 Sep 2024 13:12:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SoCx7k4I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A45410EA1A
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726060343; x=1757596343;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I6uhciS18h+db4ffJXpNEWFIm2DCeDBYrysHqHduj/o=;
 b=SoCx7k4I0L5N7UR+H4xmBGPulhhCKiyuW/UtSKpznztacIlmqkBaCxam
 zCyusSw10fzwA8By9N4lBgtAtbTl0AZFH+Iu4ZlhJdyfhDoOuTQl19+tG
 9pjFjdFlkc3zaN4yGlW9ooY4tjKzFl6dU8AXtoUj5T9NXhrlOm2gwzfsd
 soPGlcT78ds2wSpXinDMQ3gaB7NuFLZZbR5FGWeV52iXeBEdnXcpftefK
 YXWbrBe9DO2t6nzMdmT1x10pZsglO8q2aMVfl8WgNTVXIt+to80zLIZKX
 auJ1p9zalzyuDm4hIPURIO65QPj5zrI2k5szB529Sa4G08qqds02H6PeM Q==;
X-CSE-ConnectionGUID: F5jxF5rITOOFscfSrCBMRg==
X-CSE-MsgGUID: LlEIPeJLQp+7qXsf/ZpIhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="36244381"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="36244381"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:23 -0700
X-CSE-ConnectionGUID: BYQd01kETBGb7K2H4D0bCw==
X-CSE-MsgGUID: +5155OwTRDqxAb5fzucqrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67380986"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:21 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 09/19] drm/i915/display: Use joined pipes in dsc helpers for
 slices, bpp
Date: Wed, 11 Sep 2024 18:43:39 +0530
Message-ID: <20240911131349.933814-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
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

v2: Adjust the formulae to use num of pipes as 1 (no joiner) or 2
(bigjoiner). (Ankit)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com> (v1)
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c      | 30 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_dp.h      |  5 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 15 +++++-----
 5 files changed, 26 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index decfc72312fa..a4201e96d6d9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -278,7 +278,7 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
 		crtc->pipe == joiner_primary_pipe(crtc_state);
 }
 
-static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
+int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
 {
 	return hweight8(crtc_state->joiner_pipes) ?: 1;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index d6af9e3f52a9..366f300a5169 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -586,5 +586,6 @@ bool assert_port_valid(struct drm_i915_private *i915, enum port port);
 })
 
 bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
+int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 63eef9d97f25..4b05a717cce3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -859,14 +859,14 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
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
@@ -885,7 +885,7 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
 u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 					u32 link_clock, u32 lane_count,
 					u32 mode_clock, u32 mode_hdisplay,
-					bool bigjoiner,
+					int num_joined_pipes,
 					enum intel_output_format output_format,
 					u32 pipe_bpp,
 					u32 timeslots)
@@ -931,7 +931,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 				intel_dp_mode_to_fec_clock(mode_clock));
 
 	joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, mode_clock,
-							    mode_hdisplay, bigjoiner);
+							    mode_hdisplay, num_joined_pipes);
 	bits_per_pixel = min(bits_per_pixel, joiner_max_bpp);
 
 	bits_per_pixel = intel_dp_dsc_nearest_valid_bpp(i915, bits_per_pixel, pipe_bpp);
@@ -941,7 +941,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
-				bool bigjoiner)
+				int num_pipes)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	u8 min_slice_count, i;
@@ -975,14 +975,14 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 
 	/* Find the closest match to the valid slice count values */
 	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
-		u8 test_slice_count = valid_dsc_slicecount[i] << bigjoiner;
+		u8 test_slice_count = valid_dsc_slicecount[i] * num_pipes;
 
 		if (test_slice_count >
 		    drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, false))
 			break;
 
 		/* big joiner needs small joiner to be enabled */
-		if (bigjoiner && test_slice_count < 4)
+		if (num_pipes == 2 && test_slice_count < 4)
 			continue;
 
 		if (min_slice_count <= test_slice_count)
@@ -1326,7 +1326,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	enum drm_mode_status status;
-	bool dsc = false, joiner = false;
+	bool dsc = false;
 	int num_joined_pipes;
 
 	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
@@ -1351,10 +1351,8 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	num_joined_pipes = intel_dp_compute_joiner_pipes(intel_dp, connector,
 							 mode->hdisplay, target_clock);
 
-	if (num_joined_pipes == 2) {
-		joiner = true;
+	if (num_joined_pipes == 2)
 		max_dotclk *= 2;
-	}
 
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
@@ -1399,14 +1397,14 @@ intel_dp_mode_valid(struct drm_connector *_connector,
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
@@ -2122,6 +2120,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
 	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
 	int dsc_joiner_max_bpp;
+	int num_joined_pipes = intel_joiner_num_pipes(pipe_config);
 
 	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
 	dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
@@ -2136,7 +2135,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 
 	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, adjusted_mode->clock,
 								adjusted_mode->hdisplay,
-								pipe_config->joiner_pipes);
+								num_joined_pipes);
 	dsc_max_bpp = min(dsc_max_bpp, dsc_joiner_max_bpp);
 	dsc_max_bpp = min(dsc_max_bpp, fxp_q4_to_int(limits->link.max_bpp_x16));
 
@@ -2321,6 +2320,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
+	int num_joined_pipes = intel_joiner_num_pipes(pipe_config);
 	int ret;
 
 	pipe_config->fec_enable = pipe_config->fec_enable ||
@@ -2370,7 +2370,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 			intel_dp_dsc_get_slice_count(connector,
 						     adjusted_mode->crtc_clock,
 						     adjusted_mode->crtc_hdisplay,
-						     pipe_config->joiner_pipes);
+						     num_joined_pipes);
 		if (!dsc_dp_slice_count) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Compressed Slice Count not supported\n");
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index cc08a309eb78..4aa8d1c8b7fc 100644
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
@@ -153,11 +153,10 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
 					 int bpc);
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
-				bool bigjoiner);
+				int num_pipes);
 int intel_dp_compute_joiner_pipes(struct intel_dp *intel_dp,
 				  struct intel_connector *connector,
 				  int hdisplay, int clock);
-
 static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
 {
 	return ~((1 << lane_count) - 1) & 0xf;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index bd069c34c5e6..be79783ce09b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -102,11 +102,13 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
 	flags |= crtc_state->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
 
 	if (dsc) {
+		int num_joined_pipes = intel_joiner_num_pipes(crtc_state);
+
 		flags |= DRM_DP_BW_OVERHEAD_DSC;
 		dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
 							       adjusted_mode->clock,
 							       adjusted_mode->hdisplay,
-							       crtc_state->joiner_pipes);
+							       num_joined_pipes);
 	}
 
 	overhead = drm_dp_bw_overhead(crtc_state->lane_count,
@@ -1424,7 +1426,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	int ret;
-	bool dsc = false, joiner = false;
+	bool dsc = false;
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	int target_clock = mode->clock;
@@ -1470,11 +1472,8 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	 */
 	num_joined_pipes = intel_dp_compute_joiner_pipes(intel_dp, intel_connector,
 							 mode->hdisplay, target_clock);
-	if (num_joined_pipes == 2) {
-		joiner = true;
-		num_joined_pipes = 2;
+	if (num_joined_pipes == 2)
 		max_dotclk *= 2;
-	}
 
 	ret = drm_modeset_lock(&mgr->base.lock, ctx);
 	if (ret)
@@ -1500,14 +1499,14 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
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

