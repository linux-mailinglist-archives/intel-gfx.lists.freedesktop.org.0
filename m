Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBD977B1D9
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 08:50:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92FF610E112;
	Mon, 14 Aug 2023 06:50:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se
 [IPv6:2a02:2308:0:7ec:e79c:4e97:b6c4:f0ae])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4FA610E112
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 06:50:19 +0000 (UTC)
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Aug 2023 08:50:06 +0200
Message-Id: <20230814065006.47160-2-dev@lankhorst.se>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230814065006.47160-1-dev@lankhorst.se>
References: <20230814065006.47160-1-dev@lankhorst.se>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Handle legacy cursor update as
 normal update
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

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Abuse the vblank worker to make the changes as small as possible. We
need a way to sync flip_done, but if we wait on flip_done, all async
tests start failing.

Changes since v1:
- Prevent null deref when crtc is inactive.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c    | 28 +++++++++++++-------
 drivers/gpu/drm/i915/display/intel_crtc.h    |  6 +++--
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++---
 3 files changed, 30 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index f06b987f5558..be6959c6eb0d 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -389,11 +389,17 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 	return ret;
 }
 
-static bool intel_crtc_needs_vblank_work(const struct intel_crtc_state *crtc_state)
+static bool intel_crtc_needs_vblank_work(const struct intel_atomic_state *state,
+					 const struct intel_crtc_state *crtc_state)
 {
-	return crtc_state->hw.active &&
-		!intel_crtc_needs_modeset(crtc_state) &&
-		!crtc_state->preload_luts &&
+	if (!crtc_state->hw.active || intel_crtc_needs_modeset(crtc_state))
+		return false;
+
+	/* Init for legacy cursor update, so we can sync on teardown */
+	if (state->base.legacy_cursor_update)
+		return true;
+
+	return !crtc_state->preload_luts &&
 		intel_crtc_needs_color_update(crtc_state);
 }
 
@@ -438,7 +444,7 @@ void intel_wait_for_vblank_workers(struct intel_atomic_state *state)
 	int i;
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
-		if (!intel_crtc_needs_vblank_work(crtc_state))
+		if (!intel_crtc_needs_vblank_work(state, crtc_state))
 			continue;
 
 		drm_vblank_work_flush(&crtc_state->vblank_work);
@@ -470,6 +476,7 @@ static int intel_mode_vblank_start(const struct drm_display_mode *mode)
 
 /**
  * intel_pipe_update_start() - start update of a set of display registers
+ * @state: the intel atomic state
  * @new_crtc_state: the new crtc state
  *
  * Mark the start of an update to pipe registers that should be updated
@@ -480,7 +487,8 @@ static int intel_mode_vblank_start(const struct drm_display_mode *mode)
  * until a subsequent call to intel_pipe_update_end(). That is done to
  * avoid random delays.
  */
-void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state)
+void intel_pipe_update_start(struct intel_atomic_state *state,
+			     struct intel_crtc_state *new_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -497,7 +505,7 @@ void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state)
 	if (new_crtc_state->do_async_flip)
 		return;
 
-	if (intel_crtc_needs_vblank_work(new_crtc_state))
+	if (intel_crtc_needs_vblank_work(state, new_crtc_state))
 		intel_crtc_vblank_work_init(new_crtc_state);
 
 	if (new_crtc_state->vrr.enable) {
@@ -635,13 +643,15 @@ static void dbg_vblank_evade(struct intel_crtc *crtc, ktime_t end) {}
 
 /**
  * intel_pipe_update_end() - end update of a set of display registers
+ * @state: the intel atomic state
  * @new_crtc_state: the new crtc state
  *
  * Mark the end of an update started with intel_pipe_update_start(). This
  * re-enables interrupts and verifies the update was actually completed
  * before a vblank.
  */
-void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
+void intel_pipe_update_end(struct intel_atomic_state *state,
+			   struct intel_crtc_state *new_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
@@ -669,7 +679,7 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 	 * Would be slightly nice to just grab the vblank count and arm the
 	 * event outside of the critical section - the spinlock might spin for a
 	 * while ... */
-	if (intel_crtc_needs_vblank_work(new_crtc_state)) {
+	if (intel_crtc_needs_vblank_work(state, new_crtc_state)) {
 		drm_vblank_work_schedule(&new_crtc_state->vblank_work,
 					 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
 					 false);
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index 51a4c8df9e65..ca7f45a454a0 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -36,8 +36,10 @@ void intel_crtc_state_reset(struct intel_crtc_state *crtc_state,
 u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc);
 void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state);
 void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state);
-void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state);
-void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state);
+void intel_pipe_update_start(struct intel_atomic_state *state,
+			     struct intel_crtc_state *new_crtc_state);
+void intel_pipe_update_end(struct intel_atomic_state *state,
+			   struct intel_crtc_state *new_crtc_state);
 void intel_wait_for_vblank_workers(struct intel_atomic_state *state);
 struct intel_crtc *intel_first_crtc(struct drm_i915_private *i915);
 struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 45a932c9b1b3..f083ef0f53d4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6611,7 +6611,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	intel_crtc_planes_update_noarm(state, crtc);
 
 	/* Perform vblank evasion around commit operation */
-	intel_pipe_update_start(new_crtc_state);
+	intel_pipe_update_start(state, new_crtc_state);
 
 	commit_pipe_pre_planes(state, crtc);
 
@@ -6619,7 +6619,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 
 	commit_pipe_post_planes(state, crtc);
 
-	intel_pipe_update_end(new_crtc_state);
+	intel_pipe_update_end(state, new_crtc_state);
 
 	/*
 	 * We usually enable FIFO underrun interrupts as part of the
@@ -6921,6 +6921,9 @@ static void intel_atomic_cleanup_work(struct work_struct *work)
 	struct intel_crtc *crtc;
 	int i;
 
+	if (state->base.legacy_cursor_update)
+		intel_wait_for_vblank_workers(state);
+
 	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i)
 		intel_color_cleanup_commit(old_crtc_state);
 
@@ -7116,7 +7119,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	if (state->modeset)
 		intel_set_cdclk_post_plane_update(state);
 
-	intel_wait_for_vblank_workers(state);
+	if (!state->base.legacy_cursor_update)
+		intel_wait_for_vblank_workers(state);
 
 	/* FIXME: We should call drm_atomic_helper_commit_hw_done() here
 	 * already, but still need the state for the delayed optimization. To
-- 
2.39.2

