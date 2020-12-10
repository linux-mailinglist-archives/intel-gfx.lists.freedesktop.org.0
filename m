Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C896F2D52B2
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 05:18:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3AD46E841;
	Thu, 10 Dec 2020 04:18:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BB3D6E841
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 04:18:03 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-2-FRoYm_JSNFWU6a5f03vQHw-1; Wed, 09 Dec 2020 23:18:00 -0500
X-MC-Unique: FRoYm_JSNFWU6a5f03vQHw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A72B2800D53
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 04:17:59 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.32.209])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DFE4B5D6A1
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 04:17:58 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Dec 2020 14:17:47 +1000
Message-Id: <20201210041755.29088-2-airlied@gmail.com>
In-Reply-To: <20201210041755.29088-1-airlied@gmail.com>
References: <20201210041755.29088-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Subject: [Intel-gfx] [PATCH 1/9] drm/i915/display: move needs_modeset to an
 inline in header
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

From: Dave Airlie <airlied@redhat.com>

This function is going to be used in a later change, so clean it
up first before moving it.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 78 +++++++++----------
 .../drm/i915/display/intel_display_types.h    |  6 ++
 2 files changed, 42 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c567c0cada7e..80103211f407 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -542,12 +542,6 @@ icl_wa_scalerclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
 		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_DIS);
 }
 
-static bool
-needs_modeset(const struct intel_crtc_state *state)
-{
-	return drm_atomic_crtc_needs_modeset(&state->uapi);
-}
-
 static bool
 is_trans_port_sync_slave(const struct intel_crtc_state *crtc_state)
 {
@@ -6474,7 +6468,7 @@ static bool hsw_pre_update_disable_ips(const struct intel_crtc_state *old_crtc_s
 	if (!old_crtc_state->ips_enabled)
 		return false;
 
-	if (needs_modeset(new_crtc_state))
+	if (intel_crtc_needs_modeset(new_crtc_state))
 		return true;
 
 	/*
@@ -6501,7 +6495,7 @@ static bool hsw_post_update_enable_ips(const struct intel_crtc_state *old_crtc_s
 	if (!new_crtc_state->ips_enabled)
 		return false;
 
-	if (needs_modeset(new_crtc_state))
+	if (intel_crtc_needs_modeset(new_crtc_state))
 		return true;
 
 	/*
@@ -6554,7 +6548,7 @@ static bool needs_scalerclk_wa(const struct intel_crtc_state *crtc_state)
 static bool planes_enabling(const struct intel_crtc_state *old_crtc_state,
 			    const struct intel_crtc_state *new_crtc_state)
 {
-	return (!old_crtc_state->active_planes || needs_modeset(new_crtc_state)) &&
+	return (!old_crtc_state->active_planes || intel_crtc_needs_modeset(new_crtc_state)) &&
 		new_crtc_state->active_planes;
 }
 
@@ -6562,7 +6556,7 @@ static bool planes_disabling(const struct intel_crtc_state *old_crtc_state,
 			     const struct intel_crtc_state *new_crtc_state)
 {
 	return old_crtc_state->active_planes &&
-		(!new_crtc_state->active_planes || needs_modeset(new_crtc_state));
+		(!new_crtc_state->active_planes || intel_crtc_needs_modeset(new_crtc_state));
 }
 
 static void intel_post_plane_update(struct intel_atomic_state *state,
@@ -6685,7 +6679,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	 * If we're doing a modeset we don't need to do any
 	 * pre-vblank watermark programming here.
 	 */
-	if (!needs_modeset(new_crtc_state)) {
+	if (!intel_crtc_needs_modeset(new_crtc_state)) {
 		/*
 		 * For platforms that support atomic watermarks, program the
 		 * 'intermediate' watermarks immediately.  On pre-gen9 platforms, these
@@ -12046,7 +12040,7 @@ static void i9xx_update_cursor(struct intel_plane *plane,
 	if (INTEL_GEN(dev_priv) >= 9)
 		skl_write_cursor_wm(plane, crtc_state);
 
-	if (!needs_modeset(crtc_state))
+	if (!intel_crtc_needs_modeset(crtc_state))
 		intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, 0);
 
 	if (plane->cursor.base != base ||
@@ -12616,7 +12610,7 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	bool mode_changed = needs_modeset(crtc_state);
+	bool mode_changed = intel_crtc_needs_modeset(crtc_state);
 	bool was_crtc_enabled = old_crtc_state->hw.active;
 	bool is_crtc_enabled = crtc_state->hw.active;
 	bool turn_off, turn_on, visible, was_visible;
@@ -12980,7 +12974,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	bool mode_changed = needs_modeset(crtc_state);
+	bool mode_changed = intel_crtc_needs_modeset(crtc_state);
 	int ret;
 
 	if (INTEL_GEN(dev_priv) < 5 && !IS_G4X(dev_priv) &&
@@ -14812,7 +14806,7 @@ intel_modeset_verify_crtc(struct intel_crtc *crtc,
 			  struct intel_crtc_state *old_crtc_state,
 			  struct intel_crtc_state *new_crtc_state)
 {
-	if (!needs_modeset(new_crtc_state) && !new_crtc_state->update_pipe)
+	if (!intel_crtc_needs_modeset(new_crtc_state) && !new_crtc_state->update_pipe)
 		return;
 
 	verify_wm_state(crtc, new_crtc_state);
@@ -14907,7 +14901,7 @@ static void intel_modeset_clear_plls(struct intel_atomic_state *state)
 		return;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
-		if (!needs_modeset(new_crtc_state))
+		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
 		intel_release_shared_dplls(state, crtc);
@@ -14932,7 +14926,7 @@ static int hsw_mode_set_planes_workaround(struct intel_atomic_state *state)
 	/* look at all crtc's that are going to be enabled in during modeset */
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		if (!crtc_state->hw.active ||
-		    !needs_modeset(crtc_state))
+		    !intel_crtc_needs_modeset(crtc_state))
 			continue;
 
 		if (first_crtc_state) {
@@ -14957,7 +14951,7 @@ static int hsw_mode_set_planes_workaround(struct intel_atomic_state *state)
 		crtc_state->hsw_workaround_pipe = INVALID_PIPE;
 
 		if (!crtc_state->hw.active ||
-		    needs_modeset(crtc_state))
+		    intel_crtc_needs_modeset(crtc_state))
 			continue;
 
 		/* 2 or more enabled crtcs means no need for w/a */
@@ -15276,7 +15270,7 @@ static bool intel_cpu_transcoders_need_modeset(struct intel_atomic_state *state,
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (new_crtc_state->hw.enable &&
 		    transcoders & BIT(new_crtc_state->cpu_transcoder) &&
-		    needs_modeset(new_crtc_state))
+		    intel_crtc_needs_modeset(new_crtc_state))
 			return true;
 	}
 
@@ -15297,7 +15291,7 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 		slave = crtc;
 		master = old_crtc_state->bigjoiner_linked_crtc;
 		master_crtc_state = intel_atomic_get_new_crtc_state(state, master);
-		if (!master_crtc_state || !needs_modeset(master_crtc_state))
+		if (!master_crtc_state || !intel_crtc_needs_modeset(master_crtc_state))
 			goto claimed;
 	}
 
@@ -15376,7 +15370,7 @@ static int intel_atomic_check_async(struct intel_atomic_state *state)
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
-		if (needs_modeset(new_crtc_state)) {
+		if (intel_crtc_needs_modeset(new_crtc_state)) {
 			drm_dbg_kms(&i915->drm, "Modeset Required. Async flip not supported\n");
 			return -EINVAL;
 		}
@@ -15499,7 +15493,7 @@ static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state *state)
 		if (IS_ERR(linked_crtc_state))
 			return PTR_ERR(linked_crtc_state);
 
-		if (!needs_modeset(crtc_state))
+		if (!intel_crtc_needs_modeset(crtc_state))
 			continue;
 
 		linked_crtc_state->uapi.mode_changed = true;
@@ -15516,7 +15510,7 @@ static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state *state)
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		/* Kill old bigjoiner link, we may re-establish afterwards */
-		if (needs_modeset(crtc_state) &&
+		if (intel_crtc_needs_modeset(crtc_state) &&
 		    crtc_state->bigjoiner && !crtc_state->bigjoiner_slave)
 			kill_bigjoiner_slave(state, crtc_state);
 	}
@@ -15555,7 +15549,7 @@ static int intel_atomic_check(struct drm_device *dev,
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
-		if (!needs_modeset(new_crtc_state)) {
+		if (!intel_crtc_needs_modeset(new_crtc_state)) {
 			/* Light copy */
 			intel_crtc_copy_uapi_to_hw_state_nomodeset(state, new_crtc_state);
 
@@ -15586,7 +15580,7 @@ static int intel_atomic_check(struct drm_device *dev,
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
-		if (!needs_modeset(new_crtc_state))
+		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
 		ret = intel_modeset_pipe_config_late(new_crtc_state);
@@ -15608,7 +15602,7 @@ static int intel_atomic_check(struct drm_device *dev,
 	 * forced a full modeset.
 	 */
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
-		if (!new_crtc_state->hw.enable || needs_modeset(new_crtc_state))
+		if (!new_crtc_state->hw.enable || intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
 		if (intel_dp_mst_is_slave_trans(new_crtc_state)) {
@@ -15636,7 +15630,7 @@ static int intel_atomic_check(struct drm_device *dev,
 			struct intel_crtc_state *linked_crtc_state =
 				intel_atomic_get_new_crtc_state(state, new_crtc_state->bigjoiner_linked_crtc);
 
-			if (needs_modeset(linked_crtc_state)) {
+			if (intel_crtc_needs_modeset(linked_crtc_state)) {
 				new_crtc_state->uapi.mode_changed = true;
 				new_crtc_state->update_pipe = false;
 			}
@@ -15645,7 +15639,7 @@ static int intel_atomic_check(struct drm_device *dev,
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
-		if (needs_modeset(new_crtc_state)) {
+		if (intel_crtc_needs_modeset(new_crtc_state)) {
 			any_ms = true;
 			continue;
 		}
@@ -15722,12 +15716,12 @@ static int intel_atomic_check(struct drm_device *dev,
 				goto fail;
 		}
 
-		if (!needs_modeset(new_crtc_state) &&
+		if (!intel_crtc_needs_modeset(new_crtc_state) &&
 		    !new_crtc_state->update_pipe)
 			continue;
 
 		intel_dump_pipe_config(new_crtc_state, state,
-				       needs_modeset(new_crtc_state) ?
+				       intel_crtc_needs_modeset(new_crtc_state) ?
 				       "[modeset]" : "[fastset]");
 	}
 
@@ -15759,7 +15753,7 @@ static int intel_atomic_prepare_commit(struct intel_atomic_state *state)
 		return ret;
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
-		bool mode_changed = needs_modeset(crtc_state);
+		bool mode_changed = intel_crtc_needs_modeset(crtc_state);
 
 		if (mode_changed || crtc_state->update_pipe ||
 		    crtc_state->uapi.color_mgmt_changed) {
@@ -15850,7 +15844,7 @@ static void commit_pipe_config(struct intel_atomic_state *state,
 		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	bool modeset = needs_modeset(new_crtc_state);
+	bool modeset = intel_crtc_needs_modeset(new_crtc_state);
 
 	/*
 	 * During modesets pipe configuration was programmed as the
@@ -15884,7 +15878,7 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	if (!needs_modeset(new_crtc_state))
+	if (!intel_crtc_needs_modeset(new_crtc_state))
 		return;
 
 	intel_crtc_update_active_timings(new_crtc_state);
@@ -15906,7 +15900,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	bool modeset = needs_modeset(new_crtc_state);
+	bool modeset = intel_crtc_needs_modeset(new_crtc_state);
 
 	if (!modeset) {
 		if (new_crtc_state->preload_luts &&
@@ -15998,7 +15992,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 	/* Only disable port sync and MST slaves */
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
-		if (!needs_modeset(new_crtc_state) || old_crtc_state->bigjoiner)
+		if (!intel_crtc_needs_modeset(new_crtc_state) || old_crtc_state->bigjoiner)
 			continue;
 
 		if (!old_crtc_state->hw.active)
@@ -16022,7 +16016,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 	/* Disable everything else left on */
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
-		if (!needs_modeset(new_crtc_state) ||
+		if (!intel_crtc_needs_modeset(new_crtc_state) ||
 		    (handled & BIT(crtc->pipe)) ||
 		    old_crtc_state->bigjoiner_slave)
 			continue;
@@ -16072,7 +16066,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 			continue;
 
 		/* ignore allocations for crtc's that have been turned off. */
-		if (!needs_modeset(new_crtc_state)) {
+		if (!intel_crtc_needs_modeset(new_crtc_state)) {
 			entries[pipe] = old_crtc_state->wm.skl.ddb;
 			update_pipes |= BIT(pipe);
 		} else {
@@ -16267,7 +16261,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
-		if (needs_modeset(new_crtc_state) ||
+		if (intel_crtc_needs_modeset(new_crtc_state) ||
 		    new_crtc_state->update_pipe) {
 
 			put_domains[crtc->pipe] =
@@ -16293,7 +16287,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	/* Complete the events for pipes that have now been disabled */
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
-		bool modeset = needs_modeset(new_crtc_state);
+		bool modeset = intel_crtc_needs_modeset(new_crtc_state);
 
 		/* Complete events for now disable pipes here. */
 		if (modeset && !new_crtc_state->hw.active && new_crtc_state->uapi.event) {
@@ -16341,7 +16335,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 			skl_disable_flip_done(crtc);
 
 		if (new_crtc_state->hw.active &&
-		    !needs_modeset(new_crtc_state) &&
+		    !intel_crtc_needs_modeset(new_crtc_state) &&
 		    !new_crtc_state->preload_luts &&
 		    (new_crtc_state->uapi.color_mgmt_changed ||
 		     new_crtc_state->update_pipe))
@@ -16712,7 +16706,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 		 * This should only fail upon a hung GPU, in which case we
 		 * can safely continue.
 		 */
-		if (needs_modeset(crtc_state)) {
+		if (intel_crtc_needs_modeset(crtc_state)) {
 			ret = i915_sw_fence_await_reservation(&state->commit_ready,
 							      old_obj->base.resv, NULL,
 							      false, 0,
@@ -16937,7 +16931,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	 *
 	 * FIXME bigjoiner fastpath would be good
 	 */
-	if (!crtc_state->hw.active || needs_modeset(crtc_state) ||
+	if (!crtc_state->hw.active || intel_crtc_needs_modeset(crtc_state) ||
 	    crtc_state->update_pipe || crtc_state->bigjoiner)
 		goto slow;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 5bc5bfbc4551..8c4afad68a44 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1777,6 +1777,12 @@ intel_crtc_has_dp_encoder(const struct intel_crtc_state *crtc_state)
 		 (1 << INTEL_OUTPUT_EDP));
 }
 
+static inline bool
+intel_crtc_needs_modeset(const struct intel_crtc_state *state)
+{
+	return drm_atomic_crtc_needs_modeset(&state->uapi);
+}
+
 static inline void
 intel_wait_for_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
