Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0482A2E1B97
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 12:12:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C48286E92F;
	Wed, 23 Dec 2020 11:12:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD0696E908
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 11:12:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23412227-1500050 
 for multiple; Wed, 23 Dec 2020 11:11:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Dec 2020 11:11:07 +0000
Message-Id: <20201223111126.3338-43-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201223111126.3338-1-chris@chris-wilson.co.uk>
References: <20201223111126.3338-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 43/62] drm/i915: Extend the priority boosting
 for the display with a deadline
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For a modeset/pageflip, there is a very precise deadline by which the
frame must be completed in order to hit the vblank and be shown. While
we don't pass along that exact information, we can at least inform the
scheduler that this request-chain needs to be completed asap.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/display/intel_display.c |  4 +++-
 drivers/gpu/drm/i915/gem/i915_gem_object.h   |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_wait.c     | 21 +++++++++++---------
 3 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f25ab2b15ca1..22c902188c3d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15687,7 +15687,9 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 	if (ret)
 		return ret;
 
-	i915_gem_object_wait_priority(obj, 0, I915_PRIORITY_DISPLAY);
+	i915_gem_object_wait_priority(obj, 0,
+				      I915_PRIORITY_DISPLAY,
+				      ktime_get() /* next vblank? */);
 	i915_gem_object_flush_frontbuffer(obj, ORIGIN_DIRTYFB);
 
 	if (!new_plane_state->uapi.fence) { /* implicit fencing */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index b106bc81c303..88b849c6f49d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -517,7 +517,7 @@ int i915_gem_object_wait(struct drm_i915_gem_object *obj,
 			 long timeout);
 int i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 				  unsigned int flags,
-				  int prio);
+				  int prio, ktime_t deadline);
 
 void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
 					 enum fb_op_origin origin);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index 483139bd05c1..57fbd145d697 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -44,8 +44,7 @@ i915_gem_object_wait_reservation(struct dma_resv *resv,
 		unsigned int count, i;
 		int ret;
 
-		ret = dma_resv_get_fences_rcu(resv,
-							&excl, &count, &shared);
+		ret = dma_resv_get_fences_rcu(resv, &excl, &count, &shared);
 		if (ret)
 			return ret;
 
@@ -94,17 +93,20 @@ i915_gem_object_wait_reservation(struct dma_resv *resv,
 	return timeout;
 }
 
-static void __fence_set_priority(struct dma_fence *fence, int prio)
+static void
+__fence_set_prio(struct dma_fence *fence, int prio, ktime_t deadline)
 {
 	if (dma_fence_is_signaled(fence) || !dma_fence_is_i915(fence))
 		return;
 
 	local_bh_disable();
+	i915_request_set_deadline(to_request(fence),
+				  i915_sched_to_ticks(deadline));
 	i915_request_set_priority(to_request(fence), prio);
 	local_bh_enable(); /* kick the tasklets if queues were reprioritised */
 }
 
-static void fence_set_priority(struct dma_fence *fence, int prio)
+static void fence_set_prio(struct dma_fence *fence, int prio, ktime_t deadline)
 {
 	/* Recurse once into a fence-array */
 	if (dma_fence_is_array(fence)) {
@@ -112,16 +114,17 @@ static void fence_set_priority(struct dma_fence *fence, int prio)
 		int i;
 
 		for (i = 0; i < array->num_fences; i++)
-			__fence_set_priority(array->fences[i], prio);
+			__fence_set_prio(array->fences[i], prio, deadline);
 	} else {
-		__fence_set_priority(fence, prio);
+		__fence_set_prio(fence, prio, deadline);
 	}
 }
 
 int
 i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 			      unsigned int flags,
-			      int prio)
+			      int prio,
+			      ktime_t deadline)
 {
 	struct dma_fence *excl;
 
@@ -136,7 +139,7 @@ i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 			return ret;
 
 		for (i = 0; i < count; i++) {
-			fence_set_priority(shared[i], prio);
+			fence_set_prio(shared[i], prio, deadline);
 			dma_fence_put(shared[i]);
 		}
 
@@ -146,7 +149,7 @@ i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 	}
 
 	if (excl) {
-		fence_set_priority(excl, prio);
+		fence_set_prio(excl, prio, deadline);
 		dma_fence_put(excl);
 	}
 	return 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
