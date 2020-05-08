Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0291CA727
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 11:30:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88ACF6EAC5;
	Fri,  8 May 2020 09:30:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 562106EAC3
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2020 09:30:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21148447-1500050 
 for multiple; Fri, 08 May 2020 10:29:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 May 2020 10:29:32 +0100
Message-Id: <20200508092933.738-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200508092933.738-1-chris@chris-wilson.co.uk>
References: <20200508092933.738-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/9] drm/i915/gem: Allow combining submit-fences
 with syncobj
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

We allow exported sync_file fences to be used as submit fences, but they
are not the only source of user fences. We also accept an array of
syncobj, and as with sync_file these are dma_fences underneath and so
feature the same set of controls. The submit-fence allows for a request
to be scheduled at the same time as the signaler, rather than as normal
after. Userspace can combine submit-fence with its own semaphores for
intra-batch scheduling.

Not exposing submit-fences to syncobj was at the time just a matter of
pragmatic expediency.

Fixes: a88b6e4cbafd ("drm/i915: Allow specification of parallel execbuf")
Link: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/4854
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 14 +++++++----
 drivers/gpu/drm/i915/i915_request.c           | 24 +++++++++++++++++++
 include/uapi/drm/i915_drm.h                   |  7 +++---
 3 files changed, 37 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 199131db200f..6368f0070157 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2432,7 +2432,7 @@ static void
 __free_fence_array(struct drm_syncobj **fences, unsigned int n)
 {
 	while (n--)
-		drm_syncobj_put(ptr_mask_bits(fences[n], 2));
+		drm_syncobj_put(ptr_mask_bits(fences[n], 3));
 	kvfree(fences);
 }
 
@@ -2489,7 +2489,7 @@ get_fence_array(struct drm_i915_gem_execbuffer2 *args,
 		BUILD_BUG_ON(~(ARCH_KMALLOC_MINALIGN - 1) &
 			     ~__I915_EXEC_FENCE_UNKNOWN_FLAGS);
 
-		fences[n] = ptr_pack_bits(syncobj, fence.flags, 2);
+		fences[n] = ptr_pack_bits(syncobj, fence.flags, 3);
 	}
 
 	return fences;
@@ -2520,7 +2520,7 @@ await_fence_array(struct i915_execbuffer *eb,
 		struct dma_fence *fence;
 		unsigned int flags;
 
-		syncobj = ptr_unpack_bits(fences[n], &flags, 2);
+		syncobj = ptr_unpack_bits(fences[n], &flags, 3);
 		if (!(flags & I915_EXEC_FENCE_WAIT))
 			continue;
 
@@ -2544,7 +2544,11 @@ await_fence_array(struct i915_execbuffer *eb,
 			spin_unlock(&syncobj->lock);
 		}
 
-		err = i915_request_await_dma_fence(eb->request, fence);
+		if (flags & I915_EXEC_FENCE_WAIT_SUBMIT)
+			err = i915_request_await_execution(eb->request, fence,
+							   eb->engine->bond_execute);
+		else
+			err = i915_request_await_dma_fence(eb->request, fence);
 		dma_fence_put(fence);
 		if (err < 0)
 			return err;
@@ -2565,7 +2569,7 @@ signal_fence_array(struct i915_execbuffer *eb,
 		struct drm_syncobj *syncobj;
 		unsigned int flags;
 
-		syncobj = ptr_unpack_bits(fences[n], &flags, 2);
+		syncobj = ptr_unpack_bits(fences[n], &flags, 3);
 		if (!(flags & I915_EXEC_FENCE_SIGNAL))
 			continue;
 
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 4f1d8cc2d5af..6afd77e6f141 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1382,6 +1382,26 @@ __i915_request_await_execution(struct i915_request *to,
 					     &from->fence);
 }
 
+static int execution_proxy(struct await_proxy *ap)
+{
+	return i915_request_await_execution(ap->request, ap->fence, ap->data);
+}
+
+static int
+i915_request_await_proxy_execution(struct i915_request *rq,
+				   struct dma_fence *fence,
+				   void (*hook)(struct i915_request *rq,
+						struct dma_fence *signal))
+{
+	/*
+	 * We have to wait until the real request is known in order to
+	 * be able to hook into its execution, as opposed to waiting for
+	 * its completion.
+	 */
+	return __i915_request_await_proxy(rq, fence, I915_FENCE_TIMEOUT,
+					  execution_proxy, hook);
+}
+
 int
 i915_request_await_execution(struct i915_request *rq,
 			     struct dma_fence *fence,
@@ -1421,6 +1441,10 @@ i915_request_await_execution(struct i915_request *rq,
 			ret = __i915_request_await_execution(rq,
 							     to_request(fence),
 							     hook);
+		else if (dma_fence_is_proxy(fence))
+			ret = i915_request_await_proxy_execution(rq,
+								 fence,
+								 hook);
 		else
 			ret = i915_request_await_external(rq, fence);
 		if (ret < 0)
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 14b67cd6b54b..704dd0e3bc1d 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1040,9 +1040,10 @@ struct drm_i915_gem_exec_fence {
 	 */
 	__u32 handle;
 
-#define I915_EXEC_FENCE_WAIT            (1<<0)
-#define I915_EXEC_FENCE_SIGNAL          (1<<1)
-#define __I915_EXEC_FENCE_UNKNOWN_FLAGS (-(I915_EXEC_FENCE_SIGNAL << 1))
+#define I915_EXEC_FENCE_WAIT            (1u << 0)
+#define I915_EXEC_FENCE_SIGNAL          (1u << 1)
+#define I915_EXEC_FENCE_WAIT_SUBMIT     (1u << 2)
+#define __I915_EXEC_FENCE_UNKNOWN_FLAGS (-(I915_EXEC_FENCE_WAIT_SUBMIT << 1))
 	__u32 flags;
 };
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
