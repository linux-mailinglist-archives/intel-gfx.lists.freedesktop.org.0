Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8538C9C1110
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 22:37:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2025710E8EF;
	Thu,  7 Nov 2024 21:37:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hAWtvNzT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3585A10E8F2;
 Thu,  7 Nov 2024 21:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731015469; x=1762551469;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1G3Pz4n7vq2/UhFjIeP56Uz4eeBYReSBs2sQubjULdQ=;
 b=hAWtvNzTdCGdc2j01yzm7CO9IowkcfFaog/t8ffWBpQE5xrgWxC9QgWn
 q7aRJuZTaFpXj/MJnxQGUEUAdTKfmYbZ69J2DH9pIq5fxWyN8mJl+sgg1
 qUSh1ssjKqajTQUh7i3bB4gLZMtAF+2TPuRd9xsZ8VtUbsaket513aCtU
 g6q02G35HRDfGLjYJuELb6vbe0ODBhgMJZG6cBpQlsI7923ua488U+Orq
 pycTdTqHGtVpr+1bcjxVnI5NJ0eUrn1skSiy3oPpuvaTr8Q2ZwHze2fOx
 N3fi4d8z+CXKT5aTNMU3+tl71dS4g3n6dQyZY35yEnlzK1hQB+axqC8tm A==;
X-CSE-ConnectionGUID: 3vg+uhCvQ0Ci2poLus7b/A==
X-CSE-MsgGUID: 7o+EnRwTRBmRTtuoNf0ypg==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="56282999"
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="56282999"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:49 -0800
X-CSE-ConnectionGUID: hgCjHpxRT0y+lg7tG329fw==
X-CSE-MsgGUID: HWQdnuc3TMOMtPJoCVKpSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="85574884"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v2 v2 10/15] drm/i915/display: convert HAS_HW_SAGV_WM() to struct
 intel_display
Date: Thu,  7 Nov 2024 23:36:44 +0200
Message-Id: <767fa5e527c94ca022dbd245440d6e5aab45f6ad.1731015334.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731015333.git.jani.nikula@intel.com>
References: <cover.1731015333.git.jani.nikula@intel.com>
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

v2: Rebase

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com> # v1
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com> # v1
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
index 44142adde9cc..d01b91b71a90 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -163,7 +163,7 @@ struct intel_display_platforms {
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
index d5c6493c7036..1a4c1fa24820 100644
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
@@ -3196,17 +3198,19 @@ static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 
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
 
 static struct intel_global_state *intel_dbuf_duplicate_state(struct intel_global_obj *obj)
@@ -3677,6 +3681,7 @@ static void skl_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
 void intel_wm_state_verify(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
@@ -3751,7 +3756,7 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 		hw_wm_level = &hw->wm.planes[plane->id].sagv.wm0;
 		sw_wm_level = &sw_wm->planes[plane->id].sagv.wm0;
 
-		if (HAS_HW_SAGV_WM(i915) &&
+		if (HAS_HW_SAGV_WM(display) &&
 		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
 			drm_err(&i915->drm,
 				"[PLANE:%d:%s] mismatch in SAGV WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
@@ -3767,7 +3772,7 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 		hw_wm_level = &hw->wm.planes[plane->id].sagv.trans_wm;
 		sw_wm_level = &sw_wm->planes[plane->id].sagv.trans_wm;
 
-		if (HAS_HW_SAGV_WM(i915) &&
+		if (HAS_HW_SAGV_WM(display) &&
 		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
 			drm_err(&i915->drm,
 				"[PLANE:%d:%s] mismatch in SAGV trans WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
-- 
2.39.5

