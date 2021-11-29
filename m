Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBE1461727
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Nov 2021 14:57:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 686926EDD3;
	Mon, 29 Nov 2021 13:57:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308:0:7ec:e79c:4e97:b6c4:f0ae])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E31B6ECBC;
 Mon, 29 Nov 2021 13:57:17 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Nov 2021 14:47:20 +0100
Message-Id: <20211129134735.628712-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211129134735.628712-1-maarten.lankhorst@linux.intel.com>
References: <20211129134735.628712-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/16] drm/i915: Remove unused bits of
 i915_vma/active api
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When reworking the code to move the eviction fence to the object,
the best code is removed code.

Remove some functions that are unused, and change the function definition
if it's only used in 1 place.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
[mlankhorst: Remove new use of i915_active_has_exclusive]
---
 drivers/gpu/drm/i915/i915_active.c | 28 +++-------------------------
 drivers/gpu/drm/i915/i915_active.h | 17 +----------------
 drivers/gpu/drm/i915/i915_vma.c    | 24 ++++++++++--------------
 drivers/gpu/drm/i915/i915_vma.h    |  2 --
 4 files changed, 14 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 3103c1e1fd14..ee2b3a375362 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -426,8 +426,9 @@ replace_barrier(struct i915_active *ref, struct i915_active_fence *active)
 	return true;
 }
 
-int i915_active_ref(struct i915_active *ref, u64 idx, struct dma_fence *fence)
+int i915_active_add_request(struct i915_active *ref, struct i915_request *rq)
 {
+	struct dma_fence *fence = &rq->fence;
 	struct i915_active_fence *active;
 	int err;
 
@@ -436,7 +437,7 @@ int i915_active_ref(struct i915_active *ref, u64 idx, struct dma_fence *fence)
 	if (err)
 		return err;
 
-	active = active_instance(ref, idx);
+	active = active_instance(ref, i915_request_timeline(rq)->fence_context);
 	if (!active) {
 		err = -ENOMEM;
 		goto out;
@@ -477,29 +478,6 @@ __i915_active_set_fence(struct i915_active *ref,
 	return prev;
 }
 
-static struct i915_active_fence *
-__active_fence(struct i915_active *ref, u64 idx)
-{
-	struct active_node *it;
-
-	it = __active_lookup(ref, idx);
-	if (unlikely(!it)) { /* Contention with parallel tree builders! */
-		spin_lock_irq(&ref->tree_lock);
-		it = __active_lookup(ref, idx);
-		spin_unlock_irq(&ref->tree_lock);
-	}
-	GEM_BUG_ON(!it); /* slot must be preallocated */
-
-	return &it->base;
-}
-
-struct dma_fence *
-__i915_active_ref(struct i915_active *ref, u64 idx, struct dma_fence *fence)
-{
-	/* Only valid while active, see i915_active_acquire_for_context() */
-	return __i915_active_set_fence(ref, __active_fence(ref, idx), fence);
-}
-
 struct dma_fence *
 i915_active_set_exclusive(struct i915_active *ref, struct dma_fence *f)
 {
diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
index 5fcdb0e2bc9e..7eb44132183a 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -164,26 +164,11 @@ void __i915_active_init(struct i915_active *ref,
 	__i915_active_init(ref, active, retire, flags, &__mkey, &__wkey);	\
 } while (0)
 
-struct dma_fence *
-__i915_active_ref(struct i915_active *ref, u64 idx, struct dma_fence *fence);
-int i915_active_ref(struct i915_active *ref, u64 idx, struct dma_fence *fence);
-
-static inline int
-i915_active_add_request(struct i915_active *ref, struct i915_request *rq)
-{
-	return i915_active_ref(ref,
-			       i915_request_timeline(rq)->fence_context,
-			       &rq->fence);
-}
+int i915_active_add_request(struct i915_active *ref, struct i915_request *rq);
 
 struct dma_fence *
 i915_active_set_exclusive(struct i915_active *ref, struct dma_fence *f);
 
-static inline bool i915_active_has_exclusive(struct i915_active *ref)
-{
-	return rcu_access_pointer(ref->excl.fence);
-}
-
 int __i915_active_wait(struct i915_active *ref, int state);
 static inline int i915_active_wait(struct i915_active *ref)
 {
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 927f0d4f8e11..921d5b946c32 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -356,22 +356,18 @@ int i915_vma_wait_for_bind(struct i915_vma *vma)
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
 static int i915_vma_verify_bind_complete(struct i915_vma *vma)
 {
-	int err = 0;
-
-	if (i915_active_has_exclusive(&vma->active)) {
-		struct dma_fence *fence =
-			i915_active_fence_get(&vma->active.excl);
+	struct dma_fence *fence = i915_active_fence_get(&vma->active.excl);
+	int err;
 
-		if (!fence)
-			return 0;
+	if (!fence)
+		return 0;
 
-		if (dma_fence_is_signaled(fence))
-			err = fence->error;
-		else
-			err = -EBUSY;
+	if (dma_fence_is_signaled(fence))
+		err = fence->error;
+	else
+		err = -EBUSY;
 
-		dma_fence_put(fence);
-	}
+	dma_fence_put(fence);
 
 	return err;
 }
@@ -1249,7 +1245,7 @@ __i915_request_await_bind(struct i915_request *rq, struct i915_vma *vma)
 	return __i915_request_await_exclusive(rq, &vma->active);
 }
 
-int __i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq)
+static int __i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq)
 {
 	int err;
 
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 4033aa08d5e4..9a931ecb09e5 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -55,8 +55,6 @@ static inline bool i915_vma_is_active(const struct i915_vma *vma)
 /* do not reserve memory to prevent deadlocks */
 #define __EXEC_OBJECT_NO_RESERVE BIT(31)
 
-int __must_check __i915_vma_move_to_active(struct i915_vma *vma,
-					   struct i915_request *rq);
 int __must_check _i915_vma_move_to_active(struct i915_vma *vma,
 					  struct i915_request *rq,
 					  struct dma_fence *fence,
-- 
2.34.0

