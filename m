Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CB488ECEF
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 18:46:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63D8610FEC8;
	Wed, 27 Mar 2024 17:46:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FfZO509J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13D7110FEC2
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 17:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711561580; x=1743097580;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UaTYfu+NColV+UT+ilEYZ/1Cy7iEMA1hgRm30+Wb5Sk=;
 b=FfZO509JMLAOI2BXI6rShvvKxStzOX1BWU1I6/pOUBaw9R9amZR4CaCd
 0bVOrIol/9KsDHoKcBU+XYhA4m/ekwjV3bCdCHv6FpQX6w0RFeL1AJObC
 9Evzi1BW7z35wnZ5Fa7HNGBTjkROmVU6ZEJsFf865dPo2vvS7hfDZFkG2
 PRuFLS0cTIVeJ34KF7Av7C4duCGN1fJRaFK9x3M9NLffoSQUYaDMOVt5X
 xthqJpn+YRyVG2lWFZcTMcUNL0qpf2CL9LdaKDboWS1DZ2ai0qEF2QiJY
 NWiFRIKm4luWuTmfUytXmJHahrFZEk+zx3tDgD9agItOwK1/gsPChlboV Q==;
X-CSE-ConnectionGUID: DIMrkoqqRmKJ9v9n8qyQEA==
X-CSE-MsgGUID: +hoY9D51SomiNq4yRLfEnA==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6795477"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6795477"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 10:46:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="827785914"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="827785914"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 27 Mar 2024 10:46:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Mar 2024 19:46:17 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH 11/13] drm/i915: Implement vblank synchronized MBUS join
 changes
Date: Wed, 27 Mar 2024 19:45:42 +0200
Message-ID: <20240327174544.983-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240327174544.983-1-ville.syrjala@linux.intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Currently we can't change MBUS join status without doing a modeset,
because we are lacking mechanism to synchronize those with vblank.
However then this means that we can't do a fastset, if there is a need
to change MBUS join state. Fix that by implementing such change.
We already call correspondent check and update at pre_plane dbuf update,
so the only thing left is to have a non-modeset version of that.
If active pipes stay the same then fastset is possible and only MBUS
join state/ddb allocation updates would be committed.

The full mbus/cdclk sequence will look as follows:
1. disable pipes
2. increase cdclk if necessary
 2.1 reprogram cdclk
 2.2 update dbuf tracker value
3. enable mbus joining if necessary
 3.1 update mbus_ctl
 3.2 update dbuf tracker value
4. reallocate dbuf for planes on active pipes
5. disable mbus joining if necessary
 5.1 update dbuf tracker value
 5.2 update mbus_ctl
6. enable pipes
7. decrease cdclk if necessary
  7.1 update dbuf tracker value
  7.2 reprogram cdclk

And in order to keep things in sync we need:
Step 2:
- mbus_join == old
- mdclk/cdclk ratio == new
Step 3:
- mbus_join == new
- mdclk/cdclk ratio == old when cdclk is changing in step 7
- mdclk/cdclk ratio == new when cdclk is changing in step 2
Step 5:
- mbus_join == new
- mdclk/cdclk ratio == old when cdclk is changing in step 7
- mdclk/cdclk ratio == new when cdclk is changing in step 2
Step 7:
- mbus_join == new
- mdclk/cdclk ratio == new

v2: - Removed redundant parentheses(Ville Syrjälä)
    - Constified new_crtc_state in intel_mbus_joined_pipe(Ville Syrjälä)
    - Removed pipe_select variable(Ville Syrjälä)
[v3: vsyrjala: Correctly sequence vs. cdclk updates,
               properly describe the full sequence,
	       shuffle code around to make the diff more legible,
	       streamline a few things]

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Co-developed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   |  11 ++
 drivers/gpu/drm/i915/display/intel_cdclk.h   |   1 +
 drivers/gpu/drm/i915/display/intel_display.c |   5 +-
 drivers/gpu/drm/i915/display/skl_watermark.c | 141 ++++++++++++-------
 drivers/gpu/drm/i915/display/skl_watermark.h |   3 +-
 5 files changed, 112 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 4024118a7ffb..66c161d7b485 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2576,6 +2576,17 @@ static void intel_cdclk_pcode_post_notify(struct intel_atomic_state *state)
 			   update_cdclk, update_pipe_count);
 }
 
+bool intel_cdclk_is_decreasing_later(struct intel_atomic_state *state)
+{
+	const struct intel_cdclk_state *old_cdclk_state =
+		intel_atomic_get_old_cdclk_state(state);
+	const struct intel_cdclk_state *new_cdclk_state =
+		intel_atomic_get_new_cdclk_state(state);
+
+	return new_cdclk_state && !new_cdclk_state->disable_pipes &&
+		new_cdclk_state->actual.cdclk < old_cdclk_state->actual.cdclk;
+}
+
 /**
  * intel_set_cdclk_pre_plane_update - Push the CDCLK state to the hardware
  * @state: intel atomic state
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 2843fc091086..5d4faf401774 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -69,6 +69,7 @@ bool intel_cdclk_clock_changed(const struct intel_cdclk_config *a,
 			       const struct intel_cdclk_config *b);
 u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
 			   const struct intel_cdclk_config *cdclk_config);
+bool intel_cdclk_is_decreasing_later(struct intel_atomic_state *state);
 void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
 void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
 void intel_cdclk_dump_config(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4d6668a5f1ab..023cf4a77e6f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6915,6 +6915,8 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		intel_pre_update_crtc(state, crtc);
 	}
 
+	intel_dbuf_mbus_pre_ddb_update(state);
+
 	while (update_pipes) {
 		for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 						    new_crtc_state, i) {
@@ -6945,6 +6947,8 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		}
 	}
 
+	intel_dbuf_mbus_post_ddb_update(state);
+
 	update_pipes = modeset_pipes;
 
 	/*
@@ -7191,7 +7195,6 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	intel_encoders_update_prepare(state);
 
 	intel_dbuf_pre_plane_update(state);
-	intel_mbus_dbox_update(state);
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (new_crtc_state->do_async_flip)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index a118ecf9e532..ca0f1f89e6d9 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2636,13 +2636,6 @@ skl_compute_ddb(struct intel_atomic_state *state)
 		if (ret)
 			return ret;
 
-		if (old_dbuf_state->joined_mbus != new_dbuf_state->joined_mbus) {
-			/* TODO: Implement vblank synchronized MBUS joining changes */
-			ret = intel_modeset_all_pipes_late(state, "MBUS joining change");
-			if (ret)
-				return ret;
-		}
-
 		drm_dbg_kms(&i915->drm,
 			    "Enabled dbuf slices 0x%x -> 0x%x (total dbuf slices 0x%x), mbus joined? %s->%s\n",
 			    old_dbuf_state->enabled_slices,
@@ -3559,7 +3552,7 @@ static bool xelpdp_is_only_pipe_per_dbuf_bank(enum pipe pipe, u8 active_pipes)
 	return false;
 }
 
-void intel_mbus_dbox_update(struct intel_atomic_state *state)
+static void intel_mbus_dbox_update(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
@@ -3640,6 +3633,9 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio
 {
 	enum dbuf_slice slice;
 
+	if (!HAS_MBUS_JOINING(i915))
+		return;
+
 	if (DISPLAY_VER(i915) >= 20)
 		intel_de_rmw(i915, MBUS_CTL, MBUS_TRANSLATION_THROTTLE_MIN_MASK,
 			     MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
@@ -3663,24 +3659,42 @@ static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state
 		intel_atomic_get_old_dbuf_state(state);
 	const struct intel_dbuf_state *new_dbuf_state =
 		intel_atomic_get_new_dbuf_state(state);
+	int mdclk_cdclk_ratio;
 
-	if (DISPLAY_VER(i915) >= 20 &&
-	    old_dbuf_state->mdclk_cdclk_ratio != new_dbuf_state->mdclk_cdclk_ratio) {
-		/*
-		 * For Xe2LPD and beyond, when there is a change in the ratio
-		 * between MDCLK and CDCLK, updates to related registers need to
-		 * happen at a specific point in the CDCLK change sequence. In
-		 * that case, we defer to the call to
-		 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK logic.
-		 */
-		return;
+	if (intel_cdclk_is_decreasing_later(state)) {
+		/* cdclk/mdclk will be changed later by intel_set_cdclk_post_plane_update() */
+		mdclk_cdclk_ratio = old_dbuf_state->mdclk_cdclk_ratio;
+	} else {
+		/* cdclk/mdclk already changed by intel_set_cdclk_pre_plane_update() */
+		mdclk_cdclk_ratio = new_dbuf_state->mdclk_cdclk_ratio;
 	}
 
-	intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk_cdclk_ratio,
+	intel_dbuf_mdclk_cdclk_ratio_update(i915, mdclk_cdclk_ratio,
 					    new_dbuf_state->joined_mbus);
 }
 
-static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state)
+static enum pipe intel_mbus_joined_pipe(struct intel_atomic_state *state,
+					const struct intel_dbuf_state *dbuf_state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	enum pipe pipe = ffs(dbuf_state->active_pipes) - 1;
+	const struct intel_crtc_state *new_crtc_state;
+	struct intel_crtc *crtc;
+
+	drm_WARN_ON(&i915->drm, !dbuf_state->joined_mbus);
+	drm_WARN_ON(&i915->drm, !is_power_of_2(dbuf_state->active_pipes));
+
+	crtc = intel_crtc_for_pipe(i915, pipe);
+	new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
+
+	if (new_crtc_state && !intel_crtc_needs_modeset(new_crtc_state))
+		return pipe;
+	else
+		return INVALID_PIPE;
+}
+
+static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state,
+					enum pipe pipe)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_dbuf_state *old_dbuf_state =
@@ -3689,44 +3703,80 @@ static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state)
 		intel_atomic_get_new_dbuf_state(state);
 	u32 mbus_ctl;
 
-	drm_dbg_kms(&i915->drm, "Changing mbus joined: %s -> %s\n",
+	drm_dbg_kms(&i915->drm, "Changing mbus joined: %s -> %s (pipe: %c)\n",
 		    str_yes_no(old_dbuf_state->joined_mbus),
-		    str_yes_no(new_dbuf_state->joined_mbus));
+		    str_yes_no(new_dbuf_state->joined_mbus),
+		    pipe != INVALID_PIPE ? pipe_name(pipe) : '*');
 
-	/*
-	 * TODO: Implement vblank synchronized MBUS joining changes.
-	 * Must be properly coordinated with dbuf reprogramming.
-	 */
 	if (new_dbuf_state->joined_mbus)
-		mbus_ctl = MBUS_HASHING_MODE_1x4 | MBUS_JOIN |
-			MBUS_JOIN_PIPE_SELECT_NONE;
+		mbus_ctl = MBUS_HASHING_MODE_1x4 | MBUS_JOIN;
 	else
-		mbus_ctl = MBUS_HASHING_MODE_2x2 |
-			MBUS_JOIN_PIPE_SELECT_NONE;
+		mbus_ctl = MBUS_HASHING_MODE_2x2;
+
+	if (pipe != INVALID_PIPE)
+		mbus_ctl |= MBUS_JOIN_PIPE_SELECT(pipe);
+	else
+		mbus_ctl |= MBUS_JOIN_PIPE_SELECT_NONE;
 
 	intel_de_rmw(i915, MBUS_CTL,
 		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
 		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
 }
 
-/*
- * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
- * update the request state of all DBUS slices.
- */
-static void update_mbus_pre_enable(struct intel_atomic_state *state)
+void intel_dbuf_mbus_pre_ddb_update(struct intel_atomic_state *state)
+{
+	const struct intel_dbuf_state *new_dbuf_state =
+		intel_atomic_get_new_dbuf_state(state);
+	const struct intel_dbuf_state *old_dbuf_state =
+		intel_atomic_get_old_dbuf_state(state);
+
+	if (!new_dbuf_state)
+		return;
+
+	if (!old_dbuf_state->joined_mbus && new_dbuf_state->joined_mbus) {
+		enum pipe pipe = intel_mbus_joined_pipe(state, new_dbuf_state);
+
+		WARN_ON(!new_dbuf_state->base.changed);
+
+		intel_dbuf_mbus_join_update(state, pipe);
+		intel_mbus_dbox_update(state);
+		intel_dbuf_mdclk_min_tracker_update(state);
+	}
+}
+
+void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_dbuf_state *new_dbuf_state =
+		intel_atomic_get_new_dbuf_state(state);
+	const struct intel_dbuf_state *old_dbuf_state =
+		intel_atomic_get_old_dbuf_state(state);
 
-	if (!HAS_MBUS_JOINING(i915))
+	if (!new_dbuf_state)
 		return;
 
-	/*
-	 * TODO: Implement vblank synchronized MBUS joining changes.
-	 * Must be properly coordinated with dbuf reprogramming.
-	 */
-	intel_dbuf_mbus_join_update(state);
+	if (old_dbuf_state->joined_mbus && !new_dbuf_state->joined_mbus) {
+		enum pipe pipe = intel_mbus_joined_pipe(state, old_dbuf_state);
+
+		WARN_ON(!new_dbuf_state->base.changed);
+
+		intel_dbuf_mdclk_min_tracker_update(state);
+		intel_mbus_dbox_update(state);
+		intel_dbuf_mbus_join_update(state, pipe);
+
+		if (pipe != INVALID_PIPE) {
+			struct intel_crtc *crtc = intel_crtc_for_pipe(i915, pipe);
+
+			intel_crtc_wait_for_next_vblank(crtc);
+		}
+	} else if (old_dbuf_state->joined_mbus == new_dbuf_state->joined_mbus &&
+		   old_dbuf_state->active_pipes != new_dbuf_state->active_pipes) {
+		WARN_ON(!new_dbuf_state->base.changed);
+
+		intel_dbuf_mdclk_min_tracker_update(state);
+		intel_mbus_dbox_update(state);
+	}
 
-	intel_dbuf_mdclk_min_tracker_update(state);
 }
 
 void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
@@ -3738,13 +3788,11 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_old_dbuf_state(state);
 
 	if (!new_dbuf_state ||
-	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices &&
-	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus))
+	    new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices)
 		return;
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
-	update_mbus_pre_enable(state);
 	gen9_dbuf_slices_update(i915,
 				old_dbuf_state->enabled_slices |
 				new_dbuf_state->enabled_slices);
@@ -3759,8 +3807,7 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_old_dbuf_state(state);
 
 	if (!new_dbuf_state ||
-	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices &&
-	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus))
+	    new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices)
 		return;
 
 	WARN_ON(!new_dbuf_state->base.changed);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index bf7516620ab6..3323a1d973f9 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -79,7 +79,8 @@ int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state, u8
 void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
 void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
 void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio, bool joined_mbus);
-void intel_mbus_dbox_update(struct intel_atomic_state *state);
+void intel_dbuf_mbus_pre_ddb_update(struct intel_atomic_state *state);
+void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state);
 
 #endif /* __SKL_WATERMARK_H__ */
 
-- 
2.43.2

