Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDCE7B51A4
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 13:45:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD3B710E28E;
	Mon,  2 Oct 2023 11:45:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se
 [IPv6:2a02:2308:0:7ec:e79c:4e97:b6c4:f0ae])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B10010E27F
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 11:45:50 +0000 (UTC)
From: maarten.lankhorst@linux.intel.com
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Oct 2023 13:45:28 +0200
Message-Id: <20231002114528.125529-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231002114528.125529-1-maarten.lankhorst@linux.intel.com>
References: <20231002114528.125529-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Use
 drm_atomic_helper_update_plane for cursor updates
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
Cc: Maarten Lankhorst <dev@lankhorst.se>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Maarten Lankhorst <dev@lankhorst.se>

Regular path should be fast enough, even for i915.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 146 +-------------------
 1 file changed, 1 insertion(+), 145 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index b342fad180ca..37c0d3d40e6f 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -603,152 +603,8 @@ static bool intel_cursor_format_mod_supported(struct drm_plane *_plane,
 	return format == DRM_FORMAT_ARGB8888;
 }
 
-static int
-intel_legacy_cursor_update(struct drm_plane *_plane,
-			   struct drm_crtc *_crtc,
-			   struct drm_framebuffer *fb,
-			   int crtc_x, int crtc_y,
-			   unsigned int crtc_w, unsigned int crtc_h,
-			   u32 src_x, u32 src_y,
-			   u32 src_w, u32 src_h,
-			   struct drm_modeset_acquire_ctx *ctx)
-{
-	struct intel_plane *plane = to_intel_plane(_plane);
-	struct intel_crtc *crtc = to_intel_crtc(_crtc);
-	struct intel_plane_state *old_plane_state =
-		to_intel_plane_state(plane->base.state);
-	struct intel_plane_state *new_plane_state;
-	struct intel_crtc_state *crtc_state =
-		to_intel_crtc_state(crtc->base.state);
-	struct intel_crtc_state *new_crtc_state;
-	int ret;
-
-	/*
-	 * When crtc is inactive or there is a modeset pending,
-	 * wait for it to complete in the slowpath.
-	 * PSR2 selective fetch also requires the slow path as
-	 * PSR2 plane and transcoder registers can only be updated during
-	 * vblank.
-	 *
-	 * FIXME bigjoiner fastpath would be good
-	 */
-	if (!crtc_state->hw.active ||
-	    intel_crtc_needs_modeset(crtc_state) ||
-	    intel_crtc_needs_fastset(crtc_state) ||
-	    crtc_state->bigjoiner_pipes)
-		goto slow;
-
-	/*
-	 * Don't do an async update if there is an outstanding commit modifying
-	 * the plane.  This prevents our async update's changes from getting
-	 * overridden by a previous synchronous update's state.
-	 */
-	if (old_plane_state->uapi.commit &&
-	    !try_wait_for_completion(&old_plane_state->uapi.commit->hw_done))
-		goto slow;
-
-	/*
-	 * If any parameters change that may affect watermarks,
-	 * take the slowpath. Only changing fb or position should be
-	 * in the fastpath.
-	 */
-	if (old_plane_state->uapi.crtc != &crtc->base ||
-	    old_plane_state->uapi.src_w != src_w ||
-	    old_plane_state->uapi.src_h != src_h ||
-	    old_plane_state->uapi.crtc_w != crtc_w ||
-	    old_plane_state->uapi.crtc_h != crtc_h ||
-	    !old_plane_state->uapi.fb != !fb)
-		goto slow;
-
-	new_plane_state = to_intel_plane_state(intel_plane_duplicate_state(&plane->base));
-	if (!new_plane_state)
-		return -ENOMEM;
-
-	new_crtc_state = to_intel_crtc_state(intel_crtc_duplicate_state(&crtc->base));
-	if (!new_crtc_state) {
-		ret = -ENOMEM;
-		goto out_free;
-	}
-
-	drm_atomic_set_fb_for_plane(&new_plane_state->uapi, fb);
-
-	new_plane_state->uapi.src_x = src_x;
-	new_plane_state->uapi.src_y = src_y;
-	new_plane_state->uapi.src_w = src_w;
-	new_plane_state->uapi.src_h = src_h;
-	new_plane_state->uapi.crtc_x = crtc_x;
-	new_plane_state->uapi.crtc_y = crtc_y;
-	new_plane_state->uapi.crtc_w = crtc_w;
-	new_plane_state->uapi.crtc_h = crtc_h;
-
-	intel_plane_copy_uapi_to_hw_state(new_plane_state, new_plane_state, crtc);
-
-	ret = intel_plane_atomic_check_with_state(crtc_state, new_crtc_state,
-						  old_plane_state, new_plane_state);
-	if (ret)
-		goto out_free;
-
-	ret = intel_plane_pin_fb(new_plane_state);
-	if (ret)
-		goto out_free;
-
-	intel_frontbuffer_flush(to_intel_frontbuffer(new_plane_state->hw.fb),
-				ORIGIN_CURSOR_UPDATE);
-	intel_frontbuffer_track(to_intel_frontbuffer(old_plane_state->hw.fb),
-				to_intel_frontbuffer(new_plane_state->hw.fb),
-				plane->frontbuffer_bit);
-
-	/* Swap plane state */
-	plane->base.state = &new_plane_state->uapi;
-
-	/*
-	 * We cannot swap crtc_state as it may be in use by an atomic commit or
-	 * page flip that's running simultaneously. If we swap crtc_state and
-	 * destroy the old state, we will cause a use-after-free there.
-	 *
-	 * Only update active_planes, which is needed for our internal
-	 * bookkeeping. Either value will do the right thing when updating
-	 * planes atomically. If the cursor was part of the atomic update then
-	 * we would have taken the slowpath.
-	 */
-	crtc_state->active_planes = new_crtc_state->active_planes;
-
-	/*
-	 * Technically we should do a vblank evasion here to make
-	 * sure all the cursor registers update on the same frame.
-	 * For now just make sure the register writes happen as
-	 * quickly as possible to minimize the race window.
-	 */
-	local_irq_disable();
-
-	if (new_plane_state->uapi.visible) {
-		intel_plane_update_noarm(plane, crtc_state, new_plane_state);
-		intel_plane_update_arm(plane, crtc_state, new_plane_state);
-	} else {
-		intel_plane_disable_arm(plane, crtc_state);
-	}
-
-	local_irq_enable();
-
-	intel_plane_unpin_fb(old_plane_state);
-
-out_free:
-	if (new_crtc_state)
-		intel_crtc_destroy_state(&crtc->base, &new_crtc_state->uapi);
-	if (ret)
-		intel_plane_destroy_state(&plane->base, &new_plane_state->uapi);
-	else
-		intel_plane_destroy_state(&plane->base, &old_plane_state->uapi);
-	return ret;
-
-slow:
-	return drm_atomic_helper_update_plane(&plane->base, &crtc->base, fb,
-					      crtc_x, crtc_y, crtc_w, crtc_h,
-					      src_x, src_y, src_w, src_h, ctx);
-}
-
 static const struct drm_plane_funcs intel_cursor_plane_funcs = {
-	.update_plane = intel_legacy_cursor_update,
+	.update_plane = drm_atomic_helper_update_plane,
 	.disable_plane = drm_atomic_helper_disable_plane,
 	.destroy = intel_plane_destroy,
 	.atomic_duplicate_state = intel_plane_duplicate_state,
-- 
2.40.1

