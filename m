Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6860E17566B
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 09:59:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73A9C6E175;
	Mon,  2 Mar 2020 08:58:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 314166E154
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 08:58:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20409415-1500050 
 for multiple; Mon, 02 Mar 2020 08:58:23 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Mar 2020 08:57:59 +0000
Message-Id: <20200302085812.4172450-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200302085812.4172450-1-chris@chris-wilson.co.uk>
References: <20200302085812.4172450-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/22] drm/i915: Extend
 i915_request_await_active to use all timelines
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
---
 drivers/gpu/drm/i915/i915_active.c | 51 +++++++++++++++++++++++-------
 drivers/gpu/drm/i915/i915_active.h |  5 ++-
 drivers/gpu/drm/i915/i915_vma.c    |  2 +-
 3 files changed, 45 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 1826de14d2da..e659688db043 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -518,23 +518,52 @@ int i915_active_wait(struct i915_active *ref)
 	return 0;
 }
 
-int i915_request_await_active(struct i915_request *rq, struct i915_active *ref)
+static int await_active(struct i915_request *rq,
+			struct i915_active_fence *active)
+{
+	struct dma_fence *fence;
+
+	if (is_barrier(active))
+		return 0;
+
+	fence = i915_active_fence_get(active);
+	if (fence) {
+		int err;
+
+		err = i915_request_await_dma_fence(rq, fence);
+		dma_fence_put(fence);
+		if (err < 0)
+			return err;
+	}
+
+	return 0;
+}
+
+int i915_request_await_active(struct i915_request *rq,
+			      struct i915_active *ref,
+			      unsigned int flags)
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
-		}
+		err = await_active(rq, &ref->excl);
+		if (err)
+			return err;
 	}
 
-	/* In the future we may choose to await on all fences */
+	if (flags & I915_ACTIVE_AWAIT_ALL && i915_active_acquire_if_busy(ref)) {
+		struct active_node *it, *n;
+
+		rbtree_postorder_for_each_entry_safe(it, n, &ref->tree, node) {
+			err = await_active(rq, &it->base);
+			if (err)
+				break;
+		}
+		i915_active_release(ref);
+		if (err)
+			return err;
+	}
 
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
index 7e438501333e..e3c13060c4c7 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -183,7 +183,10 @@ static inline bool i915_active_has_exclusive(struct i915_active *ref)
 
 int i915_active_wait(struct i915_active *ref);
 
-int i915_request_await_active(struct i915_request *rq, struct i915_active *ref);
+int i915_request_await_active(struct i915_request *rq,
+			      struct i915_active *ref,
+			      unsigned int flags);
+#define I915_ACTIVE_AWAIT_ALL BIT(0)
 
 int i915_active_acquire(struct i915_active *ref);
 bool i915_active_acquire_if_busy(struct i915_active *ref);
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 298ca4316e65..ce23c452e6ac 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1174,7 +1174,7 @@ int __i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq)
 	GEM_BUG_ON(!i915_vma_is_pinned(vma));
 
 	/* Wait for the vma to be bound before we start! */
-	err = i915_request_await_active(rq, &vma->active);
+	err = i915_request_await_active(rq, &vma->active, 0);
 	if (err)
 		return err;
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
