Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 373DE121268
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 18:52:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 767EF6E851;
	Mon, 16 Dec 2019 17:52:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FF7A6E858
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 17:52:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19598726-1500050 
 for multiple; Mon, 16 Dec 2019 17:52:21 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2019 17:52:20 +0000
Message-Id: <20191216175220.2788298-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Eliminate the trylock for
 reading a timeline's hwsp
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

As we stash a pointer to the HWSP cacheline on the request, when reading
it we only need confirm that the cacheline is still valid by checking
that the request and timeline are still intact.

v2: Protect hwsp_cachline with RCU

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_timeline.c | 59 +++++++++++-------------
 drivers/gpu/drm/i915/i915_request.c      |  4 +-
 drivers/gpu/drm/i915/i915_request.h      |  5 +-
 3 files changed, 30 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index d71aafb66d6e..6da3f4af9614 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -25,10 +25,14 @@ struct intel_timeline_hwsp {
 
 struct intel_timeline_cacheline {
 	struct i915_active active;
+
 	struct intel_timeline_hwsp *hwsp;
 	void *vaddr;
 #define CACHELINE_BITS 6
 #define CACHELINE_FREE CACHELINE_BITS
+	u32 offset;
+
+	struct rcu_head rcu;
 };
 
 static struct i915_vma *__hwsp_alloc(struct intel_gt *gt)
@@ -133,7 +137,7 @@ static void __idle_cacheline_free(struct intel_timeline_cacheline *cl)
 	__idle_hwsp_free(cl->hwsp, ptr_unmask_bits(cl->vaddr, CACHELINE_BITS));
 
 	i915_active_fini(&cl->active);
-	kfree(cl);
+	kfree_rcu(cl, rcu);
 }
 
 __i915_active_call
@@ -177,6 +181,8 @@ cacheline_alloc(struct intel_timeline_hwsp *hwsp, unsigned int cacheline)
 	i915_vma_get(hwsp->vma);
 	cl->hwsp = hwsp;
 	cl->vaddr = page_pack_bits(vaddr, cacheline);
+	cl->offset =
+		i915_ggtt_offset(cl->hwsp->vma) + cacheline * CACHELINE_BYTES;
 
 	i915_active_init(&cl->active, __cacheline_active, __cacheline_retire);
 
@@ -514,46 +520,33 @@ int intel_timeline_read_hwsp(struct i915_request *from,
 			     struct i915_request *to,
 			     u32 *hwsp)
 {
-	struct intel_timeline *tl;
+	struct intel_timeline_cacheline *cl;
 	int err;
 
+	GEM_BUG_ON(!rcu_access_pointer(from->hwsp_cacheline));
+
 	rcu_read_lock();
-	tl = rcu_dereference(from->timeline);
-	if (i915_request_completed(from) || !kref_get_unless_zero(&tl->kref))
-		tl = NULL;
+	cl = rcu_dereference(from->hwsp_cacheline);
+	if (unlikely(!i915_active_acquire_if_busy(&cl->active)))
+		goto unlock; /* seqno wrapped and completed! */
+	if (unlikely(i915_request_completed(from)))
+		goto release;
 	rcu_read_unlock();
-	if (!tl) /* already completed */
-		return 1;
-
-	GEM_BUG_ON(rcu_access_pointer(to->timeline) == tl);
-
-	err = -EAGAIN;
-	if (mutex_trylock(&tl->mutex)) {
-		struct intel_timeline_cacheline *cl = from->hwsp_cacheline;
-
-		if (i915_request_completed(from)) {
-			err = 1;
-			goto unlock;
-		}
 
-		err = cacheline_ref(cl, to);
-		if (err)
-			goto unlock;
+	err = cacheline_ref(cl, to);
+	if (err)
+		goto out;
 
-		if (likely(cl == tl->hwsp_cacheline)) {
-			*hwsp = tl->hwsp_offset;
-		} else { /* across a seqno wrap, recover the original offset */
-			*hwsp = i915_ggtt_offset(cl->hwsp->vma) +
-				ptr_unmask_bits(cl->vaddr, CACHELINE_BITS) *
-				CACHELINE_BYTES;
-		}
+	*hwsp = cl->offset;
+out:
+	i915_active_release(&cl->active);
+	return err;
 
+release:
+	i915_active_release(&cl->active);
 unlock:
-		mutex_unlock(&tl->mutex);
-	}
-	intel_timeline_put(tl);
-
-	return err;
+	rcu_read_unlock();
+	return 1;
 }
 
 void intel_timeline_unpin(struct intel_timeline *tl)
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index a59b803aef92..269470d3527a 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -655,9 +655,9 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 	rq->execution_mask = ce->engine->mask;
 	rq->flags = 0;
 
-	rcu_assign_pointer(rq->timeline, tl);
+	RCU_INIT_POINTER(rq->timeline, tl);
+	RCU_INIT_POINTER(rq->hwsp_cacheline, tl->hwsp_cacheline);
 	rq->hwsp_seqno = tl->hwsp_seqno;
-	rq->hwsp_cacheline = tl->hwsp_cacheline;
 
 	rq->rcustate = get_state_synchronize_rcu(); /* acts as smp_mb() */
 
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index a561b8efe869..aa38290eea3d 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -30,6 +30,7 @@
 
 #include "gt/intel_context_types.h"
 #include "gt/intel_engine_types.h"
+#include "gt/intel_timeline_types.h"
 
 #include "i915_gem.h"
 #include "i915_scheduler.h"
@@ -41,8 +42,6 @@
 struct drm_file;
 struct drm_i915_gem_object;
 struct i915_request;
-struct intel_timeline;
-struct intel_timeline_cacheline;
 
 struct i915_capture_list {
 	struct i915_capture_list *next;
@@ -183,7 +182,7 @@ struct i915_request {
 	 * inside the timeline's HWSP vma, but it is only valid while this
 	 * request has not completed and guarded by the timeline mutex.
 	 */
-	struct intel_timeline_cacheline *hwsp_cacheline;
+	struct intel_timeline_cacheline __rcu *hwsp_cacheline;
 
 	/** Position in the ring of the start of the request */
 	u32 head;
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
