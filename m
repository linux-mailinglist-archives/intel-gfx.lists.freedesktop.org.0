Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF1A405FD3
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 01:02:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E7036E946;
	Thu,  9 Sep 2021 23:02:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DAE96E93F
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 23:02:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="243251442"
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="243251442"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 16:02:08 -0700
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="466798522"
Received: from rsalmerx-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.209.166.193])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 16:02:08 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Thu,  9 Sep 2021 16:07:24 -0700
Message-Id: <20210909230725.33735-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210909230725.33735-1-jose.souza@intel.com>
References: <20210909230725.33735-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/display/psr: Use drm damage
 helpers to calculate plane damaged area
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

drm_atomic_helper_damage_iter_init() + drm_atomic_for_each_plane_damage()
returns the full plane area in case no damaged area was set by
userspace or it was discarted by driver.

This is important to fix the rendering of userspace applications that
does frontbuffer rendering and notify driver about dirty areas but do
not set any dirty clips.

With this we don't need to worry about to check and mark the whole
area as damaged in page flips.

Another important change here is the move of
drm_atomic_add_affected_planes() call, it needs to called late
otherwise the area of all the planes would be added to pipe_clip and
not saving power.

Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 37 +++++++++---------------
 1 file changed, 13 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1a3effa3ce709..670b0ceba110f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -22,6 +22,7 @@
  */
 
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_damage_helper.h>
 
 #include "display/intel_dp.h"
 
@@ -1577,10 +1578,6 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return 0;
 
-	ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
-	if (ret)
-		return ret;
-
 	/*
 	 * Calculate minimal selective fetch area of each plane and calculate
 	 * the pipe damaged area.
@@ -1590,8 +1587,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
 					     new_plane_state, i) {
 		struct drm_rect src, damaged_area = { .y1 = -1 };
-		struct drm_mode_rect *damaged_clips;
-		u32 num_clips, j;
+		struct drm_atomic_helper_damage_iter iter;
+		struct drm_rect clip;
 
 		if (new_plane_state->uapi.crtc != crtc_state->uapi.crtc)
 			continue;
@@ -1611,8 +1608,6 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 			break;
 		}
 
-		num_clips = drm_plane_get_damage_clips_count(&new_plane_state->uapi);
-
 		/*
 		 * If visibility or plane moved, mark the whole plane area as
 		 * damaged as it needs to be complete redraw in the new and old
@@ -1633,14 +1628,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				clip_area_update(&pipe_clip, &damaged_area);
 			}
 			continue;
-		} else if (new_plane_state->uapi.alpha != old_plane_state->uapi.alpha ||
-			   (!num_clips &&
-			    new_plane_state->uapi.fb != old_plane_state->uapi.fb)) {
-			/*
-			 * If the plane don't have damaged areas but the
-			 * framebuffer changed or alpha changed, mark the whole
-			 * plane area as damaged.
-			 */
+		} else if (new_plane_state->uapi.alpha != old_plane_state->uapi.alpha) {
+			/* If alpha changed mark the whole plane area as damaged */
 			damaged_area.y1 = new_plane_state->uapi.dst.y1;
 			damaged_area.y2 = new_plane_state->uapi.dst.y2;
 			clip_area_update(&pipe_clip, &damaged_area);
@@ -1648,15 +1637,11 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		}
 
 		drm_rect_fp_to_int(&src, &new_plane_state->uapi.src);
-		damaged_clips = drm_plane_get_damage_clips(&new_plane_state->uapi);
 
-		for (j = 0; j < num_clips; j++) {
-			struct drm_rect clip;
-
-			clip.x1 = damaged_clips[j].x1;
-			clip.y1 = damaged_clips[j].y1;
-			clip.x2 = damaged_clips[j].x2;
-			clip.y2 = damaged_clips[j].y2;
+		drm_atomic_helper_damage_iter_init(&iter,
+						   &old_plane_state->uapi,
+						   &new_plane_state->uapi);
+		drm_atomic_for_each_plane_damage(&iter, &clip) {
 			if (drm_rect_intersect(&clip, &src))
 				clip_area_update(&damaged_area, &clip);
 		}
@@ -1672,6 +1657,10 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	if (full_update)
 		goto skip_sel_fetch_set_loop;
 
+	ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
+	if (ret)
+		return ret;
+
 	intel_psr2_sel_fetch_pipe_alignment(crtc_state, &pipe_clip);
 
 	/*
-- 
2.33.0

