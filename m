Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5832843E14
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 12:16:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 848CD113B63;
	Wed, 31 Jan 2024 11:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB31010F994
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 11:16:00 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [[CI] 2/3] drm/i915: Use vblank worker to unpin old legacy cursor fb
 safely
Date: Wed, 31 Jan 2024 12:06:51 +0100
Message-ID: <20240131110652.612766-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240131110652.612766-1-maarten.lankhorst@linux.intel.com>
References: <20240131110652.612766-1-maarten.lankhorst@linux.intel.com>
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

The cursor hardware only does sync updates, and thus the hardware
will be scanning out from the old fb until the next start of vblank.
So in order to make the legacy cursor fastpath actually safe we
should not unpin the old fb until we're sure the hardware has
ceased accessing it. The simplest approach is to just use a vblank
work here to do the delayed unpin.

Not 100% sure it's a good idea to put this onto the same high
priority vblank worker as eg. our timing critical gamma updates.
But let's keep it simple for now, and it we later discover that
this is causing problems we can think about adding a lower
priority worker for such things.

This patch is slightly reworked by Maarten

Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c   | 26 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_display.c  |  3 +++
 .../drm/i915/display/intel_display_types.h    |  3 +++
 3 files changed, 30 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 926e2de00eb58..64bdf0eb7943c 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -635,6 +635,17 @@ static bool intel_cursor_format_mod_supported(struct drm_plane *_plane,
 	return format == DRM_FORMAT_ARGB8888;
 }
 
+static void intel_cursor_unpin_work(struct kthread_work *base)
+{
+	struct drm_vblank_work *work = to_drm_vblank_work(base);
+	struct intel_plane_state *plane_state =
+		container_of(work, typeof(*plane_state), unpin_work);
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+
+	intel_plane_unpin_fb(plane_state);
+	intel_plane_destroy_state(&plane->base, &plane_state->uapi);
+}
+
 static int
 intel_legacy_cursor_update(struct drm_plane *_plane,
 			   struct drm_crtc *_crtc,
@@ -762,14 +773,25 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 
 	local_irq_enable();
 
-	intel_plane_unpin_fb(old_plane_state);
+	if (old_plane_state->ggtt_vma != new_plane_state->ggtt_vma) {
+		drm_vblank_work_init(&old_plane_state->unpin_work, &crtc->base,
+				     intel_cursor_unpin_work);
+
+		drm_vblank_work_schedule(&old_plane_state->unpin_work,
+					 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
+					 false);
+
+		old_plane_state = NULL;
+	} else {
+		intel_plane_unpin_fb(old_plane_state);
+	}
 
 out_free:
 	if (new_crtc_state)
 		intel_crtc_destroy_state(&crtc->base, &new_crtc_state->uapi);
 	if (ret)
 		intel_plane_destroy_state(&plane->base, &new_plane_state->uapi);
-	else
+	else if (old_plane_state)
 		intel_plane_destroy_state(&plane->base, &old_plane_state->uapi);
 	return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b10aad15a63d9..b3d73ded097c4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -64,6 +64,7 @@
 #include "intel_crt.h"
 #include "intel_crtc.h"
 #include "intel_crtc_state_dump.h"
+#include "intel_cursor.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_driver.h"
@@ -6771,6 +6772,8 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 			continue;
 
 		intel_crtc_disable_planes(state, crtc);
+
+		drm_vblank_work_flush_all(&crtc->base);
 	}
 
 	/* Only disable port sync and MST slaves */
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 3fdd8a5179831..b7faeeb5ddc1c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -713,6 +713,9 @@ struct intel_plane_state {
 
 	struct intel_fb_view view;
 
+	/* for legacy cursor fb unpin */
+	struct drm_vblank_work unpin_work;
+
 	/* Plane pxp decryption state */
 	bool decrypt;
 
-- 
2.43.0

