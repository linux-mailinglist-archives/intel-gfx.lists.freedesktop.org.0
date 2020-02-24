Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8701616AA37
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 16:35:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5C136E550;
	Mon, 24 Feb 2020 15:35:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D6566E550
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 15:35:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 07:35:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,480,1574150400"; d="scan'208";a="316779350"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by orsmga001.jf.intel.com with ESMTP; 24 Feb 2020 07:35:50 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Feb 2020 17:32:36 +0200
Message-Id: <20200224153240.9047-5-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200224153240.9047-1-stanislav.lisovskiy@intel.com>
References: <20200224153240.9047-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v18 4/8] drm/i915: Introduce more
 *_state_changed indicators
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The reasoning behind this is such that current dependencies
in the code are rather implicit in a sense, we have to constantly
check a bunch of different bits like state->modeset,
state->active_pipe_changes, which sometimes can indicate counter
intuitive changes.

By introducing more fine grained state change tracking we achieve
better readability and dependency maintenance for the code.

For example it is no longer needed to evaluate active_pipe_changes
to understand if there were changes for wm/ddb - lets just have
a correspondent bit in a state, called ddb_state_changed.

active_pipe_changes just indicate whether there was some pipe added
or removed. Then we evaluate if wm/ddb had been changed.
Same for sagv/bw state. ddb changes may or may not affect if out
bandwidth constraints have been changed.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c   |  2 ++
 drivers/gpu/drm/i915/display/intel_bw.c       |  2 ++
 drivers/gpu/drm/i915/display/intel_display.c  | 16 ++++++----
 .../drm/i915/display/intel_display_types.h    | 32 ++++++++++++-------
 drivers/gpu/drm/i915/intel_pm.c               |  4 ++-
 5 files changed, 38 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index d043057d2fa0..0db9c66d3c0f 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -525,6 +525,8 @@ void intel_atomic_state_clear(struct drm_atomic_state *s)
 	state->dpll_set = state->modeset = false;
 	state->global_state_changed = false;
 	state->active_pipes = 0;
+	state->ddb_state_changed = false;
+	state->bw_state_changed = false;
 }
 
 struct intel_crtc_state *
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index bdad7476dc7b..d07918b4a3d5 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -468,6 +468,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	if (ret)
 		return ret;
 
+	state->bw_state_changed = true;
+
 	data_rate = intel_bw_data_rate(dev_priv, bw_state);
 	num_active_planes = intel_bw_num_active_planes(dev_priv, bw_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 48fe3d2e0fa3..530a25e1ad1c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15509,8 +15509,10 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 * SKL workaround: bspec recommends we disable the SAGV when we
 		 * have more then one pipe enabled
 		 */
-		if (!intel_can_enable_sagv(state))
-			intel_disable_sagv(dev_priv);
+		if (state->bw_state_changed) {
+			if (!intel_can_enable_sagv(state))
+				intel_disable_sagv(dev_priv);
+		}
 
 		intel_modeset_verify_disabled(dev_priv, state);
 	}
@@ -15534,7 +15536,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		intel_encoders_update_prepare(state);
 
 	/* Enable all new slices, we might need */
-	if (state->modeset)
+	if (state->ddb_state_changed)
 		icl_dbuf_slice_pre_update(state);
 
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
@@ -15591,7 +15593,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	}
 
 	/* Disable all slices, we don't need */
-	if (state->modeset)
+	if (state->ddb_state_changed)
 		icl_dbuf_slice_post_update(state);
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
@@ -15610,8 +15612,10 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	if (state->modeset)
 		intel_verify_planes(state);
 
-	if (state->modeset && intel_can_enable_sagv(state))
-		intel_enable_sagv(dev_priv);
+	if (state->bw_state_changed) {
+		if (intel_can_enable_sagv(state)
+			intel_enable_sagv(dev_priv);
+	}
 
 	drm_atomic_helper_commit_hw_done(&state->base);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0d8a64305464..12b47ba3c68d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -471,16 +471,6 @@ struct intel_atomic_state {
 
 	bool dpll_set, modeset;
 
-	/*
-	 * Does this transaction change the pipes that are active?  This mask
-	 * tracks which CRTC's have changed their active state at the end of
-	 * the transaction (not counting the temporary disable during modesets).
-	 * This mask should only be non-zero when intel_state->modeset is true,
-	 * but the converse is not necessarily true; simply changing a mode may
-	 * not flip the final active status of any CRTC's
-	 */
-	u8 active_pipe_changes;
-
 	u8 active_pipes;
 
 	struct intel_shared_dpll_state shared_dpll[I915_NUM_PLLS];
@@ -494,10 +484,30 @@ struct intel_atomic_state {
 	bool rps_interactive;
 
 	/*
-	 * active_pipes
+	 * active pipes
 	 */
 	bool global_state_changed;
 
+	/*
+	 * Does this transaction change the pipes that are active?  This mask
+	 * tracks which CRTC's have changed their active state at the end of
+	 * the transaction (not counting the temporary disable during modesets).
+	 * This mask should only be non-zero when intel_state->modeset is true,
+	 * but the converse is not necessarily true; simply changing a mode may
+	 * not flip the final active status of any CRTC's
+	 */
+	u8 active_pipe_changes;
+
+	/*
+	 * More granular change indicator for ddb changes
+	 */
+	bool ddb_state_changed;
+
+	/*
+	 * More granular change indicator for bandwidth state changes
+	 */
+	bool bw_state_changed;
+
 	/* Number of enabled DBuf slices */
 	u8 enabled_dbuf_slices_mask;
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index e1d167429489..7a76b2ed7a87 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3894,7 +3894,7 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
 	 * that changes the active CRTC list or do modeset would need to
 	 * grab _all_ crtc locks, including the one we currently hold.
 	 */
-	if (!intel_state->active_pipe_changes && !intel_state->modeset) {
+	if (!intel_state->ddb_state_changed) {
 		/*
 		 * alloc may be cleared by clear_intel_crtc_state,
 		 * copy from old state to be sure
@@ -5787,6 +5787,8 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
 			return PTR_ERR(plane_state);
 
 		new_crtc_state->update_planes |= BIT(plane_id);
+
+		state->ddb_state_changed = true;
 	}
 
 	return 0;
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
