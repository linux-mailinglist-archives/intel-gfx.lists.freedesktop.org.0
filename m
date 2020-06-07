Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 817771F102C
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 00:21:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F04D06E420;
	Sun,  7 Jun 2020 22:21:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2473C6E432
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jun 2020 22:21:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21425616-1500050 
 for multiple; Sun, 07 Jun 2020 23:21:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  7 Jun 2020 23:21:08 +0100
Message-Id: <20200607222108.14401-28-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200607222108.14401-1-chris@chris-wilson.co.uk>
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 28/28] drm/i915: Replace the priority boosting
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
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h   |  4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_wait.c     | 21 ++++++++++----------
 drivers/gpu/drm/i915/i915_priolist_types.h   |  3 ---
 4 files changed, 14 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 797e3573d392..5bb20f701a44 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15964,7 +15964,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 	if (ret)
 		return ret;
 
-	i915_gem_object_wait_priority(obj, 0, I915_PRIORITY_DISPLAY);
+	i915_gem_object_wait_deadline(obj, 0, ktime_get() /* next vblank? */);
 	i915_gem_object_flush_frontbuffer(obj, ORIGIN_DIRTYFB);
 
 	if (!new_plane_state->uapi.fence) { /* implicit fencing */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 876c34982555..7bcd2661de4c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -474,9 +474,9 @@ static inline void __start_cpu_write(struct drm_i915_gem_object *obj)
 int i915_gem_object_wait(struct drm_i915_gem_object *obj,
 			 unsigned int flags,
 			 long timeout);
-int i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
+int i915_gem_object_wait_deadline(struct drm_i915_gem_object *obj,
 				  unsigned int flags,
-				  int prio);
+				  ktime_t deadline);
 
 void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
 					 enum fb_op_origin origin);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index cefbbb3d9b52..5224d4363ea3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -93,17 +93,18 @@ i915_gem_object_wait_reservation(struct dma_resv *resv,
 	return timeout;
 }
 
-static void __fence_set_priority(struct dma_fence *fence, int prio)
+static void __fence_set_deadline(struct dma_fence *fence, ktime_t deadline)
 {
 	if (dma_fence_is_signaled(fence) || !dma_fence_is_i915(fence))
 		return;
 
 	local_bh_disable();
-	i915_request_set_priority(to_request(fence), prio);
+	i915_request_set_deadline(to_request(fence),
+				  i915_sched_to_ticks(deadline));
 	local_bh_enable(); /* kick the tasklets if queues were reprioritised */
 }
 
-static void fence_set_priority(struct dma_fence *fence, int prio)
+static void fence_set_deadline(struct dma_fence *fence, ktime_t deadline)
 {
 	/* Recurse once into a fence-array */
 	if (dma_fence_is_array(fence)) {
@@ -111,16 +112,16 @@ static void fence_set_priority(struct dma_fence *fence, int prio)
 		int i;
 
 		for (i = 0; i < array->num_fences; i++)
-			__fence_set_priority(array->fences[i], prio);
+			__fence_set_deadline(array->fences[i], deadline);
 	} else {
-		__fence_set_priority(fence, prio);
+		__fence_set_deadline(fence, deadline);
 	}
 }
 
 int
-i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
+i915_gem_object_wait_deadline(struct drm_i915_gem_object *obj,
 			      unsigned int flags,
-			      int prio)
+			      ktime_t deadline)
 {
 	struct dma_fence *excl;
 
@@ -130,12 +131,12 @@ i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 		int ret;
 
 		ret = dma_resv_get_fences_rcu(obj->base.resv,
-							&excl, &count, &shared);
+					      &excl, &count, &shared);
 		if (ret)
 			return ret;
 
 		for (i = 0; i < count; i++) {
-			fence_set_priority(shared[i], prio);
+			fence_set_deadline(shared[i], deadline);
 			dma_fence_put(shared[i]);
 		}
 
@@ -145,7 +146,7 @@ i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 	}
 
 	if (excl) {
-		fence_set_priority(excl, prio);
+		fence_set_deadline(excl, deadline);
 		dma_fence_put(excl);
 	}
 	return 0;
diff --git a/drivers/gpu/drm/i915/i915_priolist_types.h b/drivers/gpu/drm/i915/i915_priolist_types.h
index 43a0ac45295f..ac6d9614ea23 100644
--- a/drivers/gpu/drm/i915/i915_priolist_types.h
+++ b/drivers/gpu/drm/i915/i915_priolist_types.h
@@ -20,9 +20,6 @@ enum {
 	/* A preemptive pulse used to monitor the health of each engine */
 	I915_PRIORITY_HEARTBEAT,
 
-	/* Interactive workload, scheduled for immediate pageflipping */
-	I915_PRIORITY_DISPLAY,
-
 	__I915_PRIORITY_KERNEL__
 };
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
