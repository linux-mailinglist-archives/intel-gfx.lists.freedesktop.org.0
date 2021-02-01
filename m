Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF1C30A3B2
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 09:57:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C456E4AF;
	Mon,  1 Feb 2021 08:57:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E2476E49B
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 08:57:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23757759-1500050 
 for multiple; Mon, 01 Feb 2021 08:57:22 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 08:56:57 +0000
Message-Id: <20210201085715.27435-39-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210201085715.27435-1-chris@chris-wilson.co.uk>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 39/57] drm/i915: Extend the priority boosting
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
 drivers/gpu/drm/i915/display/intel_display.c |  7 +++++--
 drivers/gpu/drm/i915/gem/i915_gem_object.h   |  5 +++--
 drivers/gpu/drm/i915/gem/i915_gem_wait.c     | 21 ++++++++++++--------
 3 files changed, 21 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index aca964f7ba72..ce59119ac14a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -13702,7 +13702,8 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 
 	if (new_plane_state->uapi.fence) { /* explicit fencing */
 		i915_gem_fence_wait_priority(new_plane_state->uapi.fence,
-					     I915_PRIORITY_DISPLAY);
+					     I915_PRIORITY_DISPLAY,
+					     ktime_get() /* next vblank? */);
 		ret = i915_sw_fence_await_dma_fence(&state->commit_ready,
 						    new_plane_state->uapi.fence,
 						    i915_fence_timeout(dev_priv),
@@ -13724,7 +13725,9 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 	if (ret)
 		return ret;
 
-	i915_gem_object_wait_priority(obj, 0, I915_PRIORITY_DISPLAY);
+	i915_gem_object_wait_priority(obj, 0,
+				      I915_PRIORITY_DISPLAY,
+				      ktime_get() /* next vblank? */);
 	i915_gem_object_flush_frontbuffer(obj, ORIGIN_DIRTYFB);
 
 	if (!new_plane_state->uapi.fence) { /* implicit fencing */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 325766abca21..9935a2e59df0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -549,14 +549,15 @@ static inline void __start_cpu_write(struct drm_i915_gem_object *obj)
 		obj->cache_dirty = true;
 }
 
-void i915_gem_fence_wait_priority(struct dma_fence *fence, int prio);
+void i915_gem_fence_wait_priority(struct dma_fence *fence,
+				  int prio, ktime_t deadline);
 
 int i915_gem_object_wait(struct drm_i915_gem_object *obj,
 			 unsigned int flags,
 			 long timeout);
 int i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 				  unsigned int flags,
-				  int prio);
+				  int prio, ktime_t deadline);
 
 void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
 					 enum fb_op_origin origin);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index 4d1897c347b9..162f9737965f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -92,11 +92,14 @@ i915_gem_object_wait_reservation(struct dma_resv *resv,
 	return timeout;
 }
 
-static void fence_set_priority(struct dma_fence *fence, int prio)
+static void
+fence_set_priority(struct dma_fence *fence, int prio, ktime_t deadline)
 {
 	if (dma_fence_is_signaled(fence) || !dma_fence_is_i915(fence))
 		return;
 
+	i915_request_set_deadline(to_request(fence),
+				  i915_sched_to_ticks(deadline));
 	i915_request_set_priority(to_request(fence), prio);
 }
 
@@ -105,7 +108,8 @@ static inline bool __dma_fence_is_chain(const struct dma_fence *fence)
 	return fence->ops == &dma_fence_chain_ops;
 }
 
-void i915_gem_fence_wait_priority(struct dma_fence *fence, int prio)
+void i915_gem_fence_wait_priority(struct dma_fence *fence,
+				  int prio, ktime_t deadline)
 {
 	if (dma_fence_is_signaled(fence))
 		return;
@@ -118,19 +122,19 @@ void i915_gem_fence_wait_priority(struct dma_fence *fence, int prio)
 		int i;
 
 		for (i = 0; i < array->num_fences; i++)
-			fence_set_priority(array->fences[i], prio);
+			fence_set_priority(array->fences[i], prio, deadline);
 	} else if (__dma_fence_is_chain(fence)) {
 		struct dma_fence *iter;
 
 		/* The chain is ordered; if we boost the last, we boost all */
 		dma_fence_chain_for_each(iter, fence) {
 			fence_set_priority(to_dma_fence_chain(iter)->fence,
-					   prio);
+					   prio, deadline);
 			break;
 		}
 		dma_fence_put(iter);
 	} else {
-		fence_set_priority(fence, prio);
+		fence_set_priority(fence, prio, deadline);
 	}
 
 	local_bh_enable(); /* kick the tasklets if queues were reprioritised */
@@ -139,7 +143,8 @@ void i915_gem_fence_wait_priority(struct dma_fence *fence, int prio)
 int
 i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 			      unsigned int flags,
-			      int prio)
+			      int prio,
+			      ktime_t deadline)
 {
 	struct dma_fence *excl;
 
@@ -154,7 +159,7 @@ i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 			return ret;
 
 		for (i = 0; i < count; i++) {
-			i915_gem_fence_wait_priority(shared[i], prio);
+			i915_gem_fence_wait_priority(shared[i], prio, deadline);
 			dma_fence_put(shared[i]);
 		}
 
@@ -164,7 +169,7 @@ i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 	}
 
 	if (excl) {
-		i915_gem_fence_wait_priority(excl, prio);
+		i915_gem_fence_wait_priority(excl, prio, deadline);
 		dma_fence_put(excl);
 	}
 	return 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
