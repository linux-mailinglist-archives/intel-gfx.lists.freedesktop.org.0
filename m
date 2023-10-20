Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3C77D0C27
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Oct 2023 11:41:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 180D710E0EB;
	Fri, 20 Oct 2023 09:41:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE3BE10E0EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 09:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697794895; x=1729330895;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dxBcLm1PS9q/TsjdeIbZ9Cb+b+LG9jGpzTVsXNACTew=;
 b=aydH2BcJA/0BicXUMgl5hJFdXGj2ReWEJ9/DfNwTUSB00I29X6i4Smxw
 t9TEmejGKm7qUCgODOo4XXvvKAjP+2dITujyWAqWyoWmtA6odoSwnyfNf
 4lxWf/BqX7wHHYqOZM8a7Ey2spYxMI+1zHzRkr8gP1A/9W2ZDSljXrW4R
 Q8EzTdUSWxfp3B5Iwo1V7842uw4tTJ9dI5GYWR42+hUAhN2zBQybWtaVe
 avchq96Vq388jw1awMmwoLGM9Sj9kA4R/jtEq5BOj+Ztth2bavEzldt21
 D7mCx/A2NUm/McAvlTHCIGyQ01JAEeNK/mUUru8aQaMVUOD1GLrp+4hgh g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="472687687"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="472687687"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 02:41:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="930959098"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="930959098"
Received: from arechkov-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.62.209])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 02:41:32 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Oct 2023 12:41:03 +0300
Message-Id: <20231020094103.1605942-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Use dma_fence interfaces
 instead of i915_sw_fence
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

We are preparing for Xe driver. Xe driver doesn't have i915_sw_fence
implementation. Lets drop i915_sw_fence usage from display code and
use dma_fence interfaces directly.

For this purpose stack dma fences from related objects into new plane
state. Drm_gem_plane_helper_prepare_fb can be used for fences in new
fb. Separate local implementation is used for Stacking fences from old fb
into new plane state. Then wait for these stacked fences during atomic
commit. There is no be need for separate GPU reset handling in
intel_atomic_commit_fence_wait as the fences are signaled when GPU hang is
detected and GPU is being reset.

v2:
  - Add fences from old fb into new_plane_state->uapi.fence rather than
    into old_plane_state->uapi.fence

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c   |  3 -
 .../gpu/drm/i915/display/intel_atomic_plane.c | 89 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_display.c  | 78 ++++++----------
 .../drm/i915/display/intel_display_types.h    |  2 -
 4 files changed, 77 insertions(+), 95 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 5d18145da279..ec0d5168b503 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -331,9 +331,6 @@ void intel_atomic_state_free(struct drm_atomic_state *_state)
 
 	drm_atomic_state_default_release(&state->base);
 	kfree(state->global_objs);
-
-	i915_sw_fence_fini(&state->commit_ready);
-
 	kfree(state);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index b1074350616c..20fd12df6850 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -31,7 +31,10 @@
  * prepare/check/commit/cleanup steps.
  */
 
+#include <linux/dma-fence-chain.h>
+
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_gem_atomic_helper.h>
 #include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 
@@ -1012,6 +1015,44 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 	return 0;
 }
 
+static int add_fences(struct dma_resv *obj,
+		      struct drm_plane_state *dst)
+{
+	struct dma_fence *fence = dma_fence_get(dst->fence);
+	enum dma_resv_usage usage;
+	struct dma_fence *new;
+	int ret;
+
+	usage = fence ? DMA_RESV_USAGE_KERNEL : DMA_RESV_USAGE_WRITE;
+
+	ret = dma_resv_get_singleton(obj, usage, &new);
+	if (ret)
+		goto error;
+
+	if (new && fence) {
+		struct dma_fence_chain *chain = dma_fence_chain_alloc();
+
+		if (!chain) {
+			ret = -ENOMEM;
+			goto error;
+		}
+
+		dma_fence_chain_init(chain, fence, new, 1);
+		fence = &chain->base;
+
+	} else if (new) {
+		fence = new;
+	}
+
+	dma_fence_put(dst->fence);
+	dst->fence = fence;
+	return 0;
+
+error:
+	dma_fence_put(fence);
+	return ret;
+}
+
 /**
  * intel_prepare_plane_fb - Prepare fb for usage on plane
  * @_plane: drm plane to prepare for
@@ -1035,7 +1076,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 	struct intel_atomic_state *state =
 		to_intel_atomic_state(new_plane_state->uapi.state);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
-	const struct intel_plane_state *old_plane_state =
+	struct intel_plane_state *old_plane_state =
 		intel_atomic_get_old_plane_state(state, plane);
 	struct drm_i915_gem_object *obj = intel_fb_obj(new_plane_state->hw.fb);
 	struct drm_i915_gem_object *old_obj = intel_fb_obj(old_plane_state->hw.fb);
@@ -1057,56 +1098,30 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 		 * This should only fail upon a hung GPU, in which case we
 		 * can safely continue.
 		 */
-		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
-			ret = i915_sw_fence_await_reservation(&state->commit_ready,
-							      old_obj->base.resv,
-							      false, 0,
-							      GFP_KERNEL);
+		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state) &&
+		    !dma_resv_test_signaled(old_obj->base.resv,
+					    dma_resv_usage_rw(false))) {
+			ret = add_fences(old_obj->base.resv, &new_plane_state->uapi);
 			if (ret < 0)
 				return ret;
 		}
 	}
 
-	if (new_plane_state->uapi.fence) { /* explicit fencing */
-		i915_gem_fence_wait_priority(new_plane_state->uapi.fence,
-					     &attr);
-		ret = i915_sw_fence_await_dma_fence(&state->commit_ready,
-						    new_plane_state->uapi.fence,
-						    i915_fence_timeout(dev_priv),
-						    GFP_KERNEL);
-		if (ret < 0)
-			return ret;
-	}
-
 	if (!obj)
 		return 0;
 
-
 	ret = intel_plane_pin_fb(new_plane_state);
 	if (ret)
 		return ret;
 
-	i915_gem_object_wait_priority(obj, 0, &attr);
+	ret = drm_gem_plane_helper_prepare_fb(_plane, &new_plane_state->uapi);
+	if (ret < 0)
+		goto unpin_fb;
 
-	if (!new_plane_state->uapi.fence) { /* implicit fencing */
-		struct dma_resv_iter cursor;
-		struct dma_fence *fence;
-
-		ret = i915_sw_fence_await_reservation(&state->commit_ready,
-						      obj->base.resv, false,
-						      i915_fence_timeout(dev_priv),
-						      GFP_KERNEL);
-		if (ret < 0)
-			goto unpin_fb;
+	if (new_plane_state->uapi.fence) {
+		i915_gem_fence_wait_priority(new_plane_state->uapi.fence,
+					     &attr);
 
-		dma_resv_iter_begin(&cursor, obj->base.resv,
-				    DMA_RESV_USAGE_WRITE);
-		dma_resv_for_each_fence_unlocked(&cursor, fence) {
-			intel_display_rps_boost_after_vblank(new_plane_state->hw.crtc,
-							     fence);
-		}
-		dma_resv_iter_end(&cursor);
-	} else {
 		intel_display_rps_boost_after_vblank(new_plane_state->hw.crtc,
 						     new_plane_state->uapi.fence);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 28d85e1e858e..48df0559df00 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -48,6 +48,7 @@
 #include "g4x_dp.h"
 #include "g4x_hdmi.h"
 #include "hsw_ips.h"
+#include "i915_config.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i915_utils.h"
@@ -7056,29 +7057,34 @@ void intel_atomic_helper_free_state_worker(struct work_struct *work)
 
 static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_state)
 {
-	struct wait_queue_entry wait_fence, wait_reset;
-	struct drm_i915_private *dev_priv = to_i915(intel_state->base.dev);
-
-	init_wait_entry(&wait_fence, 0);
-	init_wait_entry(&wait_reset, 0);
-	for (;;) {
-		prepare_to_wait(&intel_state->commit_ready.wait,
-				&wait_fence, TASK_UNINTERRUPTIBLE);
-		prepare_to_wait(bit_waitqueue(&to_gt(dev_priv)->reset.flags,
-					      I915_RESET_MODESET),
-				&wait_reset, TASK_UNINTERRUPTIBLE);
+	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
+	struct drm_plane *plane;
+	struct drm_plane_state *new_plane_state, *old_plane_state;
+	int ret, i;
 
+	for_each_oldnew_plane_in_state(&intel_state->base, plane,
+				       old_plane_state, new_plane_state, i) {
+		if (new_plane_state->fence) {
+			ret = dma_fence_wait_timeout(new_plane_state->fence,
+						     false,
+						     i915_fence_timeout(i915));
+			if (ret <= 0)
+				break;
 
-		if (i915_sw_fence_done(&intel_state->commit_ready) ||
-		    test_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags))
-			break;
+			dma_fence_put(new_plane_state->fence);
+			new_plane_state->fence = NULL;
+		}
+		if (old_plane_state->fence) {
+			ret = dma_fence_wait_timeout(old_plane_state->fence,
+						     false,
+						     i915_fence_timeout(i915));
+			if (ret <= 0)
+				break;
 
-		schedule();
+			dma_fence_put(old_plane_state->fence);
+			old_plane_state->fence = NULL;
+		}
 	}
-	finish_wait(&intel_state->commit_ready.wait, &wait_fence);
-	finish_wait(bit_waitqueue(&to_gt(dev_priv)->reset.flags,
-				  I915_RESET_MODESET),
-		    &wait_reset);
 }
 
 static void intel_atomic_cleanup_work(struct work_struct *work)
@@ -7370,32 +7376,6 @@ static void intel_atomic_commit_work(struct work_struct *work)
 	intel_atomic_commit_tail(state);
 }
 
-static int
-intel_atomic_commit_ready(struct i915_sw_fence *fence,
-			  enum i915_sw_fence_notify notify)
-{
-	struct intel_atomic_state *state =
-		container_of(fence, struct intel_atomic_state, commit_ready);
-
-	switch (notify) {
-	case FENCE_COMPLETE:
-		/* we do blocking waits in the worker, nothing to do here */
-		break;
-	case FENCE_FREE:
-		{
-			struct drm_i915_private *i915 = to_i915(state->base.dev);
-			struct intel_atomic_helper *helper =
-				&i915->display.atomic_helper;
-
-			if (llist_add(&state->freed, &helper->free_list))
-				queue_work(i915->unordered_wq, &helper->free_work);
-			break;
-		}
-	}
-
-	return NOTIFY_DONE;
-}
-
 static void intel_atomic_track_fbs(struct intel_atomic_state *state)
 {
 	struct intel_plane_state *old_plane_state, *new_plane_state;
@@ -7418,10 +7398,6 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 
 	state->wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 
-	drm_atomic_state_get(&state->base);
-	i915_sw_fence_init(&state->commit_ready,
-			   intel_atomic_commit_ready);
-
 	/*
 	 * The intel_legacy_cursor_update() fast path takes care
 	 * of avoiding the vblank waits for simple cursor
@@ -7454,7 +7430,6 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 	if (ret) {
 		drm_dbg_atomic(&dev_priv->drm,
 			       "Preparing state failed with %i\n", ret);
-		i915_sw_fence_commit(&state->commit_ready);
 		intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
 		return ret;
 	}
@@ -7470,8 +7445,6 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 		struct intel_crtc *crtc;
 		int i;
 
-		i915_sw_fence_commit(&state->commit_ready);
-
 		for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
 			intel_color_cleanup_commit(new_crtc_state);
 
@@ -7485,7 +7458,6 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 	drm_atomic_state_get(&state->base);
 	INIT_WORK(&state->base.commit_work, intel_atomic_commit_work);
 
-	i915_sw_fence_commit(&state->commit_ready);
 	if (nonblock && state->modeset) {
 		queue_work(dev_priv->display.wq.modeset, &state->base.commit_work);
 	} else if (nonblock) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 65ea37fe8cff..047fe3f8905a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -676,8 +676,6 @@ struct intel_atomic_state {
 
 	bool rps_interactive;
 
-	struct i915_sw_fence commit_ready;
-
 	struct llist_node freed;
 };
 
-- 
2.34.1

