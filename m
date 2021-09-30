Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CF941D077
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 02:08:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ABB06EB0E;
	Thu, 30 Sep 2021 00:08:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 086F16E2B4
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 00:08:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="212148100"
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="212148100"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 17:08:30 -0700
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="438658501"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 17:08:30 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Wed, 29 Sep 2021 17:14:05 -0700
Message-Id: <20210930001409.254817-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210930001409.254817-1-jose.souza@intel.com>
References: <20210930001409.254817-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/9] drm/i915/display: Fix glitches when
 moving cursor with PSR2 selective fetch enabled
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

Legacy cursor APIs are handled by intel_legacy_cursor_update(), that
calls drm_atomic_helper_update_plane() when going through the
slow/atomic path to update cursor, what was the case for PSR2
selective fetch.

drm_atomic_helper_update_plane() sets
drm_atomic_state->legacy_cursor_update to true when updating the
cursor plane, to allow several cursor updates to happen within the
same frame, as userspace does that.
If drivers waited for a vblank increment at the end of every cursor
movement that would cause a visible lag in the cursor.

But this optimization do not properly work with PSR2 selective fetch
dirt area calculation, for example if within a single frame the cursor
had 3 moves the final dirt area programmed to PSR2_MAN_TRK_CTL would
be based in the second movement as old state and third movement as new
state, not updating the area where cursor was in the first state.

So here switching back to the fast path approach in
intel_legacy_cursor_update() and handling cursor movements as
frontbuffer rendering(psr_force_hw_tracking_exit()), that is not the
most optimal for power-savings but is the solution that we have until
mailbox style updates is implemented.

Also removing the cursor workaround as not it is properly undestand
the issue and is know that it will never cover all the cases.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c   |  5 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  4 +-
 .../gpu/drm/i915/display/intel_frontbuffer.h  |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 59 +++++--------------
 4 files changed, 20 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 901ad3a4c8c3b..f6dcb5aa63f64 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -639,8 +639,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	 * FIXME bigjoiner fastpath would be good
 	 */
 	if (!crtc_state->hw.active || intel_crtc_needs_modeset(crtc_state) ||
-	    crtc_state->update_pipe || crtc_state->bigjoiner ||
-	    crtc_state->enable_psr2_sel_fetch)
+	    crtc_state->update_pipe || crtc_state->bigjoiner)
 		goto slow;
 
 	/*
@@ -698,7 +697,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 		goto out_free;
 
 	intel_frontbuffer_flush(to_intel_frontbuffer(new_plane_state->hw.fb),
-				ORIGIN_FLIP);
+				ORIGIN_CURSOR_UPDATE);
 	intel_frontbuffer_track(to_intel_frontbuffer(old_plane_state->hw.fb),
 				to_intel_frontbuffer(new_plane_state->hw.fb),
 				plane->frontbuffer_bit);
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 46f62fdf9eeeb..77b00e3a92c23 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1199,7 +1199,7 @@ void intel_fbc_invalidate(struct drm_i915_private *dev_priv,
 	if (!HAS_FBC(dev_priv))
 		return;
 
-	if (origin == ORIGIN_FLIP)
+	if (origin == ORIGIN_FLIP || origin == ORIGIN_CURSOR_UPDATE)
 		return;
 
 	mutex_lock(&fbc->lock);
@@ -1224,7 +1224,7 @@ void intel_fbc_flush(struct drm_i915_private *dev_priv,
 
 	fbc->busy_bits &= ~frontbuffer_bits;
 
-	if (origin == ORIGIN_FLIP)
+	if (origin == ORIGIN_FLIP || origin == ORIGIN_CURSOR_UPDATE)
 		goto out;
 
 	if (!fbc->busy_bits && fbc->crtc &&
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index 4b977c1e4d52b..a88441edc8f94 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -37,6 +37,7 @@ enum fb_op_origin {
 	ORIGIN_CS,
 	ORIGIN_FLIP,
 	ORIGIN_DIRTYFB,
+	ORIGIN_CURSOR_UPDATE,
 };
 
 struct intel_frontbuffer {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7185801d5deff..e8af39591dfea 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1558,28 +1558,6 @@ static void intel_psr2_sel_fetch_pipe_alignment(const struct intel_crtc_state *c
 		drm_warn(&dev_priv->drm, "Missing PSR2 sel fetch alignment with DSC\n");
 }
 
-/*
- * FIXME: Not sure why but when moving the cursor fast it causes some artifacts
- * of the cursor to be left in the cursor path, adding some pixels above the
- * cursor to the damaged area fixes the issue.
- */
-static void cursor_area_workaround(const struct intel_plane_state *new_plane_state,
-				   struct drm_rect *damaged_area,
-				   struct drm_rect *pipe_clip)
-{
-	const struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
-	int height;
-
-	if (plane->id != PLANE_CURSOR)
-		return;
-
-	height = drm_rect_height(&new_plane_state->uapi.dst) / 2;
-	damaged_area->y1 -=  height;
-	damaged_area->y1 = max(damaged_area->y1, 0);
-
-	clip_area_update(pipe_clip, damaged_area);
-}
-
 /*
  * TODO: Not clear how to handle planes with negative position,
  * also planes are not updated if they have a negative X
@@ -1680,9 +1658,6 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				damaged_area.y2 = new_plane_state->uapi.dst.y2;
 				clip_area_update(&pipe_clip, &damaged_area);
 			}
-
-			cursor_area_workaround(new_plane_state, &damaged_area,
-					       &pipe_clip);
 			continue;
 		} else if (new_plane_state->uapi.alpha != old_plane_state->uapi.alpha) {
 			/* If alpha changed mark the whole plane area as damaged */
@@ -2116,20 +2091,16 @@ void intel_psr_invalidate(struct drm_i915_private *dev_priv,
 /*
  * When we will be completely rely on PSR2 S/W tracking in future,
  * intel_psr_flush() will invalidate and flush the PSR for ORIGIN_FLIP
- * event also therefore tgl_dc3co_flush() require to be changed
+ * event also therefore tgl_dc3co_flush_locked() require to be changed
  * accordingly in future.
  */
 static void
-tgl_dc3co_flush(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
-		enum fb_op_origin origin)
+tgl_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
+		       enum fb_op_origin origin)
 {
-	mutex_lock(&intel_dp->psr.lock);
-
-	if (!intel_dp->psr.dc3co_exitline)
-		goto unlock;
-
-	if (!intel_dp->psr.psr2_enabled || !intel_dp->psr.active)
-		goto unlock;
+	if (!intel_dp->psr.dc3co_exitline || !intel_dp->psr.psr2_enabled ||
+	    !intel_dp->psr.active)
+		return;
 
 	/*
 	 * At every frontbuffer flush flip event modified delay of delayed work,
@@ -2137,14 +2108,11 @@ tgl_dc3co_flush(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
 	 */
 	if (!(frontbuffer_bits &
 	    INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe)))
-		goto unlock;
+		return;
 
 	tgl_psr2_enable_dc3co(intel_dp);
 	mod_delayed_work(system_wq, &intel_dp->psr.dc3co_work,
 			 intel_dp->psr.dc3co_exit_delay);
-
-unlock:
-	mutex_unlock(&intel_dp->psr.lock);
 }
 
 /**
@@ -2169,11 +2137,6 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
 		unsigned int pipe_frontbuffer_bits = frontbuffer_bits;
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-		if (origin == ORIGIN_FLIP) {
-			tgl_dc3co_flush(intel_dp, frontbuffer_bits, origin);
-			continue;
-		}
-
 		mutex_lock(&intel_dp->psr.lock);
 		if (!intel_dp->psr.enabled) {
 			mutex_unlock(&intel_dp->psr.lock);
@@ -2194,6 +2157,14 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
 			continue;
 		}
 
+		if (origin == ORIGIN_FLIP ||
+		    (origin == ORIGIN_CURSOR_UPDATE &&
+		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
+			tgl_dc3co_flush_locked(intel_dp, frontbuffer_bits, origin);
+			mutex_unlock(&intel_dp->psr.lock);
+			continue;
+		}
+
 		/* By definition flush = invalidate + flush */
 		if (pipe_frontbuffer_bits)
 			psr_force_hw_tracking_exit(intel_dp);
-- 
2.33.0

