Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 790303FB5B9
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 14:10:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4943C89DD2;
	Mon, 30 Aug 2021 12:10:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4431F89CCE
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 12:09:53 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date: Mon, 30 Aug 2021 14:09:49 +0200
Message-Id: <20210830121006.2978297-3-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/19] drm/i915: Remove unused bits of
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When reworking the code to move the eviction fence to the object,
the best code is removed code.

Remove some functions that are unused, and change the function definition
if it's only used in 1 place.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_active.c | 28 +++-------------------------
 drivers/gpu/drm/i915/i915_active.h | 17 +----------------
 drivers/gpu/drm/i915/i915_vma.c    |  2 +-
 drivers/gpu/drm/i915/i915_vma.h    |  2 --
 4 files changed, 5 insertions(+), 44 deletions(-)

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
index 4b7fc4647e46..f9ac33e0bac9 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1220,7 +1220,7 @@ __i915_request_await_bind(struct i915_request *rq, struct i915_vma *vma)
 	return __i915_request_await_exclusive(rq, &vma->active);
 }
 
-int __i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq)
+static int __i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq)
 {
 	int err;
 
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index ed69f66c7ab0..1c930515ec3d 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -55,8 +55,6 @@ static inline bool i915_vma_is_active(const struct i915_vma *vma)
 /* do not reserve memory to prevent deadlocks */
 #define __EXEC_OBJECT_NO_RESERVE BIT(31)
 
-int __must_check __i915_vma_move_to_active(struct i915_vma *vma,
-					   struct i915_request *rq);
 int __must_check i915_vma_move_to_active(struct i915_vma *vma,
 					 struct i915_request *rq,
 					 unsigned int flags);
-- 
2.32.0

