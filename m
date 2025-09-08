Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2206B48585
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 09:37:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76C5610E47F;
	Mon,  8 Sep 2025 07:37:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jKAfU9Vl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C64AF10E47F
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 07:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757317075; x=1788853075;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XO2cXvTYV3rCxsQUHKOgt8oktZV0C9AKdpbCKP7RIk4=;
 b=jKAfU9Vlsa8VLTv1EoFdzghM/np6RHz/KOxDdzKvcplZhMYlsO6zi5Gc
 N8GxYsZyDY8+LTPjIHKfdrefbsKDCsvwM5nbsHAeKOzSwGiUBqS7pCpUS
 FSH0q4P1FRhqAqhe1yR8jv7k9Em4xQM7RcmaB3R94huKoHsSDmSGk86mF
 9FGXnDHshA6GAkLafzVydrXPjgREd2taydnSO8SOXs0UHOWKSgtUx41hF
 JKg5kVbUED2GsUtD9vn/aCkn0r5qljWOdbGlFfkoevdPKtTOIYgYbPVIK
 QF5wAF6S6Dv0OpZ6ACK4+0ANoGeKcRo9lrdjkEfiDs2K30zKIXj3ChRje Q==;
X-CSE-ConnectionGUID: sxyfPDpUQYGybb09eCVZEA==
X-CSE-MsgGUID: d+HEo8QYTbKuqBQDwDCmpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="59506305"
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="59506305"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 00:37:55 -0700
X-CSE-ConnectionGUID: BfNvKhHrSWiL5eg43bmHWw==
X-CSE-MsgGUID: L7R/L8jUQb2TSgnR9YUjAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="171986996"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.210])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 00:37:54 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/6] drm/i915/wm: convert x/y-tiling bools to an enum
Date: Mon,  8 Sep 2025 10:35:33 +0300
Message-ID: <20250908073734.1180687-5-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250908073734.1180687-1-luciano.coelho@intel.com>
References: <20250908073734.1180687-1-luciano.coelho@intel.com>
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

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 35 ++++++++++++++------
 1 file changed, 24 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 0ce3420a919e..dd4bed02c3c0 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -53,9 +53,16 @@ struct intel_dbuf_state {
 #define intel_atomic_get_new_dbuf_state(state) \
 	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_intel_display(state)->dbuf.obj))
 
+/* Tiling mode groups relevant to WM calculations */
+enum wm_tiling_mode {
+	WM_TILING_LINEAR,
+	WM_TILING_X_TILED,	/* mostly like linear */
+	WM_TILING_Y_FAMILY,	/* includes Y, Yf and 4 tiling */
+};
+
 /* Stores plane specific WM parameters */
 struct skl_wm_params {
-	bool x_tiled, y_tiled;
+	enum wm_tiling_mode tiling;
 	bool rc_surface;
 	bool is_planar;
 	u32 width;
@@ -618,7 +625,8 @@ static unsigned int skl_wm_latency(struct intel_display *display, int level,
 	     display->platform.cometlake) && skl_watermark_ipc_enabled(display))
 		latency += 4;
 
-	if (skl_needs_memory_bw_wa(display) && wp && wp->x_tiled)
+	if (skl_needs_memory_bw_wa(display) &&
+	    wp && wp->tiling == WM_TILING_X_TILED)
 		latency += 15;
 
 	return latency;
@@ -1674,9 +1682,14 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 	}
 
-	wp->x_tiled = modifier == I915_FORMAT_MOD_X_TILED;
-	wp->y_tiled = modifier != I915_FORMAT_MOD_X_TILED &&
-		intel_fb_is_tiled_modifier(modifier);
+	if (modifier == I915_FORMAT_MOD_X_TILED)
+		wp->tiling = WM_TILING_X_TILED;
+	else if (modifier != I915_FORMAT_MOD_X_TILED &&
+		 intel_fb_is_tiled_modifier(modifier))
+		wp->tiling = WM_TILING_Y_FAMILY;
+	else
+		wp->tiling = WM_TILING_LINEAR;
+
 	wp->rc_surface = intel_fb_is_ccs_modifier(modifier);
 	wp->is_planar = intel_format_info_is_yuv_semiplanar(format, modifier);
 
@@ -1716,7 +1729,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		wp->y_min_scanlines *= 2;
 
 	wp->plane_bytes_per_line = wp->width * wp->cpp;
-	if (wp->y_tiled) {
+	if (wp->tiling == WM_TILING_Y_FAMILY) {
 		interm_pbpl = DIV_ROUND_UP(wp->plane_bytes_per_line *
 					   wp->y_min_scanlines,
 					   wp->dbuf_block_size);
@@ -1732,7 +1745,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		interm_pbpl = DIV_ROUND_UP(wp->plane_bytes_per_line,
 					   wp->dbuf_block_size);
 
-		if (!wp->x_tiled || DISPLAY_VER(display) >= 10)
+		if (wp->tiling != WM_TILING_X_TILED || DISPLAY_VER(display) >= 10)
 			interm_pbpl++;
 
 		wp->plane_blocks_per_line = u32_to_fixed16(interm_pbpl);
@@ -1820,7 +1833,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 latency,
 				 wp->plane_blocks_per_line);
 
-	if (wp->y_tiled) {
+	if (wp->tiling == WM_TILING_Y_FAMILY) {
 		selected_result = max_fixed16(method2, wp->y_tile_minimum);
 	} else {
 		if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
@@ -1870,7 +1883,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 
 		/* Display WA #1126: skl,bxt,kbl */
 		if (level >= 1 && level <= 7) {
-			if (wp->y_tiled) {
+			if (wp->tiling == WM_TILING_Y_FAMILY) {
 				blocks += fixed16_to_u32_round_up(wp->y_tile_minimum);
 				lines += wp->y_min_scanlines;
 			} else {
@@ -1889,7 +1902,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	}
 
 	if (DISPLAY_VER(display) >= 11) {
-		if (wp->y_tiled) {
+		if (wp->tiling == WM_TILING_Y_FAMILY) {
 			int extra_lines;
 
 			if (lines % wp->y_min_scanlines == 0)
@@ -2015,7 +2028,7 @@ static void skl_compute_transition_wm(struct intel_display *display,
 	 */
 	wm0_blocks = wm0->blocks - 1;
 
-	if (wp->y_tiled) {
+	if (wp->tiling == WM_TILING_Y_FAMILY) {
 		trans_y_tile_min =
 			(u16)mul_round_up_u32_fixed16(2, wp->y_tile_minimum);
 		blocks = max(wm0_blocks, trans_y_tile_min) + trans_offset;
-- 
2.50.1

