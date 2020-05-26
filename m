Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6A31C3BBD
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 15:50:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C136D6E413;
	Mon,  4 May 2020 13:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1B846E40F
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 13:50:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21106866-1500050 
 for multiple; Mon, 04 May 2020 14:50:35 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 May 2020 14:50:29 +0100
Message-Id: <20200504135030.19210-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200504135030.19210-1-chris@chris-wilson.co.uk>
References: <20200504135030.19210-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/gem: Allow combining submit-fences
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
Cc: kenneth@whitecape.org, Chris Wilson <chris@chris-wilson.co.uk>
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
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 14 ++++++----
 drivers/gpu/drm/i915/i915_request.c           | 26 ++++++++++++++++++-
 include/uapi/drm/i915_drm.h                   |  7 ++---
 3 files changed, 38 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 71e4dbf7b9a8..a47aa33e722e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2380,7 +2380,7 @@ static void
 __free_fence_array(struct drm_syncobj **fences, unsigned int n)
 {
 	while (n--)
-		drm_syncobj_put(ptr_mask_bits(fences[n], 2));
+		drm_syncobj_put(ptr_mask_bits(fences[n], 3));
 	kvfree(fences);
 }
 
@@ -2437,7 +2437,7 @@ get_fence_array(struct drm_i915_gem_execbuffer2 *args,
 		BUILD_BUG_ON(~(ARCH_KMALLOC_MINALIGN - 1) &
 			     ~__I915_EXEC_FENCE_UNKNOWN_FLAGS);
 
-		fences[n] = ptr_pack_bits(syncobj, fence.flags, 2);
+		fences[n] = ptr_pack_bits(syncobj, fence.flags, 3);
 	}
 
 	return fences;
@@ -2468,7 +2468,7 @@ await_fence_array(struct i915_execbuffer *eb,
 		struct dma_fence *fence;
 		unsigned int flags;
 
-		syncobj = ptr_unpack_bits(fences[n], &flags, 2);
+		syncobj = ptr_unpack_bits(fences[n], &flags, 3);
 		if (!(flags & I915_EXEC_FENCE_WAIT))
 			continue;
 
@@ -2492,7 +2492,11 @@ await_fence_array(struct i915_execbuffer *eb,
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
@@ -2513,7 +2517,7 @@ signal_fence_array(struct i915_execbuffer *eb,
 		struct drm_syncobj *syncobj;
 		unsigned int flags;
 
-		syncobj = ptr_unpack_bits(fences[n], &flags, 2);
+		syncobj = ptr_unpack_bits(fences[n], &flags, 3);
 		if (!(flags & I915_EXEC_FENCE_SIGNAL))
 			continue;
 
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 8583fe5bb3b6..92fa5267bcce 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1326,6 +1326,26 @@ __i915_request_await_execution(struct i915_request *to,
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
@@ -1362,10 +1382,14 @@ i915_request_await_execution(struct i915_request *rq,
 			ret = __i915_request_await_execution(rq,
 							     to_request(fence),
 							     hook);
+		else if (dma_fence_is_proxy(fence))
+			ret = i915_request_await_proxy_execution(rq,
+								 fence,
+								 hook);
 		else
 			ret = i915_sw_fence_await_dma_fence(&rq->submit, fence,
 							    I915_FENCE_TIMEOUT,
-							    GFP_KERNEL);
+							    I915_FENCE_GFP);
 		if (ret < 0)
 			return ret;
 	} while (--nchild);
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
