Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC1D1814A1
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 10:20:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F5236E953;
	Wed, 11 Mar 2020 09:20:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 762EB6E958
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 09:20:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20518533-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 09:20:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 09:20:44 +0000
Message-Id: <20200311092044.16353-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Extend i915_request_await_active to use
 all timelines
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Extend i915_request_await_active() to be able to asynchronously wait on
all the tracked timelines simultaneously.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_active.c | 77 +++++++++++++++++++++++++-----
 drivers/gpu/drm/i915/i915_active.h |  8 +++-
 drivers/gpu/drm/i915/i915_vma.c    |  2 +-
 3 files changed, 74 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 7b3d6c12ad61..cfcd1d42d491 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -518,25 +518,80 @@ int i915_active_wait(struct i915_active *ref)
 	return 0;
 }
 
-int i915_request_await_active(struct i915_request *rq, struct i915_active *ref)
+static int __await_active(struct i915_active_fence *active,
+			  int (*fn)(void *arg, struct dma_fence *fence),
+			  void *arg)
+{
+	struct dma_fence *fence;
+
+	if (is_barrier(active)) /* XXX flush the barrier? */
+		return 0;
+
+	fence = i915_active_fence_get(active);
+	if (fence) {
+		int err;
+
+		err = fn(arg, fence);
+		dma_fence_put(fence);
+		if (err < 0)
+			return err;
+	}
+
+	return 0;
+}
+
+static int await_active(struct i915_active *ref,
+			unsigned int flags,
+			int (*fn)(void *arg, struct dma_fence *fence),
+			void *arg)
 {
 	int err = 0;
 
+	/* We must always wait for the exclusive fence! */
 	if (rcu_access_pointer(ref->excl.fence)) {
-		struct dma_fence *fence;
-
-		rcu_read_lock();
-		fence = dma_fence_get_rcu_safe(&ref->excl.fence);
-		rcu_read_unlock();
-		if (fence) {
-			err = i915_request_await_dma_fence(rq, fence);
-			dma_fence_put(fence);
+		err = __await_active(&ref->excl, fn, arg);
+		if (err)
+			return err;
+	}
+
+	if (flags & I915_ACTIVE_AWAIT_ALL && i915_active_acquire_if_busy(ref)) {
+		struct active_node *it, *n;
+
+		rbtree_postorder_for_each_entry_safe(it, n, &ref->tree, node) {
+			err = __await_active(&it->base, fn, arg);
+			if (err)
+				break;
 		}
+		i915_active_release(ref);
+		if (err)
+			return err;
 	}
 
-	/* In the future we may choose to await on all fences */
+	return 0;
+}
 
-	return err;
+static int rq_await_fence(void *arg, struct dma_fence *fence)
+{
+	return i915_request_await_dma_fence(arg, fence);
+}
+
+int i915_request_await_active(struct i915_request *rq,
+			      struct i915_active *ref,
+			      unsigned int flags)
+{
+	return await_active(ref, flags, rq_await_fence, rq);
+}
+
+static int sw_await_fence(void *arg, struct dma_fence *fence)
+{
+	return i915_sw_fence_await_dma_fence(arg, fence, 0, GFP_KERNEL);
+}
+
+int i915_sw_fence_await_active(struct i915_sw_fence *fence,
+			       struct i915_active *ref,
+			       unsigned int flags)
+{
+	return await_active(ref, flags, sw_await_fence, fence);
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
index 973ff0447c6c..b3282ae7913c 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -183,7 +183,13 @@ static inline bool i915_active_has_exclusive(struct i915_active *ref)
 
 int i915_active_wait(struct i915_active *ref);
 
-int i915_request_await_active(struct i915_request *rq, struct i915_active *ref);
+int i915_sw_fence_await_active(struct i915_sw_fence *fence,
+			       struct i915_active *ref,
+			       unsigned int flags);
+int i915_request_await_active(struct i915_request *rq,
+			      struct i915_active *ref,
+			      unsigned int flags);
+#define I915_ACTIVE_AWAIT_ALL BIT(0)
 
 int i915_active_acquire(struct i915_active *ref);
 bool i915_active_acquire_if_busy(struct i915_active *ref);
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 3dde671145f7..5b3efb43a8ef 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1173,7 +1173,7 @@ int __i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq)
 	GEM_BUG_ON(!i915_vma_is_pinned(vma));
 
 	/* Wait for the vma to be bound before we start! */
-	err = i915_request_await_active(rq, &vma->active);
+	err = i915_request_await_active(rq, &vma->active, 0);
 	if (err)
 		return err;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
