Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA70345B935
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 12:37:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 327E76E874;
	Wed, 24 Nov 2021 11:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9945F6E88D
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 11:37:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="235494977"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="235494977"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 03:37:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="497644905"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 24 Nov 2021 03:37:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 13:37:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 13:36:40 +0200
Message-Id: <20211124113652.22090-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/20] drm/i915/fbc: Track FBC usage per-plane
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

In the future we may have multiple planes on the same pipe
capable of using FBC. Prepare for that by tracking FBC usage
per-plane rather than per-crtc.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 224 +++++++++++------------
 drivers/gpu/drm/i915/i915_drv.h          |   2 +-
 drivers/gpu/drm/i915/i915_trace.h        |  18 +-
 3 files changed, 123 insertions(+), 121 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index db390c29c665..cf7fc0de6081 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -583,7 +583,7 @@ static bool intel_fbc_hw_is_active(struct intel_fbc *fbc)
 
 static void intel_fbc_hw_activate(struct intel_fbc *fbc)
 {
-	trace_intel_fbc_activate(fbc->crtc);
+	trace_intel_fbc_activate(fbc->plane);
 
 	fbc->active = true;
 	fbc->activated = true;
@@ -593,7 +593,7 @@ static void intel_fbc_hw_activate(struct intel_fbc *fbc)
 
 static void intel_fbc_hw_deactivate(struct intel_fbc *fbc)
 {
-	trace_intel_fbc_deactivate(fbc->crtc);
+	trace_intel_fbc_deactivate(fbc->plane);
 
 	fbc->active = false;
 
@@ -607,7 +607,7 @@ bool intel_fbc_is_compressing(struct intel_fbc *fbc)
 
 static void intel_fbc_nuke(struct intel_fbc *fbc)
 {
-	trace_intel_fbc_nuke(fbc->crtc);
+	trace_intel_fbc_nuke(fbc->plane);
 
 	fbc->funcs->nuke(fbc);
 }
@@ -1154,8 +1154,7 @@ static bool intel_fbc_can_activate(struct intel_fbc *fbc)
 	return true;
 }
 
-static void intel_fbc_get_reg_params(struct intel_fbc *fbc,
-				     struct intel_crtc *crtc)
+static void intel_fbc_get_reg_params(struct intel_fbc *fbc)
 {
 	const struct intel_fbc_state *cache = &fbc->state_cache;
 	struct intel_fbc_state *params = &fbc->params;
@@ -1213,30 +1212,19 @@ static bool intel_fbc_can_flip_nuke(struct intel_atomic_state *state,
 	return true;
 }
 
-bool intel_fbc_pre_update(struct intel_atomic_state *state,
-			  struct intel_crtc *crtc)
+static bool __intel_fbc_pre_update(struct intel_atomic_state *state,
+				   struct intel_crtc *crtc,
+				   struct intel_plane *plane)
 {
-	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
-	const struct intel_plane_state *plane_state =
-		intel_atomic_get_new_plane_state(state, plane);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_fbc *fbc = plane->fbc;
-	const char *reason = "update pending";
 	bool need_vblank_wait = false;
 
-	if (!fbc || !plane_state)
-		return need_vblank_wait;
-
-	mutex_lock(&fbc->lock);
-
-	if (fbc->crtc != crtc)
-		goto unlock;
-
 	intel_fbc_update_state_cache(state, crtc, plane);
 	fbc->flip_pending = true;
 
 	if (!intel_fbc_can_flip_nuke(state, crtc, plane)) {
-		intel_fbc_deactivate(fbc, reason);
+		intel_fbc_deactivate(fbc, "update pending");
 
 		/*
 		 * Display WA #1198: glk+
@@ -1256,8 +1244,31 @@ bool intel_fbc_pre_update(struct intel_atomic_state *state,
 			need_vblank_wait = true;
 		fbc->activated = false;
 	}
-unlock:
-	mutex_unlock(&fbc->lock);
+
+	return need_vblank_wait;
+}
+
+bool intel_fbc_pre_update(struct intel_atomic_state *state,
+			  struct intel_crtc *crtc)
+{
+	const struct intel_plane_state *plane_state;
+	bool need_vblank_wait = false;
+	struct intel_plane *plane;
+	int i;
+
+	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
+		struct intel_fbc *fbc = plane->fbc;
+
+		if (!fbc || plane->pipe != crtc->pipe)
+			continue;
+
+		mutex_lock(&fbc->lock);
+
+		if (fbc->plane == plane)
+			need_vblank_wait |= __intel_fbc_pre_update(state, crtc, plane);
+
+		mutex_unlock(&fbc->lock);
+	}
 
 	return need_vblank_wait;
 }
@@ -1265,18 +1276,18 @@ bool intel_fbc_pre_update(struct intel_atomic_state *state,
 static void __intel_fbc_disable(struct intel_fbc *fbc)
 {
 	struct drm_i915_private *i915 = fbc->i915;
-	struct intel_crtc *crtc = fbc->crtc;
+	struct intel_plane *plane = fbc->plane;
 
 	drm_WARN_ON(&i915->drm, !mutex_is_locked(&fbc->lock));
-	drm_WARN_ON(&i915->drm, !fbc->crtc);
+	drm_WARN_ON(&i915->drm, !fbc->plane);
 	drm_WARN_ON(&i915->drm, fbc->active);
 
-	drm_dbg_kms(&i915->drm, "Disabling FBC on pipe %c\n",
-		    pipe_name(crtc->pipe));
+	drm_dbg_kms(&i915->drm, "Disabling FBC on [PLANE:%d:%s]\n",
+		    plane->base.base.id, plane->base.name);
 
 	__intel_fbc_cleanup_cfb(fbc);
 
-	fbc->crtc = NULL;
+	fbc->plane = NULL;
 }
 
 static void __intel_fbc_post_update(struct intel_fbc *fbc)
@@ -1304,27 +1315,32 @@ static void __intel_fbc_post_update(struct intel_fbc *fbc)
 void intel_fbc_post_update(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
-	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
-	const struct intel_plane_state *plane_state =
-		intel_atomic_get_new_plane_state(state, plane);
-	struct intel_fbc *fbc = plane->fbc;
-
-	if (!fbc || !plane_state)
-		return;
-
-	mutex_lock(&fbc->lock);
-	if (fbc->crtc == crtc) {
-		fbc->flip_pending = false;
-		intel_fbc_get_reg_params(fbc, crtc);
-		__intel_fbc_post_update(fbc);
+	const struct intel_plane_state *plane_state;
+	struct intel_plane *plane;
+	int i;
+
+	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
+		struct intel_fbc *fbc = plane->fbc;
+
+		if (!fbc || plane->pipe != crtc->pipe)
+			continue;
+
+		mutex_lock(&fbc->lock);
+
+		if (fbc->plane == plane) {
+			fbc->flip_pending = false;
+			intel_fbc_get_reg_params(fbc);
+			__intel_fbc_post_update(fbc);
+		}
+
+		mutex_unlock(&fbc->lock);
 	}
-	mutex_unlock(&fbc->lock);
 }
 
 static unsigned int intel_fbc_get_frontbuffer_bit(struct intel_fbc *fbc)
 {
-	if (fbc->crtc)
-		return to_intel_plane(fbc->crtc->base.primary)->frontbuffer_bit;
+	if (fbc->plane)
+		return fbc->plane->frontbuffer_bit;
 	else
 		return fbc->possible_framebuffer_bits;
 }
@@ -1345,7 +1361,7 @@ void intel_fbc_invalidate(struct drm_i915_private *i915,
 
 	fbc->busy_bits |= intel_fbc_get_frontbuffer_bit(fbc) & frontbuffer_bits;
 
-	if (fbc->crtc && fbc->busy_bits)
+	if (fbc->plane && fbc->busy_bits)
 		intel_fbc_deactivate(fbc, "frontbuffer write");
 
 	mutex_unlock(&fbc->lock);
@@ -1366,7 +1382,7 @@ void intel_fbc_flush(struct drm_i915_private *i915,
 	if (origin == ORIGIN_FLIP || origin == ORIGIN_CURSOR_UPDATE)
 		goto out;
 
-	if (!fbc->busy_bits && fbc->crtc &&
+	if (!fbc->busy_bits && fbc->plane &&
 	    (frontbuffer_bits & intel_fbc_get_frontbuffer_bit(fbc))) {
 		if (fbc->active)
 			intel_fbc_nuke(fbc);
@@ -1395,43 +1411,24 @@ int intel_fbc_atomic_check(struct intel_atomic_state *state)
 	return 0;
 }
 
-/**
- * intel_fbc_enable: tries to enable FBC on the CRTC
- * @crtc: the CRTC
- * @state: corresponding &drm_crtc_state for @crtc
- *
- * This function checks if the given CRTC was chosen for FBC, then enables it if
- * possible. Notice that it doesn't activate FBC. It is valid to call
- * intel_fbc_enable multiple times for the same pipe without an
- * intel_fbc_disable in the middle, as long as it is deactivated.
- */
-static void intel_fbc_enable(struct intel_atomic_state *state,
-			     struct intel_crtc *crtc)
+static void __intel_fbc_enable(struct intel_atomic_state *state,
+			       struct intel_crtc *crtc,
+			       struct intel_plane *plane)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
 	struct intel_fbc *fbc = plane->fbc;
-	struct intel_fbc_state *cache;
-	int min_limit;
+	struct intel_fbc_state *cache = &fbc->state_cache;
+	int min_limit = intel_fbc_min_limit(plane_state);
 
-	if (!fbc || !plane_state)
-		return;
-
-	cache = &fbc->state_cache;
-
-	min_limit = intel_fbc_min_limit(plane_state);
-
-	mutex_lock(&fbc->lock);
-
-	if (fbc->crtc) {
-		if (fbc->crtc != crtc)
-			goto out;
+	if (fbc->plane) {
+		if (fbc->plane != plane)
+			return;
 
 		if (fbc->limit >= min_limit &&
 		    !intel_fbc_cfb_size_changed(fbc))
-			goto out;
+			return;
 
 		__intel_fbc_disable(fbc);
 	}
@@ -1441,22 +1438,20 @@ static void intel_fbc_enable(struct intel_atomic_state *state,
 	intel_fbc_update_state_cache(state, crtc, plane);
 
 	if (cache->no_fbc_reason)
-		goto out;
+		return;
 
 	if (intel_fbc_alloc_cfb(fbc, intel_fbc_cfb_size(plane_state), min_limit)) {
 		fbc->no_fbc_reason = "not enough stolen memory";
-		goto out;
+		return;
 	}
 
-	drm_dbg_kms(&i915->drm, "Enabling FBC on pipe %c\n",
-		    pipe_name(crtc->pipe));
+	drm_dbg_kms(&i915->drm, "Enabling FBC on [PLANE:%d:%s]\n",
+		    plane->base.base.id, plane->base.name);
 	fbc->no_fbc_reason = "FBC enabled but not active yet\n";
 
-	fbc->crtc = crtc;
+	fbc->plane = plane;
 
 	intel_fbc_program_cfb(fbc);
-out:
-	mutex_unlock(&fbc->lock);
 }
 
 /**
@@ -1467,45 +1462,48 @@ static void intel_fbc_enable(struct intel_atomic_state *state,
  */
 void intel_fbc_disable(struct intel_crtc *crtc)
 {
-	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
-	struct intel_fbc *fbc = plane->fbc;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_plane *plane;
 
-	if (!fbc)
-		return;
+	for_each_intel_plane(&i915->drm, plane) {
+		struct intel_fbc *fbc = plane->fbc;
 
-	mutex_lock(&fbc->lock);
-	if (fbc->crtc == crtc)
-		__intel_fbc_disable(fbc);
-	mutex_unlock(&fbc->lock);
+		if (!fbc || plane->pipe != crtc->pipe)
+			continue;
+
+		mutex_lock(&fbc->lock);
+		if (fbc->plane == plane)
+			__intel_fbc_disable(fbc);
+		mutex_unlock(&fbc->lock);
+	}
 }
 
-/**
- * intel_fbc_update: enable/disable FBC on the CRTC
- * @state: atomic state
- * @crtc: the CRTC
- *
- * This function checks if the given CRTC was chosen for FBC, then enables it if
- * possible. Notice that it doesn't activate FBC. It is valid to call
- * intel_fbc_update multiple times for the same pipe without an
- * intel_fbc_disable in the middle.
- */
 void intel_fbc_update(struct intel_atomic_state *state,
 		      struct intel_crtc *crtc)
 {
-	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	const struct intel_plane_state *plane_state =
-		intel_atomic_get_new_plane_state(state, plane);
-	struct intel_fbc *fbc = plane->fbc;
+	const struct intel_plane_state *plane_state;
+	struct intel_plane *plane;
+	int i;
 
-	if (!fbc || !plane_state)
-		return;
+	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
+		struct intel_fbc *fbc = plane->fbc;
 
-	if (crtc_state->update_pipe && plane_state->no_fbc_reason)
-		intel_fbc_disable(crtc);
-	else
-		intel_fbc_enable(state, crtc);
+		if (!fbc || plane->pipe != crtc->pipe)
+			continue;
+
+		mutex_lock(&fbc->lock);
+
+		if (crtc_state->update_pipe && plane_state->no_fbc_reason) {
+			if (fbc->plane == plane)
+				__intel_fbc_disable(fbc);
+		} else {
+			__intel_fbc_enable(state, crtc, plane);
+		}
+
+		mutex_unlock(&fbc->lock);
+	}
 }
 
 /**
@@ -1522,10 +1520,8 @@ void intel_fbc_global_disable(struct drm_i915_private *i915)
 		return;
 
 	mutex_lock(&fbc->lock);
-	if (fbc->crtc) {
-		drm_WARN_ON(&i915->drm, fbc->crtc->active);
+	if (fbc->plane)
 		__intel_fbc_disable(fbc);
-	}
 	mutex_unlock(&fbc->lock);
 }
 
@@ -1538,7 +1534,7 @@ static void intel_fbc_underrun_work_fn(struct work_struct *work)
 	mutex_lock(&fbc->lock);
 
 	/* Maybe we were scheduled twice. */
-	if (fbc->underrun_detected || !fbc->crtc)
+	if (fbc->underrun_detected || !fbc->plane)
 		goto out;
 
 	drm_dbg_kms(&i915->drm, "Disabling FBC due to FIFO underrun.\n");
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a737fa483cf3..f632b026ce34 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -423,7 +423,7 @@ struct intel_fbc {
 	struct mutex lock;
 	unsigned int possible_framebuffer_bits;
 	unsigned int busy_bits;
-	struct intel_crtc *crtc;
+	struct intel_plane *plane;
 
 	struct drm_mm_node compressed_fb;
 	struct drm_mm_node compressed_llb;
diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index 6b8fb6ffe8da..7d6e638dcccb 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -372,8 +372,8 @@ TRACE_EVENT(intel_plane_disable_arm,
 /* fbc */
 
 TRACE_EVENT(intel_fbc_activate,
-	    TP_PROTO(struct intel_crtc *crtc),
-	    TP_ARGS(crtc),
+	    TP_PROTO(struct intel_plane *plane),
+	    TP_ARGS(plane),
 
 	    TP_STRUCT__entry(
 			     __field(enum pipe, pipe)
@@ -382,6 +382,8 @@ TRACE_EVENT(intel_fbc_activate,
 			     ),
 
 	    TP_fast_assign(
+			   struct intel_crtc *crtc = intel_get_crtc_for_pipe(to_i915(plane->base.dev),
+									     plane->pipe);
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
@@ -392,8 +394,8 @@ TRACE_EVENT(intel_fbc_activate,
 );
 
 TRACE_EVENT(intel_fbc_deactivate,
-	    TP_PROTO(struct intel_crtc *crtc),
-	    TP_ARGS(crtc),
+	    TP_PROTO(struct intel_plane *plane),
+	    TP_ARGS(plane),
 
 	    TP_STRUCT__entry(
 			     __field(enum pipe, pipe)
@@ -402,6 +404,8 @@ TRACE_EVENT(intel_fbc_deactivate,
 			     ),
 
 	    TP_fast_assign(
+			   struct intel_crtc *crtc = intel_get_crtc_for_pipe(to_i915(plane->base.dev),
+									     plane->pipe);
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
@@ -412,8 +416,8 @@ TRACE_EVENT(intel_fbc_deactivate,
 );
 
 TRACE_EVENT(intel_fbc_nuke,
-	    TP_PROTO(struct intel_crtc *crtc),
-	    TP_ARGS(crtc),
+	    TP_PROTO(struct intel_plane *plane),
+	    TP_ARGS(plane),
 
 	    TP_STRUCT__entry(
 			     __field(enum pipe, pipe)
@@ -422,6 +426,8 @@ TRACE_EVENT(intel_fbc_nuke,
 			     ),
 
 	    TP_fast_assign(
+			   struct intel_crtc *crtc = intel_get_crtc_for_pipe(to_i915(plane->base.dev),
+									     plane->pipe);
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
-- 
2.32.0

