Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B387BC089F
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 09:57:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 466C210E59C;
	Tue,  7 Oct 2025 07:57:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A2319qad";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EDE910E592
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Oct 2025 07:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759823872; x=1791359872;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3DqdTdQKmPy2hnnrnjUcsHhGXTRYvXFo07GY5znVZcw=;
 b=A2319qad9qm0dGbdv1dWiLW+ModYwdBswXXD1sKqafgbd8cu13+CbZP7
 Tyu0Wku8+HikNKOwztGi+NlntQo6Bl90bmff4aP9iowv6odCrAOT+OOB9
 2uGW+f2jypL7JC0SaEyFHZPWWxQ2dGOvL9FupYvnrUXxrarmjWTrzsgBC
 WmIqzdxDQyVMQ6RsReyG8/Rb748kcIPvYMcUZIbVudlYWvfyjMbENKEHj
 gQa+KhLXB224DiIL9xfI76U6Ao6/2qS4nN96tsQYCHfDE6+TP5/JDmlP6
 bWyh169KqaAYbTAQZfM7VsrRtVx5aG4J9cwgkcWstzvNsajo/sWJ2T8Z/ Q==;
X-CSE-ConnectionGUID: MJtnYLIoRQiZe8m4INu+eQ==
X-CSE-MsgGUID: 9cSeTcQcSRWm5zgQn6o8Xg==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="73104917"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="73104917"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 00:57:52 -0700
X-CSE-ConnectionGUID: nnOAFdetSaec7mubfw2xbQ==
X-CSE-MsgGUID: 8gQq4zR4QSqOdSdJUym2Dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="180017698"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.206])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 00:57:50 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 4/7] drm/i915/wm: convert x/y-tiling bools to an enum
Date: Tue,  7 Oct 2025 10:56:38 +0300
Message-ID: <20251007075729.468669-5-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251007075729.468669-1-luciano.coelho@intel.com>
References: <20251007075729.468669-1-luciano.coelho@intel.com>
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

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 38 +++++++++++++-------
 1 file changed, 25 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 3a982458395e..dc00b5cd3ff7 100644
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
+	    wp && wp->tiling == WM_TILING_X_TILED)
 		latency += 15;
 
 	return latency;
@@ -1659,9 +1667,13 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 	}
 
-	wp->x_tiled = modifier == I915_FORMAT_MOD_X_TILED;
-	wp->y_tiled = modifier != I915_FORMAT_MOD_X_TILED &&
-		intel_fb_is_tiled_modifier(modifier);
+	if (modifier == WM_TILING_LINEAR)
+		wp->tiling = WM_TILING_LINEAR;
+	else if (modifier == I915_FORMAT_MOD_X_TILED)
+		wp->tiling = WM_TILING_X_TILED;
+	else
+		wp->tiling = WM_TILING_Y_Yf_4;
+
 	wp->rc_surface = intel_fb_is_ccs_modifier(modifier);
 	wp->is_planar = intel_format_info_is_yuv_semiplanar(format, modifier);
 
@@ -1701,7 +1713,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		wp->y_min_scanlines *= 2;
 
 	wp->plane_bytes_per_line = wp->width * wp->cpp;
-	if (wp->y_tiled) {
+	if (wp->tiling == WM_TILING_Y_FAMILY) {
 		interm_pbpl = DIV_ROUND_UP(wp->plane_bytes_per_line *
 					   wp->y_min_scanlines,
 					   wp->dbuf_block_size);
@@ -1717,7 +1729,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		interm_pbpl = DIV_ROUND_UP(wp->plane_bytes_per_line,
 					   wp->dbuf_block_size);
 
-		if (!wp->x_tiled || DISPLAY_VER(display) >= 10)
+		if (wp->tiling != WM_TILING_X_TILED || DISPLAY_VER(display) >= 10)
 			interm_pbpl++;
 
 		wp->plane_blocks_per_line = u32_to_fixed16(interm_pbpl);
@@ -1805,7 +1817,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 latency,
 				 wp->plane_blocks_per_line);
 
-	if (wp->y_tiled) {
+	if (wp->tiling == WM_TILING_Y_FAMILY) {
 		selected_result = max_fixed16(method2, wp->y_tile_minimum);
 	} else {
 		if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
@@ -1855,7 +1867,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 
 		/* Display WA #1126: skl,bxt,kbl */
 		if (level >= 1 && level <= 7) {
-			if (wp->y_tiled) {
+			if (wp->tiling == WM_TILING_Y_FAMILY) {
 				blocks += fixed16_to_u32_round_up(wp->y_tile_minimum);
 				lines += wp->y_min_scanlines;
 			} else {
@@ -1877,7 +1889,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	lines = max_t(u32, lines, result_prev->lines);
 
 	if (DISPLAY_VER(display) >= 11) {
-		if (wp->y_tiled) {
+		if (wp->tiling == WM_TILING_Y_FAMILY) {
 			int extra_lines;
 
 			if (lines % wp->y_min_scanlines == 0)
@@ -2003,7 +2015,7 @@ static void skl_compute_transition_wm(struct intel_display *display,
 	 */
 	wm0_blocks = wm0->blocks - 1;
 
-	if (wp->y_tiled) {
+	if (wp->tiling == WM_TILING_Y_FAMILY) {
 		trans_y_tile_min =
 			(u16)mul_round_up_u32_fixed16(2, wp->y_tile_minimum);
 		blocks = max(wm0_blocks, trans_y_tile_min) + trans_offset;
-- 
2.51.0

