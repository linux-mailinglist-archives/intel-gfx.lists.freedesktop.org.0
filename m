Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F9D89855D
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 12:48:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C157111B3CB;
	Thu,  4 Apr 2024 10:48:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7E1F10E6A5;
 Thu,  4 Apr 2024 10:48:07 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [rebase 3/3] drm/i915: Use the same vblank worker for atomic unpin
Date: Thu,  4 Apr 2024 12:48:13 +0200
Message-ID: <20240404104813.150030-3-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240404104813.150030-1-maarten.lankhorst@linux.intel.com>
References: <20240404104813.150030-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
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

In case of legacy cursor update, the cursor VMA needs to be unpinned
only after vblank. This exceeds the lifetime of the whole atomic commit.

Any trick I attempted to keep the atomic commit alive didn't work, as
drm_atomic_helper_setup_commit() force throttles on any old commit that
wasn't cleaned up.

The only option remaining is to remove the plane from the atomic commit,
and use the same path as the legacy cursor update to clean the state
after vblank.

Changes since previous version:
- Call the memset for plane state immediately when scheduling vblank,
  this prevents a use-after-free in cursor cleanup.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 13 +++++++-
 .../gpu/drm/i915/display/intel_atomic_plane.h |  2 ++
 drivers/gpu/drm/i915/display/intel_crtc.c     | 31 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_cursor.h   |  3 ++
 5 files changed, 49 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 76d77d5a0409..ab01c2d15afd 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -42,6 +42,7 @@
 #include "i915_reg.h"
 #include "intel_atomic_plane.h"
 #include "intel_cdclk.h"
+#include "intel_cursor.h"
 #include "intel_display_rps.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
@@ -1163,7 +1164,6 @@ intel_cleanup_plane_fb(struct drm_plane *plane,
 
 	intel_display_rps_mark_interactive(dev_priv, state, false);
 
-	/* Should only be called after a successful intel_prepare_plane_fb()! */
 	intel_plane_unpin_fb(old_plane_state);
 }
 
@@ -1176,3 +1176,14 @@ void intel_plane_helper_add(struct intel_plane *plane)
 {
 	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);
 }
+
+void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_state,
+					 struct intel_plane_state *new_plane_state)
+{
+	if (!old_plane_state->ggtt_vma ||
+	    old_plane_state->ggtt_vma == new_plane_state->ggtt_vma)
+		return;
+
+	drm_vblank_work_init(&old_plane_state->unpin_work, old_plane_state->uapi.crtc,
+			     intel_cursor_unpin_work);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 191dad0efc8e..5a897cf6fa02 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -66,5 +66,7 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state);
 void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 			       struct intel_plane_state *plane_state);
 void intel_plane_helper_add(struct intel_plane *plane);
+void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_state,
+					 struct intel_plane_state *new_plane_state);
 
 #endif /* __INTEL_ATOMIC_PLANE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 22b80004574f..558e9b7404b5 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -500,6 +500,19 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	if (intel_crtc_needs_vblank_work(new_crtc_state))
 		intel_crtc_vblank_work_init(new_crtc_state);
 
+	if (state->base.legacy_cursor_update) {
+		struct intel_plane *plane;
+		struct intel_plane_state *old_plane_state, *new_plane_state;
+		int i;
+
+		for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
+						     new_plane_state, i) {
+			if (old_plane_state->uapi.crtc == &crtc->base)
+				intel_plane_init_cursor_vblank_work(old_plane_state,
+								    new_plane_state);
+		}
+	}
+
 	intel_vblank_evade_init(old_crtc_state, new_crtc_state, &evade);
 
 	if (drm_WARN_ON(&dev_priv->drm, drm_crtc_vblank_get(&crtc->base)))
@@ -618,6 +631,24 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 		new_crtc_state->uapi.event = NULL;
 	}
 
+	if (state->base.legacy_cursor_update) {
+		struct intel_plane *plane;
+		struct intel_plane_state *old_plane_state;
+		int i;
+
+		for_each_old_intel_plane_in_state(state, plane, old_plane_state, i) {
+			if (old_plane_state->uapi.crtc == &crtc->base &&
+			    old_plane_state->unpin_work.vblank) {
+				drm_vblank_work_schedule(&old_plane_state->unpin_work,
+							 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
+							 false);
+
+				/* Remove plane from atomic state, cleanup/free is done from vblank worker. */
+				memset(&state->base.planes[i], 0, sizeof(state->base.planes[i]));
+			}
+		}
+	}
+
 	/*
 	 * Send VRR Push to terminate Vblank. If we are already in vblank
 	 * this has to be done _after_ sampling the frame counter, as
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index f2d18695c21d..e999ee8e9d94 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -674,7 +674,7 @@ static bool intel_cursor_format_mod_supported(struct drm_plane *_plane,
 	return format == DRM_FORMAT_ARGB8888;
 }
 
-static void intel_cursor_unpin_work(struct kthread_work *base)
+void intel_cursor_unpin_work(struct kthread_work *base)
 {
 	struct drm_vblank_work *work = to_drm_vblank_work(base);
 	struct intel_plane_state *plane_state =
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.h b/drivers/gpu/drm/i915/display/intel_cursor.h
index ce333bf4c2d5..e2d9ec710a86 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.h
+++ b/drivers/gpu/drm/i915/display/intel_cursor.h
@@ -9,9 +9,12 @@
 enum pipe;
 struct drm_i915_private;
 struct intel_plane;
+struct kthread_work;
 
 struct intel_plane *
 intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 			  enum pipe pipe);
 
+void intel_cursor_unpin_work(struct kthread_work *base);
+
 #endif
-- 
2.43.0

