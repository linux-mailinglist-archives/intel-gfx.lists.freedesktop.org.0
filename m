Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF1B8958C9
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 17:51:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 199E510FE19;
	Tue,  2 Apr 2024 15:51:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i78ieMhV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1D9A10FE18
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 15:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712073059; x=1743609059;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yRl8n/cJwKkQt/fhoR+6NLoSpvWnhuzM33vunsPyml8=;
 b=i78ieMhV4kd5FzZiABgS5ex71zLyDDNFGX3SZVJWIkzGPDQkLKlIdC49
 KpxYvXuPH5Hwp0wk9OpduxHvYe2C9YJ+rKvS0Iaw9VdnobJ0AHyObHVrX
 XaKcY3GbhwacJeyuocuE6w6n9uyxEK4bdqEwj+X2a0ojpujxj1myAx9zE
 msJrTDOLwBDrzyg4eFXNon2vfZm943vl8gOSnxPpFF0BCSJbFuhdAoAf0
 qmcQa5HaizXEyYap1TzeeGSbl31qSxWRU2byifH1ldZp2dvRzsyEsgsnI
 pT7Fjc7/HhRp+CmTh6Dqlh3tan3oTFVKMoTNI2ac9+UZfJEJELtJANpk/ Q==;
X-CSE-ConnectionGUID: vGCtKYjFTx6smKY3VwFZug==
X-CSE-MsgGUID: TRHS9FcKSXu8GFVBasi3Eg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17980884"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17980884"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 08:50:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789492"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789492"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 08:50:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 18:50:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>,
 Uma Shankar <uma.shankar@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 12/14] drm/i915: Implement vblank synchronized MBUS join
 changes
Date: Tue,  2 Apr 2024 18:50:14 +0300
Message-ID: <20240402155016.13733-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
References: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
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
[v4: vsyrjala: Move the intel_cdclk_is_decreasing_later() stuff
               to a separate patch]

Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com> #v3
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Co-developed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |   5 +-
 drivers/gpu/drm/i915/display/skl_watermark.c | 122 +++++++++++++------
 drivers/gpu/drm/i915/display/skl_watermark.h |   3 +-
 3 files changed, 92 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 614e60420a29..e0616f3e4d27 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6906,6 +6906,8 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		intel_pre_update_crtc(state, crtc);
 	}
 
+	intel_dbuf_mbus_pre_ddb_update(state);
+
 	while (update_pipes) {
 		for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 						    new_crtc_state, i) {
@@ -6936,6 +6938,8 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		}
 	}
 
+	intel_dbuf_mbus_post_ddb_update(state);
+
 	update_pipes = modeset_pipes;
 
 	/*
@@ -7182,7 +7186,6 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	intel_encoders_update_prepare(state);
 
 	intel_dbuf_pre_plane_update(state);
-	intel_mbus_dbox_update(state);
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (new_crtc_state->do_async_flip)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 028c3e6d6b1d..ca0f1f89e6d9 100644
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
@@ -3677,7 +3673,28 @@ static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state
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
@@ -3686,44 +3703,80 @@ static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state)
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
@@ -3735,13 +3788,11 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
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
@@ -3756,8 +3807,7 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
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

