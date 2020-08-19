Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A68124A15B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 16:09:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8F7D6E432;
	Wed, 19 Aug 2020 14:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 415806E3F4
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 14:09:14 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Aug 2020 16:09:04 +0200
Message-Id: <20200819140904.1708856-25-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
References: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 24/24] drm/i915: Do not share hwsp across
 contexts any more
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

Instead of sharing pages with breadcrumbs, give each timeline a
single page. This allows unrelated timelines not to share locks
any more during command submission.

As an additional benefit, seqno wraparound no longer requires
i915_vma_pin, which means we no longer need to worry about a
potential -EDEADLK at a point where we are ready to submit.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   4 -
 drivers/gpu/drm/i915/gt/intel_timeline.c      | 382 +++---------------
 .../gpu/drm/i915/gt/intel_timeline_types.h    |  15 +-
 drivers/gpu/drm/i915/gt/selftest_timeline.c   |  11 +-
 drivers/gpu/drm/i915/i915_request.c           |   4 -
 drivers/gpu/drm/i915/i915_request.h           |  10 -
 6 files changed, 56 insertions(+), 370 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 6d39a4a11bf3..7aff8350c364 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -39,10 +39,6 @@ struct intel_gt {
 	struct intel_gt_timelines {
 		spinlock_t lock; /* protects active_list */
 		struct list_head active_list;
-
-		/* Pack multiple timelines' seqnos into the same page */
-		spinlock_t hwsp_lock;
-		struct list_head hwsp_free_list;
 	} timelines;
 
 	struct intel_gt_requests {
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index a2f74cefe4c3..6385eddb8e75 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -12,21 +12,7 @@
 #include "intel_ring.h"
 #include "intel_timeline.h"
 
-#define ptr_set_bit(ptr, bit) ((typeof(ptr))((unsigned long)(ptr) | BIT(bit)))
-#define ptr_test_bit(ptr, bit) ((unsigned long)(ptr) & BIT(bit))
-
-#define CACHELINE_BITS 6
-#define CACHELINE_FREE CACHELINE_BITS
-
-struct intel_timeline_hwsp {
-	struct intel_gt *gt;
-	struct intel_gt_timelines *gt_timelines;
-	struct list_head free_link;
-	struct i915_vma *vma;
-	u64 free_bitmap;
-};
-
-static struct i915_vma *__hwsp_alloc(struct intel_gt *gt)
+static struct i915_vma *hwsp_alloc(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
 	struct drm_i915_gem_object *obj;
@@ -42,177 +28,29 @@ static struct i915_vma *__hwsp_alloc(struct intel_gt *gt)
 	if (IS_ERR(vma))
 		i915_gem_object_put(obj);
 
-	return vma;
-}
-
-static struct i915_vma *
-hwsp_alloc(struct intel_timeline *timeline, unsigned int *cacheline)
-{
-	struct intel_gt_timelines *gt = &timeline->gt->timelines;
-	struct intel_timeline_hwsp *hwsp;
-
-	BUILD_BUG_ON(BITS_PER_TYPE(u64) * CACHELINE_BYTES > PAGE_SIZE);
-
-	spin_lock_irq(&gt->hwsp_lock);
-
-	/* hwsp_free_list only contains HWSP that have available cachelines */
-	hwsp = list_first_entry_or_null(&gt->hwsp_free_list,
-					typeof(*hwsp), free_link);
-	if (!hwsp) {
-		struct i915_vma *vma;
-
-		spin_unlock_irq(&gt->hwsp_lock);
-
-		hwsp = kmalloc(sizeof(*hwsp), GFP_KERNEL);
-		if (!hwsp)
-			return ERR_PTR(-ENOMEM);
-
-		vma = __hwsp_alloc(timeline->gt);
-		if (IS_ERR(vma)) {
-			kfree(hwsp);
-			return vma;
-		}
-
-		GT_TRACE(timeline->gt, "new HWSP allocated\n");
-
-		vma->private = hwsp;
-		hwsp->gt = timeline->gt;
-		hwsp->vma = vma;
-		hwsp->free_bitmap = ~0ull;
-		hwsp->gt_timelines = gt;
-
-		spin_lock_irq(&gt->hwsp_lock);
-		list_add(&hwsp->free_link, &gt->hwsp_free_list);
-	}
-
-	GEM_BUG_ON(!hwsp->free_bitmap);
-	*cacheline = __ffs64(hwsp->free_bitmap);
-	hwsp->free_bitmap &= ~BIT_ULL(*cacheline);
-	if (!hwsp->free_bitmap)
-		list_del(&hwsp->free_link);
-
-	spin_unlock_irq(&gt->hwsp_lock);
-
-	GEM_BUG_ON(hwsp->vma->private != hwsp);
-	return hwsp->vma;
-}
-
-static void __idle_hwsp_free(struct intel_timeline_hwsp *hwsp, int cacheline)
-{
-	struct intel_gt_timelines *gt = hwsp->gt_timelines;
-	unsigned long flags;
-
-	spin_lock_irqsave(&gt->hwsp_lock, flags);
-
-	/* As a cacheline becomes available, publish the HWSP on the freelist */
-	if (!hwsp->free_bitmap)
-		list_add_tail(&hwsp->free_link, &gt->hwsp_free_list);
-
-	GEM_BUG_ON(cacheline >= BITS_PER_TYPE(hwsp->free_bitmap));
-	hwsp->free_bitmap |= BIT_ULL(cacheline);
-
-	/* And if no one is left using it, give the page back to the system */
-	if (hwsp->free_bitmap == ~0ull) {
-		i915_vma_put(hwsp->vma);
-		list_del(&hwsp->free_link);
-		kfree(hwsp);
-	}
-
-	spin_unlock_irqrestore(&gt->hwsp_lock, flags);
-}
-
-static void __rcu_cacheline_free(struct rcu_head *rcu)
-{
-	struct intel_timeline_cacheline *cl =
-		container_of(rcu, typeof(*cl), rcu);
-
-	i915_active_fini(&cl->active);
-	kfree(cl);
-}
-
-static void __idle_cacheline_free(struct intel_timeline_cacheline *cl)
-{
-	GEM_BUG_ON(!i915_active_is_idle(&cl->active));
-
-	i915_gem_object_unpin_map(cl->hwsp->vma->obj);
-	i915_vma_put(cl->hwsp->vma);
-	__idle_hwsp_free(cl->hwsp, ptr_unmask_bits(cl->vaddr, CACHELINE_BITS));
-
-	call_rcu(&cl->rcu, __rcu_cacheline_free);
+       return vma;
 }
 
 __i915_active_call
-static void __cacheline_retire(struct i915_active *active)
+static void __timeline_retire(struct i915_active *active)
 {
-	struct intel_timeline_cacheline *cl =
-		container_of(active, typeof(*cl), active);
+	struct intel_timeline *tl =
+		container_of(active, typeof(*tl), active);
 
-	i915_vma_unpin(cl->hwsp->vma);
-	if (ptr_test_bit(cl->vaddr, CACHELINE_FREE))
-		__idle_cacheline_free(cl);
+	i915_vma_unpin(tl->hwsp_ggtt);
+	intel_timeline_put(tl);
 }
 
-static int __cacheline_active(struct i915_active *active)
+static int __timeline_active(struct i915_active *active)
 {
-	struct intel_timeline_cacheline *cl =
-		container_of(active, typeof(*cl), active);
+	struct intel_timeline *tl =
+		container_of(active, typeof(*tl), active);
 
-	__i915_vma_pin(cl->hwsp->vma);
+	__i915_vma_pin(tl->hwsp_ggtt);
+	intel_timeline_get(tl);
 	return 0;
 }
 
-static struct intel_timeline_cacheline *
-cacheline_alloc(struct intel_timeline_hwsp *hwsp, unsigned int cacheline)
-{
-	struct intel_timeline_cacheline *cl;
-	void *vaddr;
-
-	GEM_BUG_ON(cacheline >= BIT(CACHELINE_BITS));
-
-	cl = kmalloc(sizeof(*cl), GFP_KERNEL);
-	if (!cl)
-		return ERR_PTR(-ENOMEM);
-
-	vaddr = i915_gem_object_pin_map(hwsp->vma->obj, I915_MAP_WB);
-	if (IS_ERR(vaddr)) {
-		kfree(cl);
-		return ERR_CAST(vaddr);
-	}
-
-	i915_vma_get(hwsp->vma);
-	cl->hwsp = hwsp;
-	cl->vaddr = page_pack_bits(vaddr, cacheline);
-
-	i915_active_init(&cl->active, __cacheline_active, __cacheline_retire);
-
-	return cl;
-}
-
-static void cacheline_acquire(struct intel_timeline_cacheline *cl)
-{
-	if (cl)
-		i915_active_acquire(&cl->active);
-}
-
-static void cacheline_release(struct intel_timeline_cacheline *cl)
-{
-	if (cl)
-		i915_active_release(&cl->active);
-}
-
-static void cacheline_free(struct intel_timeline_cacheline *cl)
-{
-	if (!i915_active_acquire_if_busy(&cl->active)) {
-		__idle_cacheline_free(cl);
-		return;
-	}
-
-	GEM_BUG_ON(ptr_test_bit(cl->vaddr, CACHELINE_FREE));
-	cl->vaddr = ptr_set_bit(cl->vaddr, CACHELINE_FREE);
-
-	i915_active_release(&cl->active);
-}
-
 static int intel_timeline_init(struct intel_timeline *timeline,
 			       struct intel_gt *gt,
 			       struct i915_vma *hwsp,
@@ -225,38 +63,25 @@ static int intel_timeline_init(struct intel_timeline *timeline,
 
 	timeline->gt = gt;
 
-	timeline->has_initial_breadcrumb = !hwsp;
-	timeline->hwsp_cacheline = NULL;
-
-	if (!hwsp) {
-		struct intel_timeline_cacheline *cl;
-		unsigned int cacheline;
-
-		hwsp = hwsp_alloc(timeline, &cacheline);
+	if (hwsp) {
+		timeline->hwsp_offset = offset;
+		timeline->hwsp_ggtt = i915_vma_get(hwsp);
+	} else {
+		timeline->has_initial_breadcrumb = true;
+		hwsp = hwsp_alloc(gt);
 		if (IS_ERR(hwsp))
 			return PTR_ERR(hwsp);
-
-		cl = cacheline_alloc(hwsp->private, cacheline);
-		if (IS_ERR(cl)) {
-			__idle_hwsp_free(hwsp->private, cacheline);
-			return PTR_ERR(cl);
-		}
-
-		timeline->hwsp_cacheline = cl;
-		timeline->hwsp_offset = cacheline * CACHELINE_BYTES;
-
-		vaddr = page_mask_bits(cl->vaddr);
-	} else {
-		timeline->hwsp_offset = offset;
-		vaddr = i915_gem_object_pin_map(hwsp->obj, I915_MAP_WB);
-		if (IS_ERR(vaddr))
-			return PTR_ERR(vaddr);
+		timeline->hwsp_ggtt = hwsp;
 	}
 
-	timeline->hwsp_seqno =
-		memset(vaddr + timeline->hwsp_offset, 0, CACHELINE_BYTES);
+	vaddr = i915_gem_object_pin_map(hwsp->obj, I915_MAP_WB);
+	if (IS_ERR(vaddr))
+		return PTR_ERR(vaddr);
+
+	timeline->hwsp_map = vaddr;
+	timeline->hwsp_seqno = vaddr + timeline->hwsp_offset;
+	WRITE_ONCE(*(u32 *)timeline->hwsp_seqno, 0);
 
-	timeline->hwsp_ggtt = i915_vma_get(hwsp);
 	GEM_BUG_ON(timeline->hwsp_offset >= hwsp->size);
 
 	timeline->fence_context = dma_fence_context_alloc(1);
@@ -267,6 +92,7 @@ static int intel_timeline_init(struct intel_timeline *timeline,
 	INIT_LIST_HEAD(&timeline->requests);
 
 	i915_syncmap_init(&timeline->sync);
+	i915_active_init(&timeline->active, __timeline_active, __timeline_retire);
 
 	return 0;
 }
@@ -277,9 +103,6 @@ void intel_gt_init_timelines(struct intel_gt *gt)
 
 	spin_lock_init(&timelines->lock);
 	INIT_LIST_HEAD(&timelines->active_list);
-
-	spin_lock_init(&timelines->hwsp_lock);
-	INIT_LIST_HEAD(&timelines->hwsp_free_list);
 }
 
 static void intel_timeline_fini(struct intel_timeline *timeline)
@@ -288,12 +111,10 @@ static void intel_timeline_fini(struct intel_timeline *timeline)
 	GEM_BUG_ON(!list_empty(&timeline->requests));
 	GEM_BUG_ON(timeline->retire);
 
-	if (timeline->hwsp_cacheline)
-		cacheline_free(timeline->hwsp_cacheline);
-	else
-		i915_gem_object_unpin_map(timeline->hwsp_ggtt->obj);
+	i915_gem_object_unpin_map(timeline->hwsp_ggtt->obj);
 
 	i915_vma_put(timeline->hwsp_ggtt);
+	i915_active_fini(&timeline->active);
 }
 
 struct intel_timeline *
@@ -340,9 +161,9 @@ int intel_timeline_pin(struct intel_timeline *tl, struct i915_gem_ww_ctx *ww)
 	GT_TRACE(tl->gt, "timeline:%llx using HWSP offset:%x\n",
 		 tl->fence_context, tl->hwsp_offset);
 
-	cacheline_acquire(tl->hwsp_cacheline);
+	i915_active_acquire(&tl->active);
 	if (atomic_fetch_inc(&tl->pin_count)) {
-		cacheline_release(tl->hwsp_cacheline);
+		i915_active_acquire(&tl->active);
 		__i915_vma_unpin(tl->hwsp_ggtt);
 	}
 
@@ -429,106 +250,20 @@ static u32 timeline_advance(struct intel_timeline *tl)
 	return tl->seqno += 1 + tl->has_initial_breadcrumb;
 }
 
-static void timeline_rollback(struct intel_timeline *tl)
-{
-	tl->seqno -= 1 + tl->has_initial_breadcrumb;
-}
-
 static noinline int
 __intel_timeline_get_seqno(struct intel_timeline *tl,
 			   struct i915_request *rq,
 			   u32 *seqno)
 {
-	struct intel_timeline_cacheline *cl;
-	unsigned int cacheline;
-	struct i915_vma *vma;
-	void *vaddr;
-	int err;
+	tl->hwsp_offset = i915_ggtt_offset(tl->hwsp_ggtt) +
+		offset_in_page(tl->hwsp_offset + CACHELINE_BYTES);
 
-	might_lock(&tl->gt->ggtt->vm.mutex);
-	GT_TRACE(tl->gt, "timeline:%llx wrapped\n", tl->fence_context);
-
-	/*
-	 * If there is an outstanding GPU reference to this cacheline,
-	 * such as it being sampled by a HW semaphore on another timeline,
-	 * we cannot wraparound our seqno value (the HW semaphore does
-	 * a strict greater-than-or-equals compare, not i915_seqno_passed).
-	 * So if the cacheline is still busy, we must detach ourselves
-	 * from it and leave it inflight alongside its users.
-	 *
-	 * However, if nobody is watching and we can guarantee that nobody
-	 * will, we could simply reuse the same cacheline.
-	 *
-	 * if (i915_active_request_is_signaled(&tl->last_request) &&
-	 *     i915_active_is_signaled(&tl->hwsp_cacheline->active))
-	 *	return 0;
-	 *
-	 * That seems unlikely for a busy timeline that needed to wrap in
-	 * the first place, so just replace the cacheline.
-	 */
-
-	vma = hwsp_alloc(tl, &cacheline);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err_rollback;
-	}
-
-	err = i915_ggtt_pin(vma, NULL, 0, PIN_HIGH);
-	if (err) {
-		__idle_hwsp_free(vma->private, cacheline);
-		goto err_rollback;
-	}
-
-	cl = cacheline_alloc(vma->private, cacheline);
-	if (IS_ERR(cl)) {
-		err = PTR_ERR(cl);
-		__idle_hwsp_free(vma->private, cacheline);
-		goto err_unpin;
-	}
-	GEM_BUG_ON(cl->hwsp->vma != vma);
-
-	/*
-	 * Attach the old cacheline to the current request, so that we only
-	 * free it after the current request is retired, which ensures that
-	 * all writes into the cacheline from previous requests are complete.
-	 */
-	err = i915_active_ref(&tl->hwsp_cacheline->active,
-			      tl->fence_context,
-			      &rq->fence);
-	if (err)
-		goto err_cacheline;
-
-	cacheline_release(tl->hwsp_cacheline); /* ownership now xfered to rq */
-	cacheline_free(tl->hwsp_cacheline);
-
-	i915_vma_unpin(tl->hwsp_ggtt); /* binding kept alive by old cacheline */
-	i915_vma_put(tl->hwsp_ggtt);
-
-	tl->hwsp_ggtt = i915_vma_get(vma);
-
-	vaddr = page_mask_bits(cl->vaddr);
-	tl->hwsp_offset = cacheline * CACHELINE_BYTES;
-	tl->hwsp_seqno =
-		memset(vaddr + tl->hwsp_offset, 0, CACHELINE_BYTES);
-
-	tl->hwsp_offset += i915_ggtt_offset(vma);
-	GT_TRACE(tl->gt, "timeline:%llx using HWSP offset:%x\n",
-		 tl->fence_context, tl->hwsp_offset);
-
-	cacheline_acquire(cl);
-	tl->hwsp_cacheline = cl;
+	tl->hwsp_seqno = tl->hwsp_map + offset_in_page(tl->hwsp_offset);
+	intel_timeline_reset_seqno(tl);
 
 	*seqno = timeline_advance(tl);
 	GEM_BUG_ON(i915_seqno_passed(*tl->hwsp_seqno, *seqno));
 	return 0;
-
-err_cacheline:
-	cacheline_free(cl);
-err_unpin:
-	i915_vma_unpin(vma);
-err_rollback:
-	timeline_rollback(tl);
-	return err;
 }
 
 int intel_timeline_get_seqno(struct intel_timeline *tl,
@@ -538,53 +273,36 @@ int intel_timeline_get_seqno(struct intel_timeline *tl,
 	*seqno = timeline_advance(tl);
 
 	/* Replace the HWSP on wraparound for HW semaphores */
-	if (unlikely(!*seqno && tl->hwsp_cacheline))
+	if (unlikely(!*seqno && tl->has_initial_breadcrumb))
 		return __intel_timeline_get_seqno(tl, rq, seqno);
 
 	return 0;
 }
 
-static int cacheline_ref(struct intel_timeline_cacheline *cl,
-			 struct i915_request *rq)
-{
-	return i915_active_add_request(&cl->active, rq);
-}
-
 int intel_timeline_read_hwsp(struct i915_request *from,
 			     struct i915_request *to,
 			     u32 *hwsp)
 {
-	struct intel_timeline_cacheline *cl;
+	struct intel_timeline *tl;
 	int err;
 
-	GEM_BUG_ON(!rcu_access_pointer(from->hwsp_cacheline));
-
 	rcu_read_lock();
-	cl = rcu_dereference(from->hwsp_cacheline);
-	if (i915_request_completed(from)) /* confirm cacheline is valid */
-		goto unlock;
-	if (unlikely(!i915_active_acquire_if_busy(&cl->active)))
-		goto unlock; /* seqno wrapped and completed! */
-	if (unlikely(i915_request_completed(from)))
-		goto release;
+	tl = rcu_dereference(from->timeline);
+	if (tl && (i915_request_completed(from) ||
+	    !i915_active_acquire_if_busy(&tl->active)))
+		tl = NULL;
 	rcu_read_unlock();
 
-	err = cacheline_ref(cl, to);
-	if (err)
-		goto out;
+	if (!tl)
+		return 1;
 
-	*hwsp = i915_ggtt_offset(cl->hwsp->vma) +
-		ptr_unmask_bits(cl->vaddr, CACHELINE_BITS) * CACHELINE_BYTES;
+	/* hwsp_offset may wraparound, so use from->hwsp_seqno */
+	*hwsp = i915_ggtt_offset(tl->hwsp_ggtt) +
+			offset_in_page(from->hwsp_seqno);
 
-out:
-	i915_active_release(&cl->active);
+	err = i915_active_add_request(&tl->active, to);
+	i915_active_release(&tl->active);
 	return err;
-
-release:
-	i915_active_release(&cl->active);
-unlock:
-	rcu_read_unlock();
-	return 1;
 }
 
 void intel_timeline_unpin(struct intel_timeline *tl)
@@ -593,8 +311,7 @@ void intel_timeline_unpin(struct intel_timeline *tl)
 	if (!atomic_dec_and_test(&tl->pin_count))
 		return;
 
-	cacheline_release(tl->hwsp_cacheline);
-
+	i915_active_release(&tl->active);
 	__i915_vma_unpin(tl->hwsp_ggtt);
 }
 
@@ -612,7 +329,6 @@ void intel_gt_fini_timelines(struct intel_gt *gt)
 	struct intel_gt_timelines *timelines = &gt->timelines;
 
 	GEM_BUG_ON(!list_empty(&timelines->active_list));
-	GEM_BUG_ON(!list_empty(&timelines->hwsp_free_list));
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline_types.h b/drivers/gpu/drm/i915/gt/intel_timeline_types.h
index 02181c5020db..610d593b5bda 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline_types.h
@@ -18,7 +18,6 @@
 struct i915_vma;
 struct i915_syncmap;
 struct intel_gt;
-struct intel_timeline_hwsp;
 
 struct intel_timeline {
 	u64 fence_context;
@@ -45,12 +44,11 @@ struct intel_timeline {
 	atomic_t pin_count;
 	atomic_t active_count;
 
+	void *hwsp_map;
 	const u32 *hwsp_seqno;
 	struct i915_vma *hwsp_ggtt;
 	u32 hwsp_offset;
 
-	struct intel_timeline_cacheline *hwsp_cacheline;
-
 	bool has_initial_breadcrumb;
 
 	/**
@@ -67,6 +65,8 @@ struct intel_timeline {
 	 */
 	struct i915_active_fence last_request;
 
+	struct i915_active active;
+
 	/** A chain of completed timelines ready for early retirement. */
 	struct intel_timeline *retire;
 
@@ -88,13 +88,4 @@ struct intel_timeline {
 	struct rcu_head rcu;
 };
 
-struct intel_timeline_cacheline {
-	struct i915_active active;
-
-	struct intel_timeline_hwsp *hwsp;
-	void *vaddr;
-
-	struct rcu_head rcu;
-};
-
 #endif /* __I915_TIMELINE_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index 96d164a3841d..0a5f2b16b8ec 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -664,7 +664,7 @@ static int live_hwsp_wrap(void *arg)
 	if (IS_ERR(tl))
 		return PTR_ERR(tl);
 
-	if (!tl->has_initial_breadcrumb || !tl->hwsp_cacheline)
+	if (!tl->has_initial_breadcrumb)
 		goto out_free;
 
 	err = intel_timeline_pin(tl, NULL);
@@ -780,9 +780,7 @@ static int live_hwsp_rollover_kernel(void *arg)
 		}
 
 		GEM_BUG_ON(i915_active_fence_isset(&tl->last_request));
-		tl->seqno = 0;
-		timeline_rollback(tl);
-		timeline_rollback(tl);
+		tl->seqno = -2u;
 		WRITE_ONCE(*(u32 *)tl->hwsp_seqno, tl->seqno);
 
 		for (i = 0; i < ARRAY_SIZE(rq); i++) {
@@ -862,11 +860,10 @@ static int live_hwsp_rollover_user(void *arg)
 			goto out;
 
 		tl = ce->timeline;
-		if (!tl->has_initial_breadcrumb || !tl->hwsp_cacheline)
+		if (!tl->has_initial_breadcrumb)
 			goto out;
 
-		timeline_rollback(tl);
-		timeline_rollback(tl);
+		tl->seqno = -4u;
 		WRITE_ONCE(*(u32 *)tl->hwsp_seqno, tl->seqno);
 
 		for (i = 0; i < ARRAY_SIZE(rq); i++) {
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 0208e917d14a..0fdcd521b6c0 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -846,7 +846,6 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 	rq->fence.seqno = seqno;
 
 	RCU_INIT_POINTER(rq->timeline, tl);
-	RCU_INIT_POINTER(rq->hwsp_cacheline, tl->hwsp_cacheline);
 	rq->hwsp_seqno = tl->hwsp_seqno;
 	GEM_BUG_ON(i915_request_completed(rq));
 
@@ -1085,9 +1084,6 @@ emit_semaphore_wait(struct i915_request *to,
 	if (i915_request_has_initial_breadcrumb(to))
 		goto await_fence;
 
-	if (!rcu_access_pointer(from->hwsp_cacheline))
-		goto await_fence;
-
 	/*
 	 * If this or its dependents are waiting on an external fence
 	 * that may fail catastrophically, then we want to avoid using
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 16b721080195..03ba7c85929c 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -234,16 +234,6 @@ struct i915_request {
 	 */
 	const u32 *hwsp_seqno;
 
-	/*
-	 * If we need to access the timeline's seqno for this request in
-	 * another request, we need to keep a read reference to this associated
-	 * cacheline, so that we do not free and recycle it before the foreign
-	 * observers have completed. Hence, we keep a pointer to the cacheline
-	 * inside the timeline's HWSP vma, but it is only valid while this
-	 * request has not completed and guarded by the timeline mutex.
-	 */
-	struct intel_timeline_cacheline __rcu *hwsp_cacheline;
-
 	/** Position in the ring of the start of the request */
 	u32 head;
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
