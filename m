Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A29DEBC7D20
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 09:55:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FA7510E96A;
	Thu,  9 Oct 2025 07:55:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H/9kDt3T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A50D610E96A
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 07:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759996545; x=1791532545;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lWtcH11gPhhr+z5aT+AYqFjox9FYB+GfZ8A9P3M1X80=;
 b=H/9kDt3TcI83CE+25pzuzEvT/qqKm1PlJiIk2F7o8axgvTaRNc2gZZDK
 DVtuJ4SkdRsZpmpHEdNb4erA7e2kcOsrdXxg8nbMMmq+qA1qvKD+w5eSS
 14tOsmwdEqsNJAXKWH3uMtsOBEbQJrg1Tk74jktKbgDsb8jZCre7IQ/wo
 sLX5GhqZ6yF0oar4CVAZZpwtJ8rZDJjnG4dYChrrbr2ToiTLiLaa9pMnS
 mvLLuvcr1afwje4CxDg9T+8ybWDkZ55a/s/RZK09XcSvzupSQG9jr+plc
 EqBO6IgDr+BrlYXxRbqexhzAwyH2ULMbfpAWIXZbop0ygDCVXhGJGfEYL Q==;
X-CSE-ConnectionGUID: uzdl2h8zR7WXOOYVfONNIA==
X-CSE-MsgGUID: ds56sEdTSEamd1oPMgw+Zg==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="72880733"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="72880733"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:55:45 -0700
X-CSE-ConnectionGUID: 3tRdYPwWQ8yd72n5zYeRBQ==
X-CSE-MsgGUID: mEYZMUuxQ+OPGTbQaHBDwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="211600963"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.0])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:55:43 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v3 4/7] drm/i915/wm: convert x/y-tiling bools to an enum
Date: Thu,  9 Oct 2025 10:54:35 +0300
Message-ID: <20251009075517.837587-5-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251009075517.837587-1-luciano.coelho@intel.com>
References: <20251009075517.837587-1-luciano.coelho@intel.com>
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

There are currently two booleans to define three tiling modes, which
is bad practice because it allows representing an invalid mode.  In
order to simplify this, convert these two booleans into one
enumeration with three possible tiling modes.

Additionally, introduce the concept of Y "family" of tiling, which
groups Y, Yf and 4 tiling, since they're effectively treated in the
same way in the watermark calculations.  Describe the grouping in the
enumeration definition.

v2: - remove redundant "tiled" and get rid of "family" in the enums (Ville)
    - remove holes introduced in the skl_wm_params struct (Ville)
    - improve if-else block to avoid intel_fb_is_tiled_modifier() call (Ville)

v3:
    - fix rebase damage (Jani)

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 51 ++++++++++++++------
 1 file changed, 37 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 3a982458395e..f3af372767d0 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -53,13 +53,20 @@ struct intel_dbuf_state {
 #define intel_atomic_get_new_dbuf_state(state) \
 	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_intel_display(state)->dbuf.obj))
 
+/* Tiling mode groups relevant to WM calculations */
+enum wm_tiling_mode {
+	WM_TILING_LINEAR,
+	WM_TILING_X,
+	WM_TILING_Y_Yf_4,
+};
+
 /* Stores plane specific WM parameters */
 struct skl_wm_params {
-	bool x_tiled, y_tiled;
-	bool rc_surface;
-	bool is_planar;
+	enum wm_tiling_mode tiling;
 	u32 width;
 	u8 cpp;
+	bool rc_surface;
+	bool is_planar;
 	u32 plane_pixel_rate;
 	u32 y_min_scanlines;
 	u32 plane_bytes_per_line;
@@ -618,7 +625,8 @@ static unsigned int skl_wm_latency(struct intel_display *display, int level,
 	     display->platform.cometlake) && skl_watermark_ipc_enabled(display))
 		latency += 4;
 
-	if (skl_needs_memory_bw_wa(display) && wp && wp->x_tiled)
+	if (skl_needs_memory_bw_wa(display) &&
+	    wp && wp->tiling == WM_TILING_X)
 		latency += 15;
 
 	return latency;
@@ -1659,9 +1667,13 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 	}
 
-	wp->x_tiled = modifier == I915_FORMAT_MOD_X_TILED;
-	wp->y_tiled = modifier != I915_FORMAT_MOD_X_TILED &&
-		intel_fb_is_tiled_modifier(modifier);
+	if (modifier == DRM_FORMAT_MOD_LINEAR)
+		wp->tiling = WM_TILING_LINEAR;
+	else if (modifier == I915_FORMAT_MOD_X_TILED)
+		wp->tiling = WM_TILING_X;
+	else
+		wp->tiling = WM_TILING_Y_Yf_4;
+
 	wp->rc_surface = intel_fb_is_ccs_modifier(modifier);
 	wp->is_planar = intel_format_info_is_yuv_semiplanar(format, modifier);
 
@@ -1701,7 +1713,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		wp->y_min_scanlines *= 2;
 
 	wp->plane_bytes_per_line = wp->width * wp->cpp;
-	if (wp->y_tiled) {
+	if (wp->tiling == WM_TILING_Y_Yf_4) {
 		interm_pbpl = DIV_ROUND_UP(wp->plane_bytes_per_line *
 					   wp->y_min_scanlines,
 					   wp->dbuf_block_size);
@@ -1717,7 +1729,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		interm_pbpl = DIV_ROUND_UP(wp->plane_bytes_per_line,
 					   wp->dbuf_block_size);
 
-		if (!wp->x_tiled || DISPLAY_VER(display) >= 10)
+		if (wp->tiling != WM_TILING_X || DISPLAY_VER(display) >= 10)
 			interm_pbpl++;
 
 		wp->plane_blocks_per_line = u32_to_fixed16(interm_pbpl);
@@ -1805,9 +1817,20 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 latency,
 				 wp->plane_blocks_per_line);
 
-	if (wp->y_tiled) {
+	switch (wp->tiling) {
+	case WM_TILING_Y_Yf_4:
 		selected_result = max_fixed16(method2, wp->y_tile_minimum);
-	} else {
+		break;
+
+	default:
+		MISSING_CASE(wp->tiling);
+		fallthrough;
+	case WM_TILING_LINEAR:
+	case WM_TILING_X:
+		/*
+		 * Special case for unrealistically small horizontal
+		 * total with plane downscaling.
+		 */
 		if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
 		     wp->dbuf_block_size < 1) &&
 		     (wp->plane_bytes_per_line / wp->dbuf_block_size < 1)) {
@@ -1855,7 +1878,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 
 		/* Display WA #1126: skl,bxt,kbl */
 		if (level >= 1 && level <= 7) {
-			if (wp->y_tiled) {
+			if (wp->tiling == WM_TILING_Y_Yf_4) {
 				blocks += fixed16_to_u32_round_up(wp->y_tile_minimum);
 				lines += wp->y_min_scanlines;
 			} else {
@@ -1877,7 +1900,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	lines = max_t(u32, lines, result_prev->lines);
 
 	if (DISPLAY_VER(display) >= 11) {
-		if (wp->y_tiled) {
+		if (wp->tiling == WM_TILING_Y_Yf_4) {
 			int extra_lines;
 
 			if (lines % wp->y_min_scanlines == 0)
@@ -2003,7 +2026,7 @@ static void skl_compute_transition_wm(struct intel_display *display,
 	 */
 	wm0_blocks = wm0->blocks - 1;
 
-	if (wp->y_tiled) {
+	if (wp->tiling == WM_TILING_Y_Yf_4) {
 		trans_y_tile_min =
 			(u16)mul_round_up_u32_fixed16(2, wp->y_tile_minimum);
 		blocks = max(wm0_blocks, trans_y_tile_min) + trans_offset;
-- 
2.51.0

