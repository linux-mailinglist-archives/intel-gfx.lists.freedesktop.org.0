Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64566A79FB0
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 11:12:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFE2610E96A;
	Thu,  3 Apr 2025 09:12:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YkyVNLfP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E93610E96A;
 Thu,  3 Apr 2025 09:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743671533; x=1775207533;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vtzhOxi38iSVjbhk+PTRmguHTlTOHM4vSV5NephDnTk=;
 b=YkyVNLfPfAeNILv235iHMrV8q8UOVNSolSxMHEIG9A7THrJgUtD0NXIc
 xBQ4Q57gEanx0TzNmnAltbT3eP2+MwTGP6Oh8hSlPCZqNmJft1IIUXrAw
 BG48cc/IptHJg3bfHNw2TZeUK85jRSzw2w4e1AGmQCHElt89I/+CwhljQ
 BAsfHctKS3SdGwBodn9vFpexO27qfafwyxl00NiwBOkN5gWg10ciVxfY+
 ef9NAH1jsW8TBeoI7E7riu7JCewGD/oQgUmd6hcGUExUUtyl71WwIRyZ9
 cB2gJgTk4phuhshJHYqrnVDu1yTtLRnXmEHEGJQ31kSnRGR3eaA13y4mi g==;
X-CSE-ConnectionGUID: DYS6svGVRWi2TITRhNZbcA==
X-CSE-MsgGUID: Y2VdU+fLTIKHQgXu8tc8aA==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="45206529"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="45206529"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:12:04 -0700
X-CSE-ConnectionGUID: rdnT6dkCQsu/4/A9KK0weA==
X-CSE-MsgGUID: RE5BpN08TtKUJrmI0fN4PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="127806495"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.158])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:12:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/7] drm/i915/wm: convert skl_watermarks.c internally to
 struct intel_display
Date: Thu,  3 Apr 2025 12:11:36 +0300
Message-Id: <afa94cbf1a221ebd5f5011151f50011ae05f0814.1743671373.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1743671373.git.jani.nikula@intel.com>
References: <cover.1743671373.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of skl_watermarks.c to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 539 +++++++++----------
 1 file changed, 251 insertions(+), 288 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 758d59965d33..16c96f6c8842 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -35,7 +35,7 @@
  */
 #define DSB_EXE_TIME 100
 
-static void skl_sagv_disable(struct drm_i915_private *i915);
+static void skl_sagv_disable(struct intel_display *display);
 
 /* Stores plane specific WM parameters */
 struct skl_wm_params {
@@ -70,9 +70,9 @@ u8 intel_enabled_dbuf_slices_mask(struct intel_display *display)
  * FIXME: We still don't have the proper code detect if we need to apply the WA,
  * so assume we'll always need it in order to avoid underruns.
  */
-static bool skl_needs_memory_bw_wa(struct drm_i915_private *i915)
+static bool skl_needs_memory_bw_wa(struct intel_display *display)
 {
-	return DISPLAY_VER(i915) == 9;
+	return DISPLAY_VER(display) == 9;
 }
 
 bool
@@ -82,9 +82,9 @@ intel_has_sagv(struct intel_display *display)
 }
 
 static u32
-intel_sagv_block_time(struct drm_i915_private *i915)
+intel_sagv_block_time(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (DISPLAY_VER(display) >= 14) {
 		u32 val;
@@ -114,10 +114,8 @@ intel_sagv_block_time(struct drm_i915_private *i915)
 	}
 }
 
-static void intel_sagv_init(struct drm_i915_private *i915)
+static void intel_sagv_init(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-
 	if (!HAS_SAGV(display))
 		display->sagv.status = I915_SAGV_NOT_CONTROLLED;
 
@@ -126,11 +124,11 @@ static void intel_sagv_init(struct drm_i915_private *i915)
 	 * For icl+ this was already determined by intel_bw_init_hw().
 	 */
 	if (DISPLAY_VER(display) < 11)
-		skl_sagv_disable(i915);
+		skl_sagv_disable(display);
 
 	drm_WARN_ON(display->drm, display->sagv.status == I915_SAGV_UNKNOWN);
 
-	display->sagv.block_time_us = intel_sagv_block_time(i915);
+	display->sagv.block_time_us = intel_sagv_block_time(display);
 
 	drm_dbg_kms(display->drm, "SAGV supported: %s, original SAGV block time: %u us\n",
 		    str_yes_no(intel_has_sagv(display)), display->sagv.block_time_us);
@@ -156,18 +154,18 @@ static void intel_sagv_init(struct drm_i915_private *i915)
  *  - All planes can enable watermarks for latencies >= SAGV engine block time
  *  - We're not using an interlaced display configuration
  */
-static void skl_sagv_enable(struct drm_i915_private *i915)
+static void skl_sagv_enable(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	int ret;
 
 	if (!intel_has_sagv(display))
 		return;
 
-	if (i915->display.sagv.status == I915_SAGV_ENABLED)
+	if (display->sagv.status == I915_SAGV_ENABLED)
 		return;
 
-	drm_dbg_kms(&i915->drm, "Enabling SAGV\n");
+	drm_dbg_kms(display->drm, "Enabling SAGV\n");
 	ret = snb_pcode_write(&i915->uncore, GEN9_PCODE_SAGV_CONTROL,
 			      GEN9_SAGV_ENABLE);
 
@@ -177,30 +175,30 @@ static void skl_sagv_enable(struct drm_i915_private *i915)
 	 * Some skl systems, pre-release machines in particular,
 	 * don't actually have SAGV.
 	 */
-	if (IS_SKYLAKE(i915) && ret == -ENXIO) {
-		drm_dbg(&i915->drm, "No SAGV found on system, ignoring\n");
-		i915->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
+	if (display->platform.skylake && ret == -ENXIO) {
+		drm_dbg(display->drm, "No SAGV found on system, ignoring\n");
+		display->sagv.status = I915_SAGV_NOT_CONTROLLED;
 		return;
 	} else if (ret < 0) {
-		drm_err(&i915->drm, "Failed to enable SAGV\n");
+		drm_err(display->drm, "Failed to enable SAGV\n");
 		return;
 	}
 
-	i915->display.sagv.status = I915_SAGV_ENABLED;
+	display->sagv.status = I915_SAGV_ENABLED;
 }
 
-static void skl_sagv_disable(struct drm_i915_private *i915)
+static void skl_sagv_disable(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	int ret;
 
 	if (!intel_has_sagv(display))
 		return;
 
-	if (i915->display.sagv.status == I915_SAGV_DISABLED)
+	if (display->sagv.status == I915_SAGV_DISABLED)
 		return;
 
-	drm_dbg_kms(&i915->drm, "Disabling SAGV\n");
+	drm_dbg_kms(display->drm, "Disabling SAGV\n");
 	/* bspec says to keep retrying for at least 1 ms */
 	ret = skl_pcode_request(&i915->uncore, GEN9_PCODE_SAGV_CONTROL,
 				GEN9_SAGV_DISABLE,
@@ -210,22 +208,21 @@ static void skl_sagv_disable(struct drm_i915_private *i915)
 	 * Some skl systems, pre-release machines in particular,
 	 * don't actually have SAGV.
 	 */
-	if (IS_SKYLAKE(i915) && ret == -ENXIO) {
-		drm_dbg(&i915->drm, "No SAGV found on system, ignoring\n");
-		i915->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
+	if (display->platform.skylake && ret == -ENXIO) {
+		drm_dbg(display->drm, "No SAGV found on system, ignoring\n");
+		display->sagv.status = I915_SAGV_NOT_CONTROLLED;
 		return;
 	} else if (ret < 0) {
-		drm_err(&i915->drm, "Failed to disable SAGV (%d)\n", ret);
+		drm_err(display->drm, "Failed to disable SAGV (%d)\n", ret);
 		return;
 	}
 
-	i915->display.sagv.status = I915_SAGV_DISABLED;
+	display->sagv.status = I915_SAGV_DISABLED;
 }
 
 static void skl_sagv_pre_plane_update(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_bw_state *new_bw_state =
 		intel_atomic_get_new_bw_state(state);
 
@@ -233,13 +230,12 @@ static void skl_sagv_pre_plane_update(struct intel_atomic_state *state)
 		return;
 
 	if (!intel_can_enable_sagv(display, new_bw_state))
-		skl_sagv_disable(i915);
+		skl_sagv_disable(display);
 }
 
 static void skl_sagv_post_plane_update(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_bw_state *new_bw_state =
 		intel_atomic_get_new_bw_state(state);
 
@@ -247,13 +243,12 @@ static void skl_sagv_post_plane_update(struct intel_atomic_state *state)
 		return;
 
 	if (intel_can_enable_sagv(display, new_bw_state))
-		skl_sagv_enable(i915);
+		skl_sagv_enable(display);
 }
 
 static void icl_sagv_pre_plane_update(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct intel_bw_state *old_bw_state =
 		intel_atomic_get_old_bw_state(state);
 	const struct intel_bw_state *new_bw_state =
@@ -271,7 +266,7 @@ static void icl_sagv_pre_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_bw_state->base.changed);
 
-	drm_dbg_kms(&i915->drm, "Restricting QGV points: 0x%x -> 0x%x\n",
+	drm_dbg_kms(display->drm, "Restricting QGV points: 0x%x -> 0x%x\n",
 		    old_mask, new_mask);
 
 	/*
@@ -286,7 +281,6 @@ static void icl_sagv_pre_plane_update(struct intel_atomic_state *state)
 static void icl_sagv_post_plane_update(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct intel_bw_state *old_bw_state =
 		intel_atomic_get_old_bw_state(state);
 	const struct intel_bw_state *new_bw_state =
@@ -304,7 +298,7 @@ static void icl_sagv_post_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_bw_state->base.changed);
 
-	drm_dbg_kms(&i915->drm, "Relaxing QGV points: 0x%x -> 0x%x\n",
+	drm_dbg_kms(display->drm, "Relaxing QGV points: 0x%x -> 0x%x\n",
 		    old_mask, new_mask);
 
 	/*
@@ -319,7 +313,6 @@ static void icl_sagv_post_plane_update(struct intel_atomic_state *state)
 void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 
 	/*
 	 * Just return if we can't control SAGV or don't have it.
@@ -331,7 +324,7 @@ void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
 	if (!intel_has_sagv(display))
 		return;
 
-	if (DISPLAY_VER(i915) >= 11)
+	if (DISPLAY_VER(display) >= 11)
 		icl_sagv_pre_plane_update(state);
 	else
 		skl_sagv_pre_plane_update(state);
@@ -340,7 +333,6 @@ void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
 void intel_sagv_post_plane_update(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 
 	/*
 	 * Just return if we can't control SAGV or don't have it.
@@ -352,7 +344,7 @@ void intel_sagv_post_plane_update(struct intel_atomic_state *state)
 	if (!intel_has_sagv(display))
 		return;
 
-	if (DISPLAY_VER(i915) >= 11)
+	if (DISPLAY_VER(display) >= 11)
 		icl_sagv_post_plane_update(state);
 	else
 		skl_sagv_post_plane_update(state);
@@ -362,7 +354,6 @@ static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum plane_id plane_id;
 	int max_level = INT_MAX;
 
@@ -385,7 +376,7 @@ static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 			continue;
 
 		/* Find the highest enabled wm level for this plane */
-		for (level = i915->display.wm.num_levels - 1;
+		for (level = display->wm.num_levels - 1;
 		     !wm->wm[level].enable; --level)
 		     { }
 
@@ -433,13 +424,12 @@ static bool tgl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 
 static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (!i915->display.params.enable_sagv)
+	if (!display->params.enable_sagv)
 		return false;
 
-	if (DISPLAY_VER(i915) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		return tgl_crtc_can_enable_sagv(crtc_state);
 	else
 		return skl_crtc_can_enable_sagv(crtc_state);
@@ -458,7 +448,6 @@ bool intel_can_enable_sagv(struct intel_display *display,
 static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	int ret;
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *new_crtc_state;
@@ -494,7 +483,7 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 		 * normal (ie. non-SAGV) watermarks.
 		 */
 		pipe_wm->use_sagv_wm = !HAS_HW_SAGV_WM(display) &&
-			DISPLAY_VER(i915) >= 12 &&
+			DISPLAY_VER(display) >= 12 &&
 			intel_crtc_can_enable_sagv(new_crtc_state);
 
 		if (intel_crtc_can_enable_sagv(new_crtc_state))
@@ -538,17 +527,17 @@ static u16 skl_ddb_entry_init(struct skl_ddb_entry *entry,
 	return end;
 }
 
-static int intel_dbuf_slice_size(struct drm_i915_private *i915)
+static int intel_dbuf_slice_size(struct intel_display *display)
 {
-	return DISPLAY_INFO(i915)->dbuf.size /
-		hweight8(DISPLAY_INFO(i915)->dbuf.slice_mask);
+	return DISPLAY_INFO(display)->dbuf.size /
+		hweight8(DISPLAY_INFO(display)->dbuf.slice_mask);
 }
 
 static void
-skl_ddb_entry_for_slices(struct drm_i915_private *i915, u8 slice_mask,
+skl_ddb_entry_for_slices(struct intel_display *display, u8 slice_mask,
 			 struct skl_ddb_entry *ddb)
 {
-	int slice_size = intel_dbuf_slice_size(i915);
+	int slice_size = intel_dbuf_slice_size(display);
 
 	if (!slice_mask) {
 		ddb->start = 0;
@@ -560,10 +549,10 @@ skl_ddb_entry_for_slices(struct drm_i915_private *i915, u8 slice_mask,
 	ddb->end = fls(slice_mask) * slice_size;
 
 	WARN_ON(ddb->start >= ddb->end);
-	WARN_ON(ddb->end > DISPLAY_INFO(i915)->dbuf.size);
+	WARN_ON(ddb->end > DISPLAY_INFO(display)->dbuf.size);
 }
 
-static unsigned int mbus_ddb_offset(struct drm_i915_private *i915, u8 slice_mask)
+static unsigned int mbus_ddb_offset(struct intel_display *display, u8 slice_mask)
 {
 	struct skl_ddb_entry ddb;
 
@@ -572,7 +561,7 @@ static unsigned int mbus_ddb_offset(struct drm_i915_private *i915, u8 slice_mask
 	else if (slice_mask & (BIT(DBUF_S3) | BIT(DBUF_S4)))
 		slice_mask = BIT(DBUF_S3);
 
-	skl_ddb_entry_for_slices(i915, slice_mask, &ddb);
+	skl_ddb_entry_for_slices(display, slice_mask, &ddb);
 
 	return ddb.start;
 }
@@ -580,8 +569,7 @@ static unsigned int mbus_ddb_offset(struct drm_i915_private *i915, u8 slice_mask
 u32 skl_ddb_dbuf_slice_mask(struct intel_display *display,
 			    const struct skl_ddb_entry *entry)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-	int slice_size = intel_dbuf_slice_size(i915);
+	int slice_size = intel_dbuf_slice_size(display);
 	enum dbuf_slice start_slice, end_slice;
 	u8 slice_mask = 0;
 
@@ -627,15 +615,14 @@ static void intel_crtc_dbuf_weights(const struct intel_dbuf_state *dbuf_state,
 				    unsigned int *weight_end,
 				    unsigned int *weight_total)
 {
-	struct drm_i915_private *i915 =
-		to_i915(dbuf_state->base.state->base.dev);
+	struct intel_display *display = to_intel_display(dbuf_state->base.state->base.dev);
 	enum pipe pipe;
 
 	*weight_start = 0;
 	*weight_end = 0;
 	*weight_total = 0;
 
-	for_each_pipe(i915, pipe) {
+	for_each_pipe(display, pipe) {
 		int weight = dbuf_state->weight[pipe];
 
 		/*
@@ -661,7 +648,7 @@ static void intel_crtc_dbuf_weights(const struct intel_dbuf_state *dbuf_state,
 static int
 skl_crtc_allocate_ddb(struct intel_atomic_state *state, struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	unsigned int weight_total, weight_start, weight_end;
 	const struct intel_dbuf_state *old_dbuf_state =
 		intel_atomic_get_old_dbuf_state(state);
@@ -683,8 +670,8 @@ skl_crtc_allocate_ddb(struct intel_atomic_state *state, struct intel_crtc *crtc)
 
 	dbuf_slice_mask = new_dbuf_state->slices[pipe];
 
-	skl_ddb_entry_for_slices(i915, dbuf_slice_mask, &ddb_slices);
-	mbus_offset = mbus_ddb_offset(i915, dbuf_slice_mask);
+	skl_ddb_entry_for_slices(display, dbuf_slice_mask, &ddb_slices);
+	mbus_offset = mbus_ddb_offset(display, dbuf_slice_mask);
 	ddb_range_size = skl_ddb_entry_size(&ddb_slices);
 
 	intel_crtc_dbuf_weights(new_dbuf_state, pipe,
@@ -718,7 +705,7 @@ skl_crtc_allocate_ddb(struct intel_atomic_state *state, struct intel_crtc *crtc)
 	crtc_state->wm.skl.ddb.start = mbus_offset + new_dbuf_state->ddb[pipe].start;
 	crtc_state->wm.skl.ddb.end = mbus_offset + new_dbuf_state->ddb[pipe].end;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[CRTC:%d:%s] dbuf slices 0x%x -> 0x%x, ddb (%d - %d) -> (%d - %d), active pipes 0x%x -> 0x%x\n",
 		    crtc->base.base.id, crtc->base.name,
 		    old_dbuf_state->slices[pipe], new_dbuf_state->slices[pipe],
@@ -743,11 +730,10 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 const struct skl_wm_level *result_prev,
 				 struct skl_wm_level *result /* out */);
 
-static unsigned int skl_wm_latency(struct drm_i915_private *i915, int level,
+static unsigned int skl_wm_latency(struct intel_display *display, int level,
 				   const struct skl_wm_params *wp)
 {
-	struct intel_display *display = &i915->display;
-	unsigned int latency = i915->display.wm.skl_latency[level];
+	unsigned int latency = display->wm.skl_latency[level];
 
 	if (latency == 0)
 		return 0;
@@ -756,11 +742,11 @@ static unsigned int skl_wm_latency(struct drm_i915_private *i915, int level,
 	 * WaIncreaseLatencyIPCEnabled: kbl,cfl
 	 * Display WA #1141: kbl,cfl
 	 */
-	if ((IS_KABYLAKE(i915) || IS_COFFEELAKE(i915) || IS_COMETLAKE(i915)) &&
-	    skl_watermark_ipc_enabled(display))
+	if ((display->platform.kabylake || display->platform.coffeelake ||
+	     display->platform.cometlake) && skl_watermark_ipc_enabled(display))
 		latency += 4;
 
-	if (skl_needs_memory_bw_wa(i915) && wp && wp->x_tiled)
+	if (skl_needs_memory_bw_wa(display) && wp && wp->x_tiled)
 		latency += 15;
 
 	return latency;
@@ -770,8 +756,8 @@ static unsigned int
 skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 		      int num_active)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_plane *plane = to_intel_plane(crtc_state->uapi.crtc->cursor);
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	struct skl_wm_level wm = {};
 	int ret, min_ddb_alloc = 0;
 	struct skl_wm_params wp;
@@ -782,10 +768,10 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 				    DRM_FORMAT_MOD_LINEAR,
 				    DRM_MODE_ROTATE_0,
 				    crtc_state->pixel_rate, &wp, 0, 0);
-	drm_WARN_ON(&i915->drm, ret);
+	drm_WARN_ON(display->drm, ret);
 
-	for (level = 0; level < i915->display.wm.num_levels; level++) {
-		unsigned int latency = skl_wm_latency(i915, level, &wp);
+	for (level = 0; level < display->wm.num_levels; level++) {
+		unsigned int latency = skl_wm_latency(display, level, &wp);
 
 		skl_compute_plane_wm(crtc_state, plane, level, latency, &wp, &wm, &wm);
 		if (wm.min_ddb_alloc == U16_MAX)
@@ -807,14 +793,13 @@ static void skl_ddb_entry_init_from_hw(struct skl_ddb_entry *entry, u32 reg)
 }
 
 static void
-skl_ddb_get_hw_plane_state(struct drm_i915_private *i915,
+skl_ddb_get_hw_plane_state(struct intel_display *display,
 			   const enum pipe pipe,
 			   const enum plane_id plane_id,
 			   struct skl_ddb_entry *ddb,
 			   struct skl_ddb_entry *ddb_y,
 			   u16 *min_ddb, u16 *interim_ddb)
 {
-	struct intel_display *display = &i915->display;
 	u32 val;
 
 	/* Cursor doesn't support NV12/planar, so no extra calculation needed */
@@ -847,7 +832,6 @@ static void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
 				      u16 *min_ddb, u16 *interim_ddb)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum intel_display_power_domain power_domain;
 	enum pipe pipe = crtc->pipe;
 	intel_wakeref_t wakeref;
@@ -859,7 +843,7 @@ static void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
 		return;
 
 	for_each_plane_id_on_crtc(crtc, plane_id)
-		skl_ddb_get_hw_plane_state(i915, pipe,
+		skl_ddb_get_hw_plane_state(display, pipe,
 					   plane_id,
 					   &ddb[plane_id],
 					   &ddb_y[plane_id],
@@ -1377,16 +1361,16 @@ static u8 dg2_compute_dbuf_slices(enum pipe pipe, u8 active_pipes, bool join_mbu
 
 static u8 skl_compute_dbuf_slices(struct intel_crtc *crtc, u8 active_pipes, bool join_mbus)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
 
-	if (IS_DG2(i915))
+	if (display->platform.dg2)
 		return dg2_compute_dbuf_slices(pipe, active_pipes, join_mbus);
-	else if (DISPLAY_VER(i915) >= 13)
+	else if (DISPLAY_VER(display) >= 13)
 		return adlp_compute_dbuf_slices(pipe, active_pipes, join_mbus);
-	else if (DISPLAY_VER(i915) == 12)
+	else if (DISPLAY_VER(display) == 12)
 		return tgl_compute_dbuf_slices(pipe, active_pipes, join_mbus);
-	else if (DISPLAY_VER(i915) == 11)
+	else if (DISPLAY_VER(display) == 11)
 		return icl_compute_dbuf_slices(pipe, active_pipes, join_mbus);
 	/*
 	 * For anything else just return one slice yet.
@@ -1426,8 +1410,8 @@ skl_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 static u64
 skl_total_relative_data_rate(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum plane_id plane_id;
 	u64 data_rate = 0;
 
@@ -1437,7 +1421,7 @@ skl_total_relative_data_rate(const struct intel_crtc_state *crtc_state)
 
 		data_rate += crtc_state->rel_data_rate[plane_id];
 
-		if (DISPLAY_VER(i915) < 11)
+		if (DISPLAY_VER(display) < 11)
 			data_rate += crtc_state->rel_data_rate_y[plane_id];
 	}
 
@@ -1499,7 +1483,7 @@ skl_check_nv12_wm_level(struct skl_wm_level *wm, struct skl_wm_level *uv_wm,
 	}
 }
 
-static bool skl_need_wm_copy_wa(struct drm_i915_private *i915, int level,
+static bool skl_need_wm_copy_wa(struct intel_display *display, int level,
 				const struct skl_plane_wm *wm)
 {
 	/*
@@ -1553,7 +1537,6 @@ static int
 skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_dbuf_state *dbuf_state =
@@ -1595,7 +1578,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	 * Find the highest watermark level for which we can satisfy the block
 	 * requirement of active planes.
 	 */
-	for (level = i915->display.wm.num_levels - 1; level >= 0; level--) {
+	for (level = display->wm.num_levels - 1; level >= 0; level--) {
 		blocks = 0;
 		for_each_plane_id_on_crtc(crtc, plane_id) {
 			const struct skl_plane_wm *wm =
@@ -1606,7 +1589,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 					&crtc_state->wm.skl.plane_ddb[plane_id];
 
 				if (wm->wm[level].min_ddb_alloc > skl_ddb_entry_size(ddb)) {
-					drm_WARN_ON(&i915->drm,
+					drm_WARN_ON(display->drm,
 						    wm->wm[level].min_ddb_alloc != U16_MAX);
 					blocks = U32_MAX;
 					break;
@@ -1625,9 +1608,9 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	}
 
 	if (level < 0) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Requested display configuration exceeds system DDB limitations");
-		drm_dbg_kms(&i915->drm, "minimum required %d/%d\n",
+		drm_dbg_kms(display->drm, "minimum required %d/%d\n",
 			    blocks, iter.size);
 		return -EINVAL;
 	}
@@ -1655,7 +1638,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 		if (plane_id == PLANE_CURSOR)
 			continue;
 
-		if (DISPLAY_VER(i915) < 11 &&
+		if (DISPLAY_VER(display) < 11 &&
 		    crtc_state->nv12_planes & BIT(plane_id)) {
 			skl_allocate_plane_ddb(&iter, ddb_y, &wm->wm[level],
 					       crtc_state->rel_data_rate_y[plane_id]);
@@ -1671,7 +1654,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 			*interim_ddb = wm->sagv.wm0.min_ddb_alloc;
 		}
 	}
-	drm_WARN_ON(&i915->drm, iter.size != 0 || iter.data_rate != 0);
+	drm_WARN_ON(display->drm, iter.size != 0 || iter.data_rate != 0);
 
 	/*
 	 * When we calculated watermark values we didn't know how high
@@ -1679,7 +1662,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	 * all levels as "enabled."  Go back now and disable the ones
 	 * that aren't actually possible.
 	 */
-	for (level++; level < i915->display.wm.num_levels; level++) {
+	for (level++; level < display->wm.num_levels; level++) {
 		for_each_plane_id_on_crtc(crtc, plane_id) {
 			const struct skl_ddb_entry *ddb =
 				&crtc_state->wm.skl.plane_ddb[plane_id];
@@ -1688,7 +1671,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 			struct skl_plane_wm *wm =
 				&crtc_state->wm.skl.optimal.planes[plane_id];
 
-			if (DISPLAY_VER(i915) < 11 &&
+			if (DISPLAY_VER(display) < 11 &&
 			    crtc_state->nv12_planes & BIT(plane_id))
 				skl_check_nv12_wm_level(&wm->wm[level],
 							&wm->uv_wm[level],
@@ -1696,7 +1679,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 			else
 				skl_check_wm_level(&wm->wm[level], ddb);
 
-			if (skl_need_wm_copy_wa(i915, level, wm)) {
+			if (skl_need_wm_copy_wa(display, level, wm)) {
 				wm->wm[level].blocks = wm->wm[level - 1].blocks;
 				wm->wm[level].lines = wm->wm[level - 1].lines;
 				wm->wm[level].ignore_lines = wm->wm[level - 1].ignore_lines;
@@ -1718,7 +1701,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 		struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane_id];
 
-		if (DISPLAY_VER(i915) < 11 &&
+		if (DISPLAY_VER(display) < 11 &&
 		    crtc_state->nv12_planes & BIT(plane_id)) {
 			skl_check_wm_level(&wm->trans_wm, ddb_y);
 		} else {
@@ -1744,7 +1727,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
  * 2xcdclk is 1350 MHz and the pixel rate should never exceed that.
  */
 static uint_fixed_16_16_t
-skl_wm_method1(const struct drm_i915_private *i915, u32 pixel_rate,
+skl_wm_method1(struct intel_display *display, u32 pixel_rate,
 	       u8 cpp, u32 latency, u32 dbuf_block_size)
 {
 	u32 wm_intermediate_val;
@@ -1756,7 +1739,7 @@ skl_wm_method1(const struct drm_i915_private *i915, u32 pixel_rate,
 	wm_intermediate_val = latency * pixel_rate * cpp;
 	ret = div_fixed16(wm_intermediate_val, 1000 * dbuf_block_size);
 
-	if (DISPLAY_VER(i915) >= 10)
+	if (DISPLAY_VER(display) >= 10)
 		ret = add_fixed16_u32(ret, 1);
 
 	return ret;
@@ -1782,7 +1765,7 @@ skl_wm_method2(u32 pixel_rate, u32 pipe_htotal, u32 latency,
 static uint_fixed_16_16_t
 intel_get_linetime_us(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	u32 pixel_rate;
 	u32 crtc_htotal;
 	uint_fixed_16_16_t linetime_us;
@@ -1792,7 +1775,7 @@ intel_get_linetime_us(const struct intel_crtc_state *crtc_state)
 
 	pixel_rate = crtc_state->pixel_rate;
 
-	if (drm_WARN_ON(&i915->drm, pixel_rate == 0))
+	if (drm_WARN_ON(display->drm, pixel_rate == 0))
 		return u32_to_fixed16(0);
 
 	crtc_htotal = crtc_state->hw.pipe_mode.crtc_htotal;
@@ -1808,15 +1791,13 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		      u32 plane_pixel_rate, struct skl_wm_params *wp,
 		      int color_plane, unsigned int pan_x)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	u32 interm_pbpl;
 
 	/* only planar format has two planes */
 	if (color_plane == 1 &&
 	    !intel_format_info_is_yuv_semiplanar(format, modifier)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Non planar format have single plane\n");
 		return -EINVAL;
 	}
@@ -1834,7 +1815,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 	wp->cpp = format->cpp[color_plane];
 	wp->plane_pixel_rate = plane_pixel_rate;
 
-	if (DISPLAY_VER(i915) >= 11 &&
+	if (DISPLAY_VER(display) >= 11 &&
 	    modifier == I915_FORMAT_MOD_Yf_TILED  && wp->cpp == 1)
 		wp->dbuf_block_size = 256;
 	else
@@ -1859,7 +1840,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		wp->y_min_scanlines = 4;
 	}
 
-	if (skl_needs_memory_bw_wa(i915))
+	if (skl_needs_memory_bw_wa(display))
 		wp->y_min_scanlines *= 2;
 
 	wp->plane_bytes_per_line = wp->width * wp->cpp;
@@ -1870,7 +1851,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 
 		if (DISPLAY_VER(display) >= 30)
 			interm_pbpl += (pan_x != 0);
-		else if (DISPLAY_VER(i915) >= 10)
+		else if (DISPLAY_VER(display) >= 10)
 			interm_pbpl++;
 
 		wp->plane_blocks_per_line = div_fixed16(interm_pbpl,
@@ -1879,7 +1860,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		interm_pbpl = DIV_ROUND_UP(wp->plane_bytes_per_line,
 					   wp->dbuf_block_size);
 
-		if (!wp->x_tiled || DISPLAY_VER(i915) >= 10)
+		if (!wp->x_tiled || DISPLAY_VER(display) >= 10)
 			interm_pbpl++;
 
 		wp->plane_blocks_per_line = u32_to_fixed16(interm_pbpl);
@@ -1916,18 +1897,18 @@ skl_compute_plane_wm_params(const struct intel_crtc_state *crtc_state,
 				     plane_state->uapi.src.x1);
 }
 
-static bool skl_wm_has_lines(struct drm_i915_private *i915, int level)
+static bool skl_wm_has_lines(struct intel_display *display, int level)
 {
-	if (DISPLAY_VER(i915) >= 10)
+	if (DISPLAY_VER(display) >= 10)
 		return true;
 
 	/* The number of lines are ignored for the level 0 watermark. */
 	return level > 0;
 }
 
-static int skl_wm_max_lines(struct drm_i915_private *i915)
+static int skl_wm_max_lines(struct intel_display *display)
 {
-	if (DISPLAY_VER(i915) >= 13)
+	if (DISPLAY_VER(display) >= 13)
 		return 255;
 	else
 		return 31;
@@ -1948,7 +1929,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 const struct skl_wm_level *result_prev,
 				 struct skl_wm_level *result /* out */)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	uint_fixed_16_16_t method1, method2;
 	uint_fixed_16_16_t selected_result;
 	u32 blocks, lines, min_ddb_alloc = 0;
@@ -1960,7 +1941,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 		return;
 	}
 
-	method1 = skl_wm_method1(i915, wp->plane_pixel_rate,
+	method1 = skl_wm_method1(display, wp->plane_pixel_rate,
 				 wp->cpp, latency, wp->dbuf_block_size);
 	method2 = skl_wm_method2(wp->plane_pixel_rate,
 				 crtc_state->hw.pipe_mode.crtc_htotal,
@@ -1975,7 +1956,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 		     (wp->plane_bytes_per_line / wp->dbuf_block_size < 1)) {
 			selected_result = method2;
 		} else if (latency >= wp->linetime_us) {
-			if (DISPLAY_VER(i915) == 9)
+			if (DISPLAY_VER(display) == 9)
 				selected_result = min_fixed16(method1, method2);
 			else
 				selected_result = method2;
@@ -1985,7 +1966,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	}
 
 	blocks = fixed16_to_u32_round_up(selected_result);
-	if (DISPLAY_VER(i915) < 30)
+	if (DISPLAY_VER(display) < 30)
 		blocks++;
 
 	/*
@@ -2004,13 +1985,13 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	 * channels' impact on the level 0 memory latency and the relevant
 	 * wm calculations.
 	 */
-	if (skl_wm_has_lines(i915, level))
+	if (skl_wm_has_lines(display, level))
 		blocks = max(blocks,
 			     fixed16_to_u32_round_up(wp->plane_blocks_per_line));
 	lines = div_round_up_fixed16(selected_result,
 				     wp->plane_blocks_per_line);
 
-	if (DISPLAY_VER(i915) == 9) {
+	if (DISPLAY_VER(display) == 9) {
 		/* Display WA #1125: skl,bxt,kbl */
 		if (level == 0 && wp->rc_surface)
 			blocks += fixed16_to_u32_round_up(wp->y_tile_minimum);
@@ -2035,7 +2016,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 		}
 	}
 
-	if (DISPLAY_VER(i915) >= 11) {
+	if (DISPLAY_VER(display) >= 11) {
 		if (wp->y_tiled) {
 			int extra_lines;
 
@@ -2052,10 +2033,10 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 		}
 	}
 
-	if (!skl_wm_has_lines(i915, level))
+	if (!skl_wm_has_lines(display, level))
 		lines = 0;
 
-	if (lines > skl_wm_max_lines(i915)) {
+	if (lines > skl_wm_max_lines(display)) {
 		/* reject it */
 		result->min_ddb_alloc = U16_MAX;
 		return;
@@ -2074,8 +2055,8 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	result->enable = true;
 	result->auto_min_alloc_wm_enable = xe3_auto_min_alloc_capable(plane, level);
 
-	if (DISPLAY_VER(i915) < 12 && i915->display.sagv.block_time_us)
-		result->can_sagv = latency >= i915->display.sagv.block_time_us;
+	if (DISPLAY_VER(display) < 12 && display->sagv.block_time_us)
+		result->can_sagv = latency >= display->sagv.block_time_us;
 }
 
 static void
@@ -2084,13 +2065,13 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
 		      const struct skl_wm_params *wm_params,
 		      struct skl_wm_level *levels)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct skl_wm_level *result_prev = &levels[0];
 	int level;
 
-	for (level = 0; level < i915->display.wm.num_levels; level++) {
+	for (level = 0; level < display->wm.num_levels; level++) {
 		struct skl_wm_level *result = &levels[level];
-		unsigned int latency = skl_wm_latency(i915, level, wm_params);
+		unsigned int latency = skl_wm_latency(display, level, wm_params);
 
 		skl_compute_plane_wm(crtc_state, plane, level, latency,
 				     wm_params, result_prev, result);
@@ -2104,26 +2085,25 @@ static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
 				const struct skl_wm_params *wm_params,
 				struct skl_plane_wm *plane_wm)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct skl_wm_level *sagv_wm = &plane_wm->sagv.wm0;
 	struct skl_wm_level *levels = plane_wm->wm;
 	unsigned int latency = 0;
 
-	if (i915->display.sagv.block_time_us)
-		latency = i915->display.sagv.block_time_us +
-			skl_wm_latency(i915, 0, wm_params);
+	if (display->sagv.block_time_us)
+		latency = display->sagv.block_time_us +
+			skl_wm_latency(display, 0, wm_params);
 
 	skl_compute_plane_wm(crtc_state, plane, 0, latency,
 			     wm_params, &levels[0],
 			     sagv_wm);
 }
 
-static void skl_compute_transition_wm(struct drm_i915_private *i915,
+static void skl_compute_transition_wm(struct intel_display *display,
 				      struct skl_wm_level *trans_wm,
 				      const struct skl_wm_level *wm0,
 				      const struct skl_wm_params *wp)
 {
-	struct intel_display *display = &i915->display;
 	u16 trans_min, trans_amount, trans_y_tile_min;
 	u16 wm0_blocks, trans_offset, blocks;
 
@@ -2135,16 +2115,16 @@ static void skl_compute_transition_wm(struct drm_i915_private *i915,
 	 * WaDisableTWM:skl,kbl,cfl,bxt
 	 * Transition WM are not recommended by HW team for GEN9
 	 */
-	if (DISPLAY_VER(i915) == 9)
+	if (DISPLAY_VER(display) == 9)
 		return;
 
-	if (DISPLAY_VER(i915) >= 11)
+	if (DISPLAY_VER(display) >= 11)
 		trans_min = 4;
 	else
 		trans_min = 14;
 
 	/* Display WA #1140: glk,cnl */
-	if (DISPLAY_VER(i915) == 10)
+	if (DISPLAY_VER(display) == 10)
 		trans_amount = 0;
 	else
 		trans_amount = 10; /* This is configurable amount */
@@ -2186,8 +2166,7 @@ static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
 				     const struct intel_plane_state *plane_state,
 				     struct intel_plane *plane, int color_plane)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct skl_plane_wm *wm = &crtc_state->wm.skl.raw.planes[plane->id];
 	struct skl_wm_params wm_params;
 	int ret;
@@ -2199,13 +2178,13 @@ static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
 
 	skl_compute_wm_levels(crtc_state, plane, &wm_params, wm->wm);
 
-	skl_compute_transition_wm(i915, &wm->trans_wm,
+	skl_compute_transition_wm(display, &wm->trans_wm,
 				  &wm->wm[0], &wm_params);
 
-	if (DISPLAY_VER(i915) >= 12) {
+	if (DISPLAY_VER(display) >= 12) {
 		tgl_compute_sagv_wm(crtc_state, plane, &wm_params, wm);
 
-		skl_compute_transition_wm(i915, &wm->sagv.trans_wm,
+		skl_compute_transition_wm(display, &wm->sagv.trans_wm,
 					  &wm->sagv.wm0, &wm_params);
 	}
 
@@ -2265,8 +2244,8 @@ static int skl_build_plane_wm(struct intel_crtc_state *crtc_state,
 static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
 			      const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	struct skl_plane_wm *wm = &crtc_state->wm.skl.raw.planes[plane_id];
 	int ret;
@@ -2280,9 +2259,9 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
 	if (plane_state->planar_linked_plane) {
 		const struct drm_framebuffer *fb = plane_state->hw.fb;
 
-		drm_WARN_ON(&i915->drm,
+		drm_WARN_ON(display->drm,
 			    !intel_wm_plane_visible(crtc_state, plane_state));
-		drm_WARN_ON(&i915->drm, !fb->format->is_yuv ||
+		drm_WARN_ON(display->drm, !fb->format->is_yuv ||
 			    fb->format->num_planes == 1);
 
 		ret = skl_build_plane_wm_single(crtc_state, plane_state,
@@ -2422,15 +2401,14 @@ static int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
 static int skl_max_wm_level_for_vblank(struct intel_crtc_state *crtc_state,
 				       int wm0_lines)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	int level;
 
-	for (level = i915->display.wm.num_levels - 1; level >= 0; level--) {
+	for (level = display->wm.num_levels - 1; level >= 0; level--) {
 		int latency;
 
 		/* FIXME should we care about the latency w/a's? */
-		latency = skl_wm_latency(i915, level, NULL);
+		latency = skl_wm_latency(display, level, NULL);
 		if (latency == 0)
 			continue;
 
@@ -2447,8 +2425,8 @@ static int skl_max_wm_level_for_vblank(struct intel_crtc_state *crtc_state,
 
 static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	int wm0_lines, level;
 
 	if (!crtc_state->hw.active)
@@ -2464,9 +2442,9 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 	 * PSR needs to toggle LATENCY_REPORTING_REMOVED_PIPE_*
 	 * based on whether we're limited by the vblank duration.
 	 */
-	crtc_state->wm_level_disabled = level < i915->display.wm.num_levels - 1;
+	crtc_state->wm_level_disabled = level < display->wm.num_levels - 1;
 
-	for (level++; level < i915->display.wm.num_levels; level++) {
+	for (level++; level < display->wm.num_levels; level++) {
 		enum plane_id plane_id;
 
 		for_each_plane_id_on_crtc(crtc, plane_id) {
@@ -2482,10 +2460,10 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 		}
 	}
 
-	if (DISPLAY_VER(i915) >= 12 &&
-	    i915->display.sagv.block_time_us &&
+	if (DISPLAY_VER(display) >= 12 &&
+	    display->sagv.block_time_us &&
 	    skl_is_vblank_too_short(crtc_state, wm0_lines,
-				    i915->display.sagv.block_time_us)) {
+				    display->sagv.block_time_us)) {
 		enum plane_id plane_id;
 
 		for_each_plane_id_on_crtc(crtc, plane_id) {
@@ -2503,7 +2481,7 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 static int skl_build_pipe_wm(struct intel_atomic_state *state,
 			     struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_plane_state *plane_state;
@@ -2519,7 +2497,7 @@ static int skl_build_pipe_wm(struct intel_atomic_state *state,
 		if (plane->pipe != crtc->pipe)
 			continue;
 
-		if (DISPLAY_VER(i915) >= 11)
+		if (DISPLAY_VER(display) >= 11)
 			ret = icl_build_plane_wm(crtc_state, plane_state);
 		else
 			ret = skl_build_plane_wm(crtc_state, plane_state);
@@ -2542,11 +2520,10 @@ static bool skl_wm_level_equals(const struct skl_wm_level *l1,
 		l1->auto_min_alloc_wm_enable == l2->auto_min_alloc_wm_enable;
 }
 
-static bool skl_plane_wm_equals(struct drm_i915_private *i915,
+static bool skl_plane_wm_equals(struct intel_display *display,
 				const struct skl_plane_wm *wm1,
 				const struct skl_plane_wm *wm2)
 {
-	struct intel_display *display = &i915->display;
 	int level;
 
 	for (level = 0; level < display->wm.num_levels; level++) {
@@ -2601,14 +2578,14 @@ static int
 skl_ddb_add_affected_planes(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_plane *plane;
 
-	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
+	for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
 		struct intel_plane_state *plane_state;
 		enum plane_id plane_id = plane->id;
 
@@ -2619,7 +2596,7 @@ skl_ddb_add_affected_planes(struct intel_atomic_state *state,
 			continue;
 
 		if (new_crtc_state->do_async_flip) {
-			drm_dbg_kms(&i915->drm, "[PLANE:%d:%s] Can't change DDB during async flip\n",
+			drm_dbg_kms(display->drm, "[PLANE:%d:%s] Can't change DDB during async flip\n",
 				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
@@ -2638,7 +2615,7 @@ skl_ddb_add_affected_planes(struct intel_atomic_state *state,
 
 static u8 intel_dbuf_enabled_slices(const struct intel_dbuf_state *dbuf_state)
 {
-	struct drm_i915_private *i915 = to_i915(dbuf_state->base.state->base.dev);
+	struct intel_display *display = to_intel_display(dbuf_state->base.state->base.dev);
 	u8 enabled_slices;
 	enum pipe pipe;
 
@@ -2648,7 +2625,7 @@ static u8 intel_dbuf_enabled_slices(const struct intel_dbuf_state *dbuf_state)
 	 */
 	enabled_slices = BIT(DBUF_S1);
 
-	for_each_pipe(i915, pipe)
+	for_each_pipe(display, pipe)
 		enabled_slices |= dbuf_state->slices[pipe];
 
 	return enabled_slices;
@@ -2658,7 +2635,6 @@ static int
 skl_compute_ddb(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_dbuf_state *old_dbuf_state;
 	struct intel_dbuf_state *new_dbuf_state = NULL;
 	struct intel_crtc_state *new_crtc_state;
@@ -2697,7 +2673,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
 		}
 	}
 
-	for_each_intel_crtc(&i915->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		enum pipe pipe = crtc->pipe;
 
 		new_dbuf_state->slices[pipe] =
@@ -2720,11 +2696,11 @@ skl_compute_ddb(struct intel_atomic_state *state)
 		if (ret)
 			return ret;
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Enabled dbuf slices 0x%x -> 0x%x (total dbuf slices 0x%x), mbus joined? %s->%s\n",
 			    old_dbuf_state->enabled_slices,
 			    new_dbuf_state->enabled_slices,
-			    DISPLAY_INFO(i915)->dbuf.slice_mask,
+			    DISPLAY_INFO(display)->dbuf.slice_mask,
 			    str_yes_no(old_dbuf_state->joined_mbus),
 			    str_yes_no(new_dbuf_state->joined_mbus));
 	}
@@ -2742,7 +2718,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
 			return ret;
 	}
 
-	for_each_intel_crtc(&i915->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		ret = skl_crtc_allocate_ddb(state, crtc);
 		if (ret)
 			return ret;
@@ -2769,7 +2745,7 @@ static char enast(bool enable)
 static void
 skl_print_wm_changes(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state;
 	const struct intel_crtc_state *new_crtc_state;
 	struct intel_plane *plane;
@@ -2786,7 +2762,7 @@ skl_print_wm_changes(struct intel_atomic_state *state)
 		old_pipe_wm = &old_crtc_state->wm.skl.optimal;
 		new_pipe_wm = &new_crtc_state->wm.skl.optimal;
 
-		for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
+		for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
 			enum plane_id plane_id = plane->id;
 			const struct skl_ddb_entry *old, *new;
 
@@ -2796,24 +2772,24 @@ skl_print_wm_changes(struct intel_atomic_state *state)
 			if (skl_ddb_entry_equal(old, new))
 				continue;
 
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] ddb (%4d - %4d) -> (%4d - %4d), size %4d -> %4d\n",
 				    plane->base.base.id, plane->base.name,
 				    old->start, old->end, new->start, new->end,
 				    skl_ddb_entry_size(old), skl_ddb_entry_size(new));
 		}
 
-		for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
+		for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
 			enum plane_id plane_id = plane->id;
 			const struct skl_plane_wm *old_wm, *new_wm;
 
 			old_wm = &old_pipe_wm->planes[plane_id];
 			new_wm = &new_pipe_wm->planes[plane_id];
 
-			if (skl_plane_wm_equals(i915, old_wm, new_wm))
+			if (skl_plane_wm_equals(display, old_wm, new_wm))
 				continue;
 
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s]   level %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm,%cswm,%cstwm"
 				    " -> %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm,%cswm,%cstwm\n",
 				    plane->base.base.id, plane->base.name,
@@ -2832,7 +2808,7 @@ skl_print_wm_changes(struct intel_atomic_state *state)
 				    enast(new_wm->sagv.wm0.enable),
 				    enast(new_wm->sagv.trans_wm.enable));
 
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s]   lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%4d"
 				      " -> %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%4d\n",
 				    plane->base.base.id, plane->base.name,
@@ -2859,7 +2835,7 @@ skl_print_wm_changes(struct intel_atomic_state *state)
 				    enast(new_wm->sagv.wm0.ignore_lines), new_wm->sagv.wm0.lines,
 				    enast(new_wm->sagv.trans_wm.ignore_lines), new_wm->sagv.trans_wm.lines);
 
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d"
 				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d\n",
 				    plane->base.base.id, plane->base.name,
@@ -2878,7 +2854,7 @@ skl_print_wm_changes(struct intel_atomic_state *state)
 				    new_wm->sagv.wm0.blocks,
 				    new_wm->sagv.trans_wm.blocks);
 
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d"
 				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d\n",
 				    plane->base.base.id, plane->base.name,
@@ -2956,14 +2932,14 @@ static bool skl_plane_selected_wm_equals(struct intel_plane *plane,
 static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
 				      struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_plane *plane;
 
-	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
+	for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
 		struct intel_plane_state *plane_state;
 		enum plane_id plane_id = plane->id;
 
@@ -2982,7 +2958,7 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
 			continue;
 
 		if (new_crtc_state->do_async_flip) {
-			drm_dbg_kms(&i915->drm, "[PLANE:%d:%s] Can't change watermarks during async flip\n",
+			drm_dbg_kms(display->drm, "[PLANE:%d:%s] Can't change watermarks during async flip\n",
 				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
@@ -3161,9 +3137,8 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 
 static void skl_wm_get_hw_state(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_dbuf_state *dbuf_state =
-		to_intel_dbuf_state(i915->display.dbuf.obj.state);
+		to_intel_dbuf_state(display->dbuf.obj.state);
 	struct intel_crtc *crtc;
 
 	if (HAS_MBUS_JOINING(display))
@@ -3203,7 +3178,7 @@ static void skl_wm_get_hw_state(struct intel_display *display)
 			if (!crtc_state->hw.active)
 				continue;
 
-			skl_ddb_get_hw_plane_state(i915, crtc->pipe,
+			skl_ddb_get_hw_plane_state(display, crtc->pipe,
 						   plane_id, ddb, ddb_y,
 						   min_ddb, interim_ddb);
 
@@ -3219,7 +3194,7 @@ static void skl_wm_get_hw_state(struct intel_display *display)
 		 */
 		slices = skl_compute_dbuf_slices(crtc, dbuf_state->active_pipes,
 						 dbuf_state->joined_mbus);
-		mbus_offset = mbus_ddb_offset(i915, slices);
+		mbus_offset = mbus_ddb_offset(display, slices);
 		crtc_state->wm.skl.ddb.start = mbus_offset + dbuf_state->ddb[pipe].start;
 		crtc_state->wm.skl.ddb.end = mbus_offset + dbuf_state->ddb[pipe].end;
 
@@ -3252,16 +3227,18 @@ void skl_watermark_ipc_update(struct intel_display *display)
 		     skl_watermark_ipc_enabled(display) ? DISP_IPC_ENABLE : 0);
 }
 
-static bool skl_watermark_ipc_can_enable(struct drm_i915_private *i915)
+static bool skl_watermark_ipc_can_enable(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	/* Display WA #0477 WaDisableIPC: skl */
-	if (IS_SKYLAKE(i915))
+	if (display->platform.skylake)
 		return false;
 
 	/* Display WA #1141: SKL:all KBL:all CFL */
-	if (IS_KABYLAKE(i915) ||
-	    IS_COFFEELAKE(i915) ||
-	    IS_COMETLAKE(i915))
+	if (display->platform.kabylake ||
+	    display->platform.coffeelake ||
+	    display->platform.cometlake)
 		return i915->dram_info.symmetric_memory;
 
 	return true;
@@ -3269,20 +3246,19 @@ static bool skl_watermark_ipc_can_enable(struct drm_i915_private *i915)
 
 void skl_watermark_ipc_init(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (!HAS_IPC(display))
 		return;
 
-	display->wm.ipc_enabled = skl_watermark_ipc_can_enable(i915);
+	display->wm.ipc_enabled = skl_watermark_ipc_can_enable(display);
 
 	skl_watermark_ipc_update(display);
 }
 
 static void
-adjust_wm_latency(struct drm_i915_private *i915,
+adjust_wm_latency(struct intel_display *display,
 		  u16 wm[], int num_levels, int read_latency)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	bool wm_lv_0_adjust_needed = i915->dram_info.wm_lv_0_adjust_needed;
 	int i, level;
 
@@ -3323,31 +3299,32 @@ adjust_wm_latency(struct drm_i915_private *i915,
 		wm[0] += 1;
 }
 
-static void mtl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
+static void mtl_read_wm_latency(struct intel_display *display, u16 wm[])
 {
-	int num_levels = i915->display.wm.num_levels;
+	int num_levels = display->wm.num_levels;
 	u32 val;
 
-	val = intel_de_read(i915, MTL_LATENCY_LP0_LP1);
+	val = intel_de_read(display, MTL_LATENCY_LP0_LP1);
 	wm[0] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
 	wm[1] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
 
-	val = intel_de_read(i915, MTL_LATENCY_LP2_LP3);
+	val = intel_de_read(display, MTL_LATENCY_LP2_LP3);
 	wm[2] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
 	wm[3] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
 
-	val = intel_de_read(i915, MTL_LATENCY_LP4_LP5);
+	val = intel_de_read(display, MTL_LATENCY_LP4_LP5);
 	wm[4] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
 	wm[5] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
 
-	adjust_wm_latency(i915, wm, num_levels, 6);
+	adjust_wm_latency(display, wm, num_levels, 6);
 }
 
-static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
+static void skl_read_wm_latency(struct intel_display *display, u16 wm[])
 {
-	int num_levels = i915->display.wm.num_levels;
-	int read_latency = DISPLAY_VER(i915) >= 12 ? 3 : 2;
-	int mult = IS_DG2(i915) ? 2 : 1;
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	int num_levels = display->wm.num_levels;
+	int read_latency = DISPLAY_VER(display) >= 12 ? 3 : 2;
+	int mult = display->platform.dg2 ? 2 : 1;
 	u32 val;
 	int ret;
 
@@ -3355,7 +3332,7 @@ static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 	val = 0; /* data0 to be programmed to 0 for first set */
 	ret = snb_pcode_read(&i915->uncore, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
 	if (ret) {
-		drm_err(&i915->drm, "SKL Mailbox read error = %d\n", ret);
+		drm_err(display->drm, "SKL Mailbox read error = %d\n", ret);
 		return;
 	}
 
@@ -3368,7 +3345,7 @@ static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 	val = 1; /* data0 to be programmed to 1 for second set */
 	ret = snb_pcode_read(&i915->uncore, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
 	if (ret) {
-		drm_err(&i915->drm, "SKL Mailbox read error = %d\n", ret);
+		drm_err(display->drm, "SKL Mailbox read error = %d\n", ret);
 		return;
 	}
 
@@ -3377,22 +3354,20 @@ static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 	wm[6] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_2_6_MASK, val) * mult;
 	wm[7] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_3_7_MASK, val) * mult;
 
-	adjust_wm_latency(i915, wm, num_levels, read_latency);
+	adjust_wm_latency(display, wm, num_levels, read_latency);
 }
 
-static void skl_setup_wm_latency(struct drm_i915_private *i915)
+static void skl_setup_wm_latency(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-
 	if (HAS_HW_SAGV_WM(display))
 		display->wm.num_levels = 6;
 	else
 		display->wm.num_levels = 8;
 
 	if (DISPLAY_VER(display) >= 14)
-		mtl_read_wm_latency(i915, display->wm.skl_latency);
+		mtl_read_wm_latency(display, display->wm.skl_latency);
 	else
-		skl_read_wm_latency(i915, display->wm.skl_latency);
+		skl_read_wm_latency(display, display->wm.skl_latency);
 
 	intel_print_wm_latency(display, "Gen9 Plane", display->wm.skl_latency);
 }
@@ -3422,10 +3397,10 @@ static const struct intel_global_state_funcs intel_dbuf_funcs = {
 struct intel_dbuf_state *
 intel_atomic_get_dbuf_state(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_global_state *dbuf_state;
 
-	dbuf_state = intel_atomic_get_global_obj_state(state, &i915->display.dbuf.obj);
+	dbuf_state = intel_atomic_get_global_obj_state(state, &display->dbuf.obj);
 	if (IS_ERR(dbuf_state))
 		return ERR_CAST(dbuf_state);
 
@@ -3468,34 +3443,34 @@ static bool xelpdp_is_only_pipe_per_dbuf_bank(enum pipe pipe, u8 active_pipes)
 static u32 pipe_mbus_dbox_ctl(const struct intel_crtc *crtc,
 			      const struct intel_dbuf_state *dbuf_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	u32 val = 0;
 
-	if (DISPLAY_VER(i915) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		val |= MBUS_DBOX_I_CREDIT(2);
 
-	if (DISPLAY_VER(i915) >= 12) {
+	if (DISPLAY_VER(display) >= 12) {
 		val |= MBUS_DBOX_B2B_TRANSACTIONS_MAX(16);
 		val |= MBUS_DBOX_B2B_TRANSACTIONS_DELAY(1);
 		val |= MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN;
 	}
 
-	if (DISPLAY_VER(i915) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		val |= dbuf_state->joined_mbus ?
 			MBUS_DBOX_A_CREDIT(12) : MBUS_DBOX_A_CREDIT(8);
-	else if (IS_ALDERLAKE_P(i915))
+	else if (display->platform.alderlake_p)
 		/* Wa_22010947358:adl-p */
 		val |= dbuf_state->joined_mbus ?
 			MBUS_DBOX_A_CREDIT(6) : MBUS_DBOX_A_CREDIT(4);
 	else
 		val |= MBUS_DBOX_A_CREDIT(2);
 
-	if (DISPLAY_VER(i915) >= 14) {
+	if (DISPLAY_VER(display) >= 14) {
 		val |= MBUS_DBOX_B_CREDIT(0xA);
-	} else if (IS_ALDERLAKE_P(i915)) {
+	} else if (display->platform.alderlake_p) {
 		val |= MBUS_DBOX_BW_CREDIT(2);
 		val |= MBUS_DBOX_B_CREDIT(8);
-	} else if (DISPLAY_VER(i915) >= 12) {
+	} else if (DISPLAY_VER(display) >= 12) {
 		val |= MBUS_DBOX_BW_CREDIT(2);
 		val |= MBUS_DBOX_B_CREDIT(12);
 	} else {
@@ -3503,7 +3478,7 @@ static u32 pipe_mbus_dbox_ctl(const struct intel_crtc *crtc,
 		val |= MBUS_DBOX_B_CREDIT(8);
 	}
 
-	if (DISPLAY_VERx100(i915) == 1400) {
+	if (DISPLAY_VERx100(display) == 1400) {
 		if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe, dbuf_state->active_pipes))
 			val |= MBUS_DBOX_BW_8CREDITS_MTL;
 		else
@@ -3513,22 +3488,22 @@ static u32 pipe_mbus_dbox_ctl(const struct intel_crtc *crtc,
 	return val;
 }
 
-static void pipe_mbus_dbox_ctl_update(struct drm_i915_private *i915,
+static void pipe_mbus_dbox_ctl_update(struct intel_display *display,
 				      const struct intel_dbuf_state *dbuf_state)
 {
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, dbuf_state->active_pipes)
-		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe),
+	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, dbuf_state->active_pipes)
+		intel_de_write(display, PIPE_MBUS_DBOX_CTL(crtc->pipe),
 			       pipe_mbus_dbox_ctl(crtc, dbuf_state));
 }
 
 static void intel_mbus_dbox_update(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
 
-	if (DISPLAY_VER(i915) < 11)
+	if (DISPLAY_VER(display) < 11)
 		return;
 
 	new_dbuf_state = intel_atomic_get_new_dbuf_state(state);
@@ -3538,7 +3513,7 @@ static void intel_mbus_dbox_update(struct intel_atomic_state *state)
 	     new_dbuf_state->active_pipes == old_dbuf_state->active_pipes))
 		return;
 
-	pipe_mbus_dbox_ctl_update(i915, new_dbuf_state);
+	pipe_mbus_dbox_ctl_update(display, new_dbuf_state);
 }
 
 int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state,
@@ -3604,13 +3579,12 @@ static enum pipe intel_mbus_joined_pipe(struct intel_atomic_state *state,
 					const struct intel_dbuf_state *dbuf_state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	enum pipe pipe = ffs(dbuf_state->active_pipes) - 1;
 	const struct intel_crtc_state *new_crtc_state;
 	struct intel_crtc *crtc;
 
-	drm_WARN_ON(&i915->drm, !dbuf_state->joined_mbus);
-	drm_WARN_ON(&i915->drm, !is_power_of_2(dbuf_state->active_pipes));
+	drm_WARN_ON(display->drm, !dbuf_state->joined_mbus);
+	drm_WARN_ON(display->drm, !is_power_of_2(dbuf_state->active_pipes));
 
 	crtc = intel_crtc_for_pipe(display, pipe);
 	new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
@@ -3621,7 +3595,7 @@ static enum pipe intel_mbus_joined_pipe(struct intel_atomic_state *state,
 		return INVALID_PIPE;
 }
 
-static void mbus_ctl_join_update(struct drm_i915_private *i915,
+static void mbus_ctl_join_update(struct intel_display *display,
 				 const struct intel_dbuf_state *dbuf_state,
 				 enum pipe pipe)
 {
@@ -3637,7 +3611,7 @@ static void mbus_ctl_join_update(struct drm_i915_private *i915,
 	else
 		mbus_ctl |= MBUS_JOIN_PIPE_SELECT_NONE;
 
-	intel_de_rmw(i915, MBUS_CTL,
+	intel_de_rmw(display, MBUS_CTL,
 		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
 		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
 }
@@ -3645,18 +3619,18 @@ static void mbus_ctl_join_update(struct drm_i915_private *i915,
 static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state,
 					enum pipe pipe)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_dbuf_state *old_dbuf_state =
 		intel_atomic_get_old_dbuf_state(state);
 	const struct intel_dbuf_state *new_dbuf_state =
 		intel_atomic_get_new_dbuf_state(state);
 
-	drm_dbg_kms(&i915->drm, "Changing mbus joined: %s -> %s (pipe: %c)\n",
+	drm_dbg_kms(display->drm, "Changing mbus joined: %s -> %s (pipe: %c)\n",
 		    str_yes_no(old_dbuf_state->joined_mbus),
 		    str_yes_no(new_dbuf_state->joined_mbus),
 		    pipe != INVALID_PIPE ? pipe_name(pipe) : '*');
 
-	mbus_ctl_join_update(i915, new_dbuf_state, pipe);
+	mbus_ctl_join_update(display, new_dbuf_state, pipe);
 }
 
 void intel_dbuf_mbus_pre_ddb_update(struct intel_atomic_state *state)
@@ -3761,9 +3735,8 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 	gen9_dbuf_slices_update(display, new_slices);
 }
 
-static void skl_mbus_sanitize(struct drm_i915_private *i915)
+static void skl_mbus_sanitize(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
 	struct intel_dbuf_state *dbuf_state =
 		to_intel_dbuf_state(display->dbuf.obj.state);
 
@@ -3781,25 +3754,25 @@ static void skl_mbus_sanitize(struct drm_i915_private *i915)
 	intel_dbuf_mdclk_cdclk_ratio_update(display,
 					    dbuf_state->mdclk_cdclk_ratio,
 					    dbuf_state->joined_mbus);
-	pipe_mbus_dbox_ctl_update(i915, dbuf_state);
-	mbus_ctl_join_update(i915, dbuf_state, INVALID_PIPE);
+	pipe_mbus_dbox_ctl_update(display, dbuf_state);
+	mbus_ctl_join_update(display, dbuf_state, INVALID_PIPE);
 }
 
-static bool skl_dbuf_is_misconfigured(struct drm_i915_private *i915)
+static bool skl_dbuf_is_misconfigured(struct intel_display *display)
 {
 	const struct intel_dbuf_state *dbuf_state =
-		to_intel_dbuf_state(i915->display.dbuf.obj.state);
+		to_intel_dbuf_state(display->dbuf.obj.state);
 	struct skl_ddb_entry entries[I915_MAX_PIPES] = {};
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(&i915->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
 		entries[crtc->pipe] = crtc_state->wm.skl.ddb;
 	}
 
-	for_each_intel_crtc(&i915->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		u8 slices;
@@ -3817,7 +3790,7 @@ static bool skl_dbuf_is_misconfigured(struct drm_i915_private *i915)
 	return false;
 }
 
-static void skl_dbuf_sanitize(struct drm_i915_private *i915)
+static void skl_dbuf_sanitize(struct intel_display *display)
 {
 	struct intel_crtc *crtc;
 
@@ -3832,12 +3805,12 @@ static void skl_dbuf_sanitize(struct drm_i915_private *i915)
 	 * all the planes so that skl_commit_modeset_enables() can
 	 * simply ignore them.
 	 */
-	if (!skl_dbuf_is_misconfigured(i915))
+	if (!skl_dbuf_is_misconfigured(display))
 		return;
 
-	drm_dbg_kms(&i915->drm, "BIOS has misprogrammed the DBUF, disabling all planes\n");
+	drm_dbg_kms(display->drm, "BIOS has misprogrammed the DBUF, disabling all planes\n");
 
-	for_each_intel_crtc(&i915->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_plane *plane = to_intel_plane(crtc->base.primary);
 		const struct intel_plane_state *plane_state =
 			to_intel_plane_state(plane->base.state);
@@ -3847,7 +3820,7 @@ static void skl_dbuf_sanitize(struct drm_i915_private *i915)
 		if (plane_state->uapi.visible)
 			intel_plane_disable_noatomic(crtc, plane);
 
-		drm_WARN_ON(&i915->drm, crtc_state->active_planes != 0);
+		drm_WARN_ON(display->drm, crtc_state->active_planes != 0);
 
 		memset(&crtc_state->wm.skl.ddb, 0, sizeof(crtc_state->wm.skl.ddb));
 	}
@@ -3855,10 +3828,8 @@ static void skl_dbuf_sanitize(struct drm_i915_private *i915)
 
 static void skl_wm_sanitize(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	skl_mbus_sanitize(i915);
-	skl_dbuf_sanitize(i915);
+	skl_mbus_sanitize(display);
+	skl_dbuf_sanitize(display);
 }
 
 void skl_wm_crtc_disable_noatomic(struct intel_crtc *crtc)
@@ -3909,7 +3880,6 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct skl_hw_state {
@@ -3924,7 +3894,7 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 	u8 hw_enabled_slices;
 	int level;
 
-	if (DISPLAY_VER(i915) < 9 || !new_crtc_state->hw.active)
+	if (DISPLAY_VER(display) < 9 || !new_crtc_state->hw.active)
 		return;
 
 	hw = kzalloc(sizeof(*hw), GFP_KERNEL);
@@ -3937,26 +3907,26 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 
 	hw_enabled_slices = intel_enabled_dbuf_slices_mask(display);
 
-	if (DISPLAY_VER(i915) >= 11 &&
-	    hw_enabled_slices != i915->display.dbuf.enabled_slices)
-		drm_err(&i915->drm,
+	if (DISPLAY_VER(display) >= 11 &&
+	    hw_enabled_slices != display->dbuf.enabled_slices)
+		drm_err(display->drm,
 			"mismatch in DBUF Slices (expected 0x%x, got 0x%x)\n",
-			i915->display.dbuf.enabled_slices,
+			display->dbuf.enabled_slices,
 			hw_enabled_slices);
 
-	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
+	for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
 		const struct skl_ddb_entry *hw_ddb_entry, *sw_ddb_entry;
 		const struct skl_wm_level *hw_wm_level, *sw_wm_level;
 
 		/* Watermarks */
-		for (level = 0; level < i915->display.wm.num_levels; level++) {
+		for (level = 0; level < display->wm.num_levels; level++) {
 			hw_wm_level = &hw->wm.planes[plane->id].wm[level];
 			sw_wm_level = skl_plane_wm_level(sw_wm, plane->id, level);
 
 			if (skl_wm_level_equals(hw_wm_level, sw_wm_level))
 				continue;
 
-			drm_err(&i915->drm,
+			drm_err(display->drm,
 				"[PLANE:%d:%s] mismatch in WM%d (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
 				plane->base.base.id, plane->base.name, level,
 				sw_wm_level->enable,
@@ -3971,7 +3941,7 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 		sw_wm_level = skl_plane_trans_wm(sw_wm, plane->id);
 
 		if (!skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
-			drm_err(&i915->drm,
+			drm_err(display->drm,
 				"[PLANE:%d:%s] mismatch in trans WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
 				plane->base.base.id, plane->base.name,
 				sw_wm_level->enable,
@@ -3987,7 +3957,7 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 
 		if (HAS_HW_SAGV_WM(display) &&
 		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
-			drm_err(&i915->drm,
+			drm_err(display->drm,
 				"[PLANE:%d:%s] mismatch in SAGV WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
 				plane->base.base.id, plane->base.name,
 				sw_wm_level->enable,
@@ -4003,7 +3973,7 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 
 		if (HAS_HW_SAGV_WM(display) &&
 		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
-			drm_err(&i915->drm,
+			drm_err(display->drm,
 				"[PLANE:%d:%s] mismatch in SAGV trans WM (expected e=%d b=%u l=%u, got e=%d b=%u l=%u)\n",
 				plane->base.base.id, plane->base.name,
 				sw_wm_level->enable,
@@ -4019,7 +3989,7 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 		sw_ddb_entry = &new_crtc_state->wm.skl.plane_ddb[PLANE_CURSOR];
 
 		if (!skl_ddb_entry_equal(hw_ddb_entry, sw_ddb_entry)) {
-			drm_err(&i915->drm,
+			drm_err(display->drm,
 				"[PLANE:%d:%s] mismatch in DDB (expected (%u,%u), found (%u,%u))\n",
 				plane->base.base.id, plane->base.name,
 				sw_ddb_entry->start, sw_ddb_entry->end,
@@ -4038,19 +4008,16 @@ static const struct intel_wm_funcs skl_wm_funcs = {
 
 void skl_wm_init(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	intel_sagv_init(i915);
+	intel_sagv_init(display);
 
-	skl_setup_wm_latency(i915);
+	skl_setup_wm_latency(display);
 
 	display->funcs.wm = &skl_wm_funcs;
 }
 
 static int skl_watermark_ipc_status_show(struct seq_file *m, void *data)
 {
-	struct drm_i915_private *i915 = m->private;
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = m->private;
 
 	seq_printf(m, "Isochronous Priority Control: %s\n",
 		   str_yes_no(skl_watermark_ipc_enabled(display)));
@@ -4059,9 +4026,9 @@ static int skl_watermark_ipc_status_show(struct seq_file *m, void *data)
 
 static int skl_watermark_ipc_status_open(struct inode *inode, struct file *file)
 {
-	struct drm_i915_private *i915 = inode->i_private;
+	struct intel_display *display = inode->i_private;
 
-	return single_open(file, skl_watermark_ipc_status_show, i915);
+	return single_open(file, skl_watermark_ipc_status_show, display);
 }
 
 static ssize_t skl_watermark_ipc_status_write(struct file *file,
@@ -4069,8 +4036,7 @@ static ssize_t skl_watermark_ipc_status_write(struct file *file,
 					      size_t len, loff_t *offp)
 {
 	struct seq_file *m = file->private_data;
-	struct drm_i915_private *i915 = m->private;
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = m->private;
 	bool enable;
 	int ret;
 
@@ -4100,8 +4066,7 @@ static const struct file_operations skl_watermark_ipc_status_fops = {
 
 static int intel_sagv_status_show(struct seq_file *m, void *unused)
 {
-	struct drm_i915_private *i915 = m->private;
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = m->private;
 	static const char * const sagv_status[] = {
 		[I915_SAGV_UNKNOWN] = "unknown",
 		[I915_SAGV_DISABLED] = "disabled",
@@ -4111,9 +4076,9 @@ static int intel_sagv_status_show(struct seq_file *m, void *unused)
 
 	seq_printf(m, "SAGV available: %s\n", str_yes_no(intel_has_sagv(display)));
 	seq_printf(m, "SAGV modparam: %s\n",
-		   str_enabled_disabled(i915->display.params.enable_sagv));
-	seq_printf(m, "SAGV status: %s\n", sagv_status[i915->display.sagv.status]);
-	seq_printf(m, "SAGV block time: %d usec\n", i915->display.sagv.block_time_us);
+		   str_enabled_disabled(display->params.enable_sagv));
+	seq_printf(m, "SAGV status: %s\n", sagv_status[display->sagv.status]);
+	seq_printf(m, "SAGV block time: %d usec\n", display->sagv.block_time_us);
 
 	return 0;
 }
@@ -4122,25 +4087,23 @@ DEFINE_SHOW_ATTRIBUTE(intel_sagv_status);
 
 void skl_watermark_debugfs_register(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct drm_minor *minor = display->drm->primary;
 
 	if (HAS_IPC(display))
-		debugfs_create_file("i915_ipc_status", 0644, minor->debugfs_root, i915,
-				    &skl_watermark_ipc_status_fops);
+		debugfs_create_file("i915_ipc_status", 0644, minor->debugfs_root,
+				    display, &skl_watermark_ipc_status_fops);
 
 	if (HAS_SAGV(display))
-		debugfs_create_file("i915_sagv_status", 0444, minor->debugfs_root, i915,
-				    &intel_sagv_status_fops);
+		debugfs_create_file("i915_sagv_status", 0444, minor->debugfs_root,
+				    display, &intel_sagv_status_fops);
 }
 
 unsigned int skl_watermark_max_latency(struct intel_display *display, int initial_wm_level)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	int level;
 
 	for (level = display->wm.num_levels - 1; level >= initial_wm_level; level--) {
-		unsigned int latency = skl_wm_latency(i915, level, NULL);
+		unsigned int latency = skl_wm_latency(display, level, NULL);
 
 		if (latency)
 			return latency;
-- 
2.39.5

