Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB42298AA99
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 19:05:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 813BA10E568;
	Mon, 30 Sep 2024 17:05:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nqpx0jkZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DB8710E572;
 Mon, 30 Sep 2024 17:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727715901; x=1759251901;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q+OftcKiqtLOb1LHYJMUiyTgYIlaQzhtimnGj9XcDOQ=;
 b=Nqpx0jkZkGy0P+3L7LcC6iRGUfZrCYQQ46XoBH9O9t5/FeG9Nqqly9NT
 HwUEnobE7i5Ls1BXzTdyi94n5RV4BipcW5Mn2I/Y6Q62AbRAAioZxJUAV
 U7pfu5O3otUDZGzwkEOfPesuG6XvDUYF4IzPij7yK0Lq1eYzRzjQivu+5
 SzRPp+9AvCSvi/T9zBD88y3g8FQeYTi6Jvf/9F0bz8WpmQzNL3ZX3/Xqt
 CO2sd8LBXZzdnsbQbFwwTYYeRqogygHni6tNVN7s8xXqeNfhme9OBxcol
 3QtXH42I1dkoaXiOA9upDjgpTejZkxW5MPI8AG/O+b7ww8JaptxEvWfMY Q==;
X-CSE-ConnectionGUID: +ya8poZgRNadAdW0qCWVBQ==
X-CSE-MsgGUID: 1qohSKN1QaawZlEB75kASg==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="44277041"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="44277041"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 10:05:01 -0700
X-CSE-ConnectionGUID: ok79WbrhTcSANJ0eDEVpBw==
X-CSE-MsgGUID: cGTW9vCTSWmX5Cb/EJyU+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="73491018"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Sep 2024 10:04:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Sep 2024 20:04:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 13/13] drm/i915/dsb: Use DSB for plane/color management
 updates
Date: Mon, 30 Sep 2024 20:04:15 +0300
Message-ID: <20240930170415.23841-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
References: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Push regular plane/color management updates to the DSB,
if other constraints allow it.

The first part of the sequence will go as follows:
- CPU will kick off DSB0 immediately
- DSB0 writes double bufferd non-arming registers
- DSB0 evades the vblank
- DSB0 writes double buffered arming registers

If no color management updates is needed we follow that up with:
- DSB0 waits for the undelayed vblank
- DSB0 waits for the delayed vblank (usec wait)
- DSB0 emits an interrupt which will cause the CPU to complete the commit

If color management update is needed:
- DSB0 will start DSB1 with wait for undelayed vblank
- DSB0 will in parallel perform the force DEwake tricks
- DSB1 writes single buffered LUT registers
- DSB1 waits for the delayed vblank (usec wait)
- DSB1 emits an interrupt which will cause the CPU to complete the commit

With this sequence we don't need to increase the vblank delay
to make room for register programming during vblank, which is
a good thing for high refresh rate display. But I'll need to
still think of some way to eliminate VRR commit completion
related races under this scheme.

Stuff that isn't ready for DSB yet:
- modesets (potentially we could do
  at least the plane enabling via DSB)
- fastsets
- VRR
- PSR
- scalers
- async flips

Reviewed-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c   |   5 +-
 drivers/gpu/drm/i915/display/intel_color.c    |  25 +---
 drivers/gpu/drm/i915/display/intel_crtc.c     |   5 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 128 ++++++++++++++++--
 .../drm/i915/display/intel_display_types.h    |   5 +-
 5 files changed, 128 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 6cac26af128c..03dc54c802d3 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -276,7 +276,8 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
 	crtc_state->fb_bits = 0;
 	crtc_state->update_planes = 0;
 	crtc_state->dsb_color_vblank = NULL;
-	crtc_state->dsb_color_commit = NULL;
+	crtc_state->dsb_commit = NULL;
+	crtc_state->use_dsb = false;
 
 	return &crtc_state->uapi;
 }
@@ -311,7 +312,7 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
 	struct intel_crtc_state *crtc_state = to_intel_crtc_state(state);
 
 	drm_WARN_ON(crtc->dev, crtc_state->dsb_color_vblank);
-	drm_WARN_ON(crtc->dev, crtc_state->dsb_color_commit);
+	drm_WARN_ON(crtc->dev, crtc_state->dsb_commit);
 
 	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
 	intel_crtc_free_hw_state(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 4df580019560..caf1af039960 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1913,9 +1913,6 @@ void intel_color_commit_arm(struct intel_dsb *dsb,
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	i915->display.funcs.color->color_commit_arm(dsb, crtc_state);
-
-	if (crtc_state->dsb_color_commit)
-		intel_dsb_commit(crtc_state->dsb_color_commit, false);
 }
 
 void intel_color_post_update(const struct intel_crtc_state *crtc_state)
@@ -1966,28 +1963,14 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 
 	i915->display.funcs.color->load_luts(crtc_state);
 
+	intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color_vblank);
+	intel_dsb_interrupt(crtc_state->dsb_color_vblank);
+
 	intel_dsb_finish(crtc_state->dsb_color_vblank);
-
-	crtc_state->dsb_color_commit = intel_dsb_prepare(state, crtc, INTEL_DSB_0, 16);
-	if (!crtc_state->dsb_color_commit) {
-		intel_dsb_cleanup(crtc_state->dsb_color_vblank);
-		crtc_state->dsb_color_vblank = NULL;
-		return;
-	}
-
-	intel_dsb_chain(state, crtc_state->dsb_color_commit,
-			crtc_state->dsb_color_vblank, true);
-
-	intel_dsb_finish(crtc_state->dsb_color_commit);
 }
 
 void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state)
 {
-	if (crtc_state->dsb_color_commit) {
-		intel_dsb_cleanup(crtc_state->dsb_color_commit);
-		crtc_state->dsb_color_commit = NULL;
-	}
-
 	if (crtc_state->dsb_color_vblank) {
 		intel_dsb_cleanup(crtc_state->dsb_color_vblank);
 		crtc_state->dsb_color_vblank = NULL;
@@ -1996,8 +1979,6 @@ void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state)
 
 void intel_color_wait_commit(const struct intel_crtc_state *crtc_state)
 {
-	if (crtc_state->dsb_color_commit)
-		intel_dsb_wait(crtc_state->dsb_color_commit);
 	if (crtc_state->dsb_color_vblank)
 		intel_dsb_wait(crtc_state->dsb_color_vblank);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 4c653e9076d5..3c9168a57f38 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -416,10 +416,11 @@ int intel_crtc_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
 static bool intel_crtc_needs_vblank_work(const struct intel_crtc_state *crtc_state)
 {
 	return crtc_state->hw.active &&
-		!intel_crtc_needs_modeset(crtc_state) &&
 		!crtc_state->preload_luts &&
+		!intel_crtc_needs_modeset(crtc_state) &&
 		intel_crtc_needs_color_update(crtc_state) &&
-		!intel_color_uses_dsb(crtc_state);
+		!intel_color_uses_dsb(crtc_state) &&
+		!crtc_state->use_dsb;
 }
 
 static void intel_crtc_vblank_work(struct kthread_work *base)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index dac70db2a6ad..c07de7dcd96e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6859,7 +6859,7 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 	 * During modesets pipe configuration was programmed as the
 	 * CRTC was enabled.
 	 */
-	if (!modeset) {
+	if (!modeset && !new_crtc_state->use_dsb) {
 		if (intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_commit_arm(NULL, new_crtc_state);
 
@@ -6961,10 +6961,12 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 	drm_WARN_ON(&i915->drm, !intel_display_power_is_enabled(i915, POWER_DOMAIN_DC_OFF));
 
 	if (!modeset &&
-	    intel_crtc_needs_color_update(new_crtc_state))
+	    intel_crtc_needs_color_update(new_crtc_state) &&
+	    !new_crtc_state->use_dsb)
 		intel_color_commit_noarm(NULL, new_crtc_state);
 
-	intel_crtc_planes_update_noarm(NULL, state, crtc);
+	if (!new_crtc_state->use_dsb)
+		intel_crtc_planes_update_noarm(NULL, state, crtc);
 }
 
 static void intel_update_crtc(struct intel_atomic_state *state,
@@ -6975,16 +6977,25 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	/* Perform vblank evasion around commit operation */
-	intel_pipe_update_start(state, crtc);
+	if (new_crtc_state->use_dsb) {
+		intel_crtc_prepare_vblank_event(new_crtc_state, &crtc->dsb_event);
 
-	commit_pipe_pre_planes(state, crtc);
+		intel_dsb_commit(new_crtc_state->dsb_commit, false);
+	} else {
+		/* Perform vblank evasion around commit operation */
+		intel_pipe_update_start(state, crtc);
 
-	intel_crtc_planes_update_arm(NULL, state, crtc);
+		if (new_crtc_state->dsb_commit)
+			intel_dsb_commit(new_crtc_state->dsb_commit, false);
 
-	commit_pipe_post_planes(state, crtc);
+		commit_pipe_pre_planes(state, crtc);
 
-	intel_pipe_update_end(state, crtc);
+		intel_crtc_planes_update_arm(NULL, state, crtc);
+
+		commit_pipe_post_planes(state, crtc);
+
+		intel_pipe_update_end(state, crtc);
+	}
 
 	/*
 	 * VRR/Seamless M/N update may need to update frame timings.
@@ -7309,6 +7320,24 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
 	}
 }
 
+static void intel_atomic_dsb_wait_commit(struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->dsb_commit)
+		intel_dsb_wait(crtc_state->dsb_commit);
+
+	intel_color_wait_commit(crtc_state);
+}
+
+static void intel_atomic_dsb_cleanup(struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->dsb_commit) {
+		intel_dsb_cleanup(crtc_state->dsb_commit);
+		crtc_state->dsb_commit = NULL;
+	}
+
+	intel_color_cleanup_commit(crtc_state);
+}
+
 static void intel_atomic_cleanup_work(struct work_struct *work)
 {
 	struct intel_atomic_state *state =
@@ -7319,7 +7348,7 @@ static void intel_atomic_cleanup_work(struct work_struct *work)
 	int i;
 
 	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i)
-		intel_color_cleanup_commit(old_crtc_state);
+		intel_atomic_dsb_cleanup(old_crtc_state);
 
 	drm_atomic_helper_cleanup_planes(&i915->drm, &state->base);
 	drm_atomic_helper_commit_cleanup_done(&state->base);
@@ -7375,6 +7404,78 @@ static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
 	intel_color_prepare_commit(state, crtc);
 }
 
+static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
+	if (!new_crtc_state->hw.active)
+		return;
+
+	if (state->base.legacy_cursor_update)
+		return;
+
+	/* FIXME deal with everything */
+	new_crtc_state->use_dsb =
+		new_crtc_state->update_planes &&
+		!new_crtc_state->vrr.enable &&
+		!new_crtc_state->do_async_flip &&
+		!new_crtc_state->has_psr &&
+		!new_crtc_state->scaler_state.scaler_users &&
+		!old_crtc_state->scaler_state.scaler_users &&
+		!intel_crtc_needs_modeset(new_crtc_state) &&
+		!intel_crtc_needs_fastset(new_crtc_state);
+
+	if (!new_crtc_state->use_dsb && !new_crtc_state->dsb_color_vblank)
+		return;
+
+	/*
+	 * Rough estimate:
+	 * ~64 registers per each plane * 8 planes = 512
+	 * Double that for pipe stuff and other overhead.
+	 */
+	new_crtc_state->dsb_commit = intel_dsb_prepare(state, crtc, INTEL_DSB_0,
+						       new_crtc_state->use_dsb ? 1024 : 16);
+	if (!new_crtc_state->dsb_commit) {
+		new_crtc_state->use_dsb = false;
+		intel_color_cleanup_commit(new_crtc_state);
+		return;
+	}
+
+	if (new_crtc_state->use_dsb) {
+		if (intel_crtc_needs_color_update(new_crtc_state))
+			intel_color_commit_noarm(new_crtc_state->dsb_commit,
+						 new_crtc_state);
+		intel_crtc_planes_update_noarm(new_crtc_state->dsb_commit,
+					       state, crtc);
+
+		intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
+
+		if (intel_crtc_needs_color_update(new_crtc_state))
+			intel_color_commit_arm(new_crtc_state->dsb_commit,
+					       new_crtc_state);
+		bdw_set_pipe_misc(new_crtc_state->dsb_commit,
+				  new_crtc_state);
+		intel_crtc_planes_update_arm(new_crtc_state->dsb_commit,
+					     state, crtc);
+
+		if (!new_crtc_state->dsb_color_vblank) {
+			intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
+			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
+			intel_dsb_interrupt(new_crtc_state->dsb_commit);
+		}
+	}
+
+	if (new_crtc_state->dsb_color_vblank)
+		intel_dsb_chain(state, new_crtc_state->dsb_commit,
+				new_crtc_state->dsb_color_vblank, true);
+
+	intel_dsb_finish(new_crtc_state->dsb_commit);
+}
+
 static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 {
 	struct drm_device *dev = state->base.dev;
@@ -7394,6 +7495,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	intel_atomic_prepare_plane_clear_colors(state);
 
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+		intel_atomic_dsb_finish(state, crtc);
+
 	drm_atomic_helper_wait_for_dependencies(&state->base);
 	drm_dp_mst_atomic_wait_for_dependencies(&state->base);
 	intel_atomic_global_state_wait_for_dependencies(state);
@@ -7507,7 +7611,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		if (new_crtc_state->do_async_flip)
 			intel_crtc_disable_flip_done(state, crtc);
 
-		intel_color_wait_commit(new_crtc_state);
+		intel_atomic_dsb_wait_commit(new_crtc_state);
 	}
 
 	/*
@@ -7552,7 +7656,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 * FIXME get rid of this funny new->old swapping
 		 */
 		old_crtc_state->dsb_color_vblank = fetch_and_zero(&new_crtc_state->dsb_color_vblank);
-		old_crtc_state->dsb_color_commit = fetch_and_zero(&new_crtc_state->dsb_color_commit);
+		old_crtc_state->dsb_commit = fetch_and_zero(&new_crtc_state->dsb_commit);
 	}
 
 	/* Underruns don't always raise interrupts, so check manually */
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 14b86ebbc694..8b607267dd09 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1270,8 +1270,9 @@ struct intel_crtc_state {
 	/* Only valid on TGL+ */
 	enum transcoder mst_master_transcoder;
 
-	/* For DSB based color LUT updates */
-	struct intel_dsb *dsb_color_vblank, *dsb_color_commit;
+	/* For DSB based pipe updates */
+	struct intel_dsb *dsb_color_vblank, *dsb_commit;
+	bool use_dsb;
 
 	u32 psr2_man_track_ctl;
 
-- 
2.45.2

