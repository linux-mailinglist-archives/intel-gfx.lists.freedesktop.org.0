Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 601A39BBBAC
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 18:20:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08D5610E493;
	Mon,  4 Nov 2024 17:20:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="laGSEJyM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5885D10E48E;
 Mon,  4 Nov 2024 17:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730740823; x=1762276823;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z24wU1Z/IpCE6XT6NVOhpqHxpcfJirXV7pIF7RRbmHY=;
 b=laGSEJyMtr/5UbkfN6wKMxd6F/LEdh6e8AQtGxZzx/Z7AUaVa9zxP1tx
 Ip/czNxPYKFtSy9STrVrUJhGEdvOJMgb2ZdZC2c6GiBoes4HQUzZEbjN+
 HOrkKRCMonwonH8eMEmVHfav5fjm/q2cuUtFh74B4YNDEAd6dhPx7mQDe
 DZ4uoJYbeGD0vgRQDPMe9B4+ZCjTmJDfvTGwQaq7kP3RbE15TfLsL6Err
 WeNlfVaknX9tne3urLgxwEtqQos4rD2fBWEEe6zoFQ+Ylt0HhJJhrBQe1
 mW7k98fgSRiU04wTC+IeECH96VWaqErQd7QyXnLFyPAgR79lV4Zg9bcEb w==;
X-CSE-ConnectionGUID: ZPSmpgX4R02SlngE5r41cQ==
X-CSE-MsgGUID: ES9iEM+1QimRJy99YKruNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="30563931"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="30563931"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:20:21 -0800
X-CSE-ConnectionGUID: qoXb2r5zRuiw8c7jkggbKQ==
X-CSE-MsgGUID: wLkRzqUQQxKukcxLJqbH5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="83815821"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.33])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:20:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 10/15] drm/i915/display: convert HAS_HW_SAGV_WM() to struct
 intel_display
Date: Mon,  4 Nov 2024 19:19:24 +0200
Message-Id: <f8e93ac7bd3c9d7e3bebaf0153eabef74a9b9896.1730740629.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730740629.git.jani.nikula@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
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

Convert HAS_HW_SAGV_WM() to struct intel_display. Do minimal drive-by
conversions to struct intel_display in the callers while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c   |  5 ++-
 .../drm/i915/display/intel_display_device.h   |  2 +-
 .../drm/i915/display/skl_universal_plane.c    |  7 ++--
 drivers/gpu/drm/i915/display/skl_watermark.c  | 33 +++++++++++--------
 4 files changed, 25 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 9ba77970dab7..ed88a28a3afa 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -619,7 +619,6 @@ static void skl_write_cursor_wm(struct intel_dsb *dsb,
 				const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(plane->base.dev);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	const struct skl_pipe_wm *pipe_wm = &crtc_state->wm.skl.optimal;
@@ -627,14 +626,14 @@ static void skl_write_cursor_wm(struct intel_dsb *dsb,
 		&crtc_state->wm.skl.plane_ddb[plane_id];
 	int level;
 
-	for (level = 0; level < i915->display.wm.num_levels; level++)
+	for (level = 0; level < display->wm.num_levels; level++)
 		intel_de_write_dsb(display, dsb, CUR_WM(pipe, level),
 				   skl_cursor_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));
 
 	intel_de_write_dsb(display, dsb, CUR_WM_TRANS(pipe),
 			   skl_cursor_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
 
-	if (HAS_HW_SAGV_WM(i915)) {
+	if (HAS_HW_SAGV_WM(display)) {
 		const struct skl_plane_wm *wm = &pipe_wm->planes[plane_id];
 
 		intel_de_write_dsb(display, dsb, CUR_WM_SAGV(pipe),
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index c23823769911..e1e718fced3c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -162,7 +162,7 @@ struct intel_display_platforms {
 #define HAS_GMBUS_IRQ(i915)		(DISPLAY_VER(i915) >= 4)
 #define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
 #define HAS_GMCH(i915)			(DISPLAY_INFO(i915)->has_gmch)
-#define HAS_HW_SAGV_WM(i915)		(DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
+#define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >= 13 && !(__display)->platform.dgfx)
 #define HAS_IPC(i915)			(DISPLAY_INFO(i915)->has_ipc)
 #define HAS_IPS(__display)		((__display)->platform.haswell_ult || (__display)->platform.broadwell)
 #define HAS_LRR(i915)			(DISPLAY_VER(i915) >= 12)
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 28f7f2405ef3..4c7bcf6806ff 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -736,7 +736,6 @@ static void skl_write_plane_wm(struct intel_dsb *dsb,
 			       const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(plane->base.dev);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	const struct skl_pipe_wm *pipe_wm = &crtc_state->wm.skl.optimal;
@@ -746,14 +745,14 @@ static void skl_write_plane_wm(struct intel_dsb *dsb,
 		&crtc_state->wm.skl.plane_ddb_y[plane_id];
 	int level;
 
-	for (level = 0; level < i915->display.wm.num_levels; level++)
+	for (level = 0; level < display->wm.num_levels; level++)
 		intel_de_write_dsb(display, dsb, PLANE_WM(pipe, plane_id, level),
 				   skl_plane_wm_reg_val(skl_plane_wm_level(pipe_wm, plane_id, level)));
 
 	intel_de_write_dsb(display, dsb, PLANE_WM_TRANS(pipe, plane_id),
 			   skl_plane_wm_reg_val(skl_plane_trans_wm(pipe_wm, plane_id)));
 
-	if (HAS_HW_SAGV_WM(i915)) {
+	if (HAS_HW_SAGV_WM(display)) {
 		const struct skl_plane_wm *wm = &pipe_wm->planes[plane_id];
 
 		intel_de_write_dsb(display, dsb, PLANE_WM_SAGV(pipe, plane_id),
@@ -765,7 +764,7 @@ static void skl_write_plane_wm(struct intel_dsb *dsb,
 	intel_de_write_dsb(display, dsb, PLANE_BUF_CFG(pipe, plane_id),
 			   skl_plane_ddb_reg_val(ddb));
 
-	if (DISPLAY_VER(i915) < 11)
+	if (DISPLAY_VER(display) < 11)
 		intel_de_write_dsb(display, dsb, PLANE_NV12_BUF_CFG(pipe, plane_id),
 				   skl_plane_ddb_reg_val(ddb_y));
 }
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 09af693da586..060e0cfcb47f 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -449,6 +449,7 @@ bool intel_can_enable_sagv(struct drm_i915_private *i915,
 
 static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	int ret;
 	struct intel_crtc *crtc;
@@ -484,7 +485,7 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 		 * other crtcs can't be allowed to use the more optimal
 		 * normal (ie. non-SAGV) watermarks.
 		 */
-		pipe_wm->use_sagv_wm = !HAS_HW_SAGV_WM(i915) &&
+		pipe_wm->use_sagv_wm = !HAS_HW_SAGV_WM(display) &&
 			DISPLAY_VER(i915) >= 12 &&
 			intel_crtc_can_enable_sagv(new_crtc_state);
 
@@ -2748,10 +2749,10 @@ static bool skl_plane_selected_wm_equals(struct intel_plane *plane,
 					 const struct skl_pipe_wm *old_pipe_wm,
 					 const struct skl_pipe_wm *new_pipe_wm)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	int level;
 
-	for (level = 0; level < i915->display.wm.num_levels; level++) {
+	for (level = 0; level < display->wm.num_levels; level++) {
 		/*
 		 * We don't check uv_wm as the hardware doesn't actually
 		 * use it. It only gets used for calculating the required
@@ -2762,7 +2763,7 @@ static bool skl_plane_selected_wm_equals(struct intel_plane *plane,
 			return false;
 	}
 
-	if (HAS_HW_SAGV_WM(i915)) {
+	if (HAS_HW_SAGV_WM(display)) {
 		const struct skl_plane_wm *old_wm = &old_pipe_wm->planes[plane->id];
 		const struct skl_plane_wm *new_wm = &new_pipe_wm->planes[plane->id];
 
@@ -2937,6 +2938,7 @@ static void skl_wm_level_from_reg_val(u32 val, struct skl_wm_level *level)
 static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 				     struct skl_pipe_wm *out)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	enum plane_id plane_id;
@@ -2962,7 +2964,7 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 
 		skl_wm_level_from_reg_val(val, &wm->trans_wm);
 
-		if (HAS_HW_SAGV_WM(i915)) {
+		if (HAS_HW_SAGV_WM(display)) {
 			if (plane_id != PLANE_CURSOR)
 				val = intel_de_read(i915, PLANE_WM_SAGV(pipe, plane_id));
 			else
@@ -3131,6 +3133,7 @@ static void skl_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
 void intel_wm_state_verify(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
@@ -3205,7 +3208,7 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 		hw_wm_level = &hw->wm.planes[plane->id].sagv.wm0;
 		sw_wm_level = &sw_wm->planes[plane->id].sagv.wm0;
 
-		if (HAS_HW_SAGV_WM(i915) &&
+		if (HAS_HW_SAGV_WM(display) &&
 		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
 			drm_err(&i915->drm,
 				"[PLANE:%d:%s] mismatch in SAGV WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
@@ -3221,7 +3224,7 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 		hw_wm_level = &hw->wm.planes[plane->id].sagv.trans_wm;
 		sw_wm_level = &sw_wm->planes[plane->id].sagv.trans_wm;
 
-		if (HAS_HW_SAGV_WM(i915) &&
+		if (HAS_HW_SAGV_WM(display) &&
 		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
 			drm_err(&i915->drm,
 				"[PLANE:%d:%s] mismatch in SAGV trans WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
@@ -3392,17 +3395,19 @@ static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 
 static void skl_setup_wm_latency(struct drm_i915_private *i915)
 {
-	if (HAS_HW_SAGV_WM(i915))
-		i915->display.wm.num_levels = 6;
+	struct intel_display *display = &i915->display;
+
+	if (HAS_HW_SAGV_WM(display))
+		display->wm.num_levels = 6;
 	else
-		i915->display.wm.num_levels = 8;
+		display->wm.num_levels = 8;
 
-	if (DISPLAY_VER(i915) >= 14)
-		mtl_read_wm_latency(i915, i915->display.wm.skl_latency);
+	if (DISPLAY_VER(display) >= 14)
+		mtl_read_wm_latency(i915, display->wm.skl_latency);
 	else
-		skl_read_wm_latency(i915, i915->display.wm.skl_latency);
+		skl_read_wm_latency(i915, display->wm.skl_latency);
 
-	intel_print_wm_latency(i915, "Gen9 Plane", i915->display.wm.skl_latency);
+	intel_print_wm_latency(i915, "Gen9 Plane", display->wm.skl_latency);
 }
 
 static const struct intel_wm_funcs skl_wm_funcs = {
-- 
2.39.5

