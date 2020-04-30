Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2280D1C0ADC
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 01:09:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F1EB6EA3F;
	Thu, 30 Apr 2020 23:09:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3C756EA42
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 23:08:32 +0000 (UTC)
IronPort-SDR: ERTCNA+3PlA7l790ihAS/1zOnW6eZPE9bnxMwdi39aL0sCKkvXG1lX3GuyGTSE8ctptj9BJKaE
 2hJS1rVQpD8w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 16:08:30 -0700
IronPort-SDR: 0UiRxIE/ywXp1kZ1adJwyphwMTHq+oYsEpX3ZJv5LCWK76h6TUPwKkHhm6v9cKBv/rzdgZ0oPP
 /h5WyoZxFJmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="405581179"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga004.jf.intel.com with ESMTP; 30 Apr 2020 16:08:30 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 16:09:50 -0700
Message-Id: <20200430230951.2508-11-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200430230951.2508-1-manasi.d.navare@intel.com>
References: <20200430230951.2508-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 10/11] drm/i915: Add intel_update_bigjoiner
 handling.
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

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Enabling is done in a special sequence and so should plane updates
be. Ideally the end user never notices the second pipe is used,
so use the vblank evasion to cover both pipes.

This way ideally everything will be tear free, and updates are
really atomic as userspace expects it.

****This needs to be checked if it still works since lot of refactoring
in skl_commit_modeset_enables

v2:
* Manual Rebase (Manasi)
* Refactoring on intel_update_crtc and enable_crtc and removing
special trans_port_sync_update (Manasi)

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 120 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_sprite.c  |  25 +++-
 drivers/gpu/drm/i915/display/intel_sprite.h  |   3 +-
 3 files changed, 129 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c4f02c0c4af1..f9094789a12d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15496,7 +15496,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	else
 		i9xx_update_planes_on_crtc(state, crtc);
 
-	intel_pipe_update_end(new_crtc_state);
+	intel_pipe_update_end(new_crtc_state, NULL);
 
 	/*
 	 * We usually enable FIFO underrun interrupts as part of the
@@ -15594,6 +15594,52 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 	}
 }
 
+static void intel_update_bigjoiner(struct intel_crtc *crtc,
+				   struct intel_atomic_state *state,
+				   struct intel_crtc_state *old_crtc_state,
+				   struct intel_crtc_state *new_crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	bool modeset = needs_modeset(new_crtc_state);
+	struct intel_crtc *slave = new_crtc_state->bigjoiner_linked_crtc;
+	struct intel_crtc_state *new_slave_crtc_state =
+		intel_atomic_get_new_crtc_state(state, slave);
+
+	if (modeset) {
+		/* Enable slave first */
+		intel_crtc_update_active_timings(new_slave_crtc_state);
+		dev_priv->display.crtc_enable(state, slave);
+
+		/* Then master */
+		intel_crtc_update_active_timings(new_crtc_state);
+		dev_priv->display.crtc_enable(state, crtc);
+
+		/* vblanks work again, re-enable pipe CRC. */
+		intel_crtc_enable_pipe_crc(crtc);
+
+	} else {
+		intel_pre_plane_update(state, crtc);
+		intel_pre_plane_update(state, slave);
+
+		if (new_crtc_state->update_pipe)
+			intel_encoders_update_pipe(state, crtc);
+	}
+
+	/*
+	 * Perform vblank evasion around commit operation, and make sure to
+	 * commit both planes simultaneously for best results.
+	 */
+	intel_pipe_update_start(new_crtc_state);
+
+	commit_pipe_config(state, crtc);
+	commit_pipe_config(state, slave);
+
+	skl_update_planes_on_crtc(state, crtc);
+	skl_update_planes_on_crtc(state, slave);
+
+	intel_pipe_update_end(new_crtc_state, new_slave_crtc_state);
+}
+
 static void intel_commit_modeset_enables(struct intel_atomic_state *state)
 {
 	struct intel_crtc_state *new_crtc_state;
@@ -15635,15 +15681,22 @@ static void icl_dbuf_slice_post_update(struct intel_atomic_state *state)
 static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	struct intel_crtc *crtc;
+	struct intel_crtc *crtc, *slave;
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
 	struct skl_ddb_entry entries[I915_MAX_PIPES] = {};
+	struct skl_ddb_entry new_entries[I915_MAX_PIPES] = {};
 	u8 update_pipes = 0, modeset_pipes = 0;
+	const struct intel_crtc_state *slave_crtc_state;
 	int i;
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
 		enum pipe pipe = crtc->pipe;
 
+		if (new_crtc_state->bigjoiner_slave) {
+			/* We're updated from master */
+			continue;
+		}
+
 		if (!new_crtc_state->hw.active)
 			continue;
 
@@ -15654,6 +15707,34 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		} else {
 			modeset_pipes |= BIT(pipe);
 		}
+
+		if (new_crtc_state->bigjoiner) {
+			slave = new_crtc_state->bigjoiner_linked_crtc;
+			slave_crtc_state =
+				intel_atomic_get_new_crtc_state(state,
+								slave);
+
+			/* put both entries in */
+			new_entries[i].start = new_crtc_state->wm.skl.ddb.start;
+			new_entries[i].end = slave_crtc_state->wm.skl.ddb.end;
+		} else {
+			new_entries[i] = new_crtc_state->wm.skl.ddb;
+		}
+
+		/* ignore allocations for crtc's that have been turned off during modeset. */
+		if (needs_modeset(new_crtc_state))
+			continue;
+
+		if (old_crtc_state->bigjoiner) {
+			slave = old_crtc_state->bigjoiner_linked_crtc;
+			slave_crtc_state =
+				intel_atomic_get_old_crtc_state(state, slave);
+
+			entries[i].start = old_crtc_state->wm.skl.ddb.start;
+			entries[i].end = slave_crtc_state->wm.skl.ddb.end;
+		} else {
+			entries[i] = old_crtc_state->wm.skl.ddb;
+		}
 	}
 
 	/*
@@ -15669,28 +15750,34 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 						    new_crtc_state, i) {
 			enum pipe pipe = crtc->pipe;
+			bool ddb_changed;
 
 			if ((update_pipes & BIT(pipe)) == 0)
 				continue;
 
-			if (skl_ddb_allocation_overlaps(&new_crtc_state->wm.skl.ddb,
+			if (skl_ddb_allocation_overlaps(&new_entries[pipe],
 							entries, I915_MAX_PIPES, pipe))
 				continue;
 
-			entries[pipe] = new_crtc_state->wm.skl.ddb;
+			ddb_changed = !skl_ddb_entry_equal(&new_entries[pipe], &entries[pipe]);
+			entries[pipe] = new_entries[pipe];
 			update_pipes &= ~BIT(pipe);
 
-			intel_update_crtc(state, crtc);
-
 			/*
 			 * If this is an already active pipe, it's DDB changed,
 			 * and this isn't the last pipe that needs updating
 			 * then we need to wait for a vblank to pass for the
 			 * new ddb allocation to take effect.
 			 */
-			if (!skl_ddb_entry_equal(&new_crtc_state->wm.skl.ddb,
-						 &old_crtc_state->wm.skl.ddb) &&
-			    (update_pipes | modeset_pipes))
+			if (new_crtc_state->bigjoiner) {
+				intel_update_bigjoiner(crtc, state,
+						       old_crtc_state,
+						       new_crtc_state);
+			} else {
+				intel_update_crtc(state, crtc);
+			}
+
+			if (ddb_changed && (update_pipes | modeset_pipes))
 				intel_wait_for_vblank(dev_priv, pipe);
 		}
 	}
@@ -15726,9 +15813,18 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		if ((modeset_pipes & BIT(pipe)) == 0)
 			continue;
 
+		WARN_ON(skl_ddb_allocation_overlaps(&new_entries[pipe],
+						    entries, I915_MAX_PIPES, pipe));
+
+		entries[pipe] = new_entries[pipe];
 		modeset_pipes &= ~BIT(pipe);
 
-		intel_enable_crtc(state, crtc);
+		if (new_crtc_state->bigjoiner)
+			intel_update_bigjoiner(crtc, state,
+					       old_crtc_state,
+					       new_crtc_state);
+		else
+			intel_enable_crtc(state, crtc);
 	}
 
 	/*
@@ -15740,10 +15836,10 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		if ((update_pipes & BIT(pipe)) == 0)
 			continue;
 
-		drm_WARN_ON(&dev_priv->drm, skl_ddb_allocation_overlaps(&new_crtc_state->wm.skl.ddb,
+		drm_WARN_ON(&dev_priv->drm, skl_ddb_allocation_overlaps(&new_entries[pipe],
 									entries, I915_MAX_PIPES, pipe));
 
-		entries[pipe] = new_crtc_state->wm.skl.ddb;
+		entries[pipe] = new_entries[pipe];
 		update_pipes &= ~BIT(pipe);
 
 		intel_update_crtc(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 04dbe12e2ea9..f950735c22be 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -98,6 +98,8 @@ void intel_pipe_update_start(const struct intel_crtc_state *new_crtc_state)
 
 	/* FIXME needs to be calibrated sensibly */
 	min = vblank_start - intel_usecs_to_scanlines(adjusted_mode,
+						      new_crtc_state->bigjoiner ?
+						      2 * VBLANK_EVASION_TIME_US :
 						      VBLANK_EVASION_TIME_US);
 	max = vblank_start - 1;
 
@@ -190,7 +192,8 @@ void intel_pipe_update_start(const struct intel_crtc_state *new_crtc_state)
  * re-enables interrupts and verifies the update was actually completed
  * before a vblank.
  */
-void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
+void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state,
+			   struct intel_crtc_state *slave_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
@@ -205,16 +208,26 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 	 * Would be slightly nice to just grab the vblank count and arm the
 	 * event outside of the critical section - the spinlock might spin for a
 	 * while ... */
-	if (new_crtc_state->uapi.event) {
-		drm_WARN_ON(&dev_priv->drm,
-			    drm_crtc_vblank_get(&crtc->base) != 0);
+	if (new_crtc_state->uapi.event || (slave_crtc_state && slave_crtc_state->uapi.event)) {
+		if (new_crtc_state->uapi.event)
+			drm_WARN_ON(&dev_priv->drm,
+				    drm_crtc_vblank_get(&crtc->base) != 0);
+		if (slave_crtc_state && slave_crtc_state->uapi.event)
+			drm_WARN_ON(&dev_priv->drm,
+				    drm_crtc_vblank_get(&crtc->base) != 0);
 
 		spin_lock(&crtc->base.dev->event_lock);
-		drm_crtc_arm_vblank_event(&crtc->base,
-				          new_crtc_state->uapi.event);
+		if (new_crtc_state->uapi.event)
+			drm_crtc_arm_vblank_event(&crtc->base,
+						  new_crtc_state->uapi.event);
+		if (slave_crtc_state && slave_crtc_state->uapi.event)
+			drm_crtc_arm_vblank_event(&crtc->base,
+						  slave_crtc_state->uapi.event);
 		spin_unlock(&crtc->base.dev->event_lock);
 
 		new_crtc_state->uapi.event = NULL;
+		if (slave_crtc_state)
+			slave_crtc_state->uapi.event = NULL;
 	}
 
 	local_irq_enable();
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.h b/drivers/gpu/drm/i915/display/intel_sprite.h
index 5eeaa92420d1..31335d12cf56 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.h
+++ b/drivers/gpu/drm/i915/display/intel_sprite.h
@@ -24,7 +24,8 @@ struct intel_plane *intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
 				    struct drm_file *file_priv);
 void intel_pipe_update_start(const struct intel_crtc_state *new_crtc_state);
-void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state);
+void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state,
+			   struct intel_crtc_state *slave_crtc_state);
 int intel_plane_check_stride(const struct intel_plane_state *plane_state);
 int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state);
 int chv_plane_check_rotation(const struct intel_plane_state *plane_state);
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
