Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3B22778A6
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 20:45:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F40D6EB42;
	Thu, 24 Sep 2020 18:45:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9D496E8CC
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 18:45:39 +0000 (UTC)
IronPort-SDR: oZ2Nu1oTXdbElm1DQ3Fnkuy/AQwdXG47AD86MBeZRXBiYuNYj8a7RjNpPdB623iqOLKhS2ySpa
 PqNyUB/d9PwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="161378283"
X-IronPort-AV: E=Sophos;i="5.77,298,1596524400"; d="scan'208";a="161378283"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 11:45:39 -0700
IronPort-SDR: SbN23yvAG71oiZGuVE6ITAsYtoXaSqAmF/OBDbbu5CP3IdjOtJBdQVOtgzcZYNtBx4nAx8pgwH
 b5vrcjYv2PVw==
X-IronPort-AV: E=Sophos;i="5.77,298,1596524400"; d="scan'208";a="347935823"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 24 Sep 2020 11:45:38 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Sep 2020 11:46:23 -0700
Message-Id: <20200924184624.20522-10-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200924184624.20522-1-manasi.d.navare@intel.com>
References: <20200924184624.20522-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 10/11] drm/i915: Add intel_update_bigjoiner
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

This still has special handling for bigjoiner which will be
removed eventually and made to fit in the generic
modeset_enables code like trans_port_sync.
This optimization will be done as a second step once we have the
end to end functionality working.

v3:
* Fixes in enable and disable sequence from testing (Manasi)
v2:
* Manual Rebase (Manasi)
* Refactoring on intel_update_crtc and enable_crtc and removing
special trans_port_sync_update (Manasi)

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 133 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_sprite.c  |  25 +++-
 drivers/gpu/drm/i915/display/intel_sprite.h  |   3 +-
 3 files changed, 138 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index de2b13b14b3a..6168f35deb61 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15711,7 +15711,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	else
 		i9xx_update_planes_on_crtc(state, crtc);
 
-	intel_pipe_update_end(new_crtc_state);
+	intel_pipe_update_end(new_crtc_state, NULL);
 
 	/*
 	 * We usually enable FIFO underrun interrupts as part of the
@@ -15735,9 +15735,11 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 	drm_WARN_ON(&dev_priv->drm, old_crtc_state->bigjoiner_slave);
 
 	intel_crtc_disable_planes(state, crtc);
-	if (old_crtc_state->bigjoiner)
+	if (old_crtc_state->bigjoiner) {
 		intel_crtc_disable_planes(state,
 					  old_crtc_state->bigjoiner_linked_crtc);
+		old_crtc_state->bigjoiner_linked_crtc->active = false;
+	}
 
 	/*
 	 * We need to disable pipe CRC before disabling the pipe,
@@ -15767,7 +15769,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 	/* Only disable port sync and MST slaves */
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
-		if (!needs_modeset(new_crtc_state) || old_crtc_state->bigjoiner_slave)
+		if (!needs_modeset(new_crtc_state) || old_crtc_state->bigjoiner)
 			continue;
 
 		if (!old_crtc_state->hw.active)
@@ -15809,6 +15811,52 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
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
@@ -15827,15 +15875,22 @@ static void intel_commit_modeset_enables(struct intel_atomic_state *state)
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
 
@@ -15846,6 +15901,34 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
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
@@ -15861,28 +15944,34 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
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
@@ -15900,7 +15989,8 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 			continue;
 
 		if (intel_dp_mst_is_slave_trans(new_crtc_state) ||
-		    is_trans_port_sync_master(new_crtc_state))
+		    is_trans_port_sync_master(new_crtc_state) ||
+		    new_crtc_state->bigjoiner)
 			continue;
 
 		modeset_pipes &= ~BIT(pipe);
@@ -15910,7 +16000,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 
 	/*
 	 * Then we enable all remaining pipes that depend on other
-	 * pipes: MST slaves and port sync masters.
+	 * pipes: MST slaves and port sync masters, big joiner master,slave.
 	 */
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		enum pipe pipe = crtc->pipe;
@@ -15918,9 +16008,20 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		if ((modeset_pipes & BIT(pipe)) == 0)
 			continue;
 
+		WARN_ON(skl_ddb_allocation_overlaps(&new_entries[pipe],
+						    entries, I915_MAX_PIPES, pipe));
+
+		entries[pipe] = new_entries[pipe];
 		modeset_pipes &= ~BIT(pipe);
 
-		intel_enable_crtc(state, crtc);
+		if (new_crtc_state->bigjoiner) {
+			intel_update_bigjoiner(crtc, state,
+					       old_crtc_state,
+					       new_crtc_state);
+			update_pipes &= ~BIT(pipe);
+		} else {
+			intel_enable_crtc(state, crtc);
+		}
 	}
 
 	/*
@@ -15932,10 +16033,10 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
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
index 4d710db64430..be4382282cf6 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -99,6 +99,8 @@ void intel_pipe_update_start(const struct intel_crtc_state *new_crtc_state)
 
 	/* FIXME needs to be calibrated sensibly */
 	min = vblank_start - intel_usecs_to_scanlines(adjusted_mode,
+						      new_crtc_state->bigjoiner ?
+						      2 * VBLANK_EVASION_TIME_US :
 						      VBLANK_EVASION_TIME_US);
 	max = vblank_start - 1;
 
@@ -191,7 +193,8 @@ void intel_pipe_update_start(const struct intel_crtc_state *new_crtc_state)
  * re-enables interrupts and verifies the update was actually completed
  * before a vblank.
  */
-void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
+void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state,
+			   struct intel_crtc_state *slave_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
@@ -206,16 +209,26 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
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
index cd2104ba1ca1..15e7c112ec77 100644
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
