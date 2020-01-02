Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5584C12E739
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 15:25:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD85989362;
	Thu,  2 Jan 2020 14:25:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1AD589362
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 14:25:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19750025-1500050 
 for multiple; Thu, 02 Jan 2020 14:24:56 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jan 2020 14:24:54 +0000
Message-Id: <20200102142454.1494257-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Drop mutex serialisation between
 context pin/unpin
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

The last remaining reason for serialising the pin/unpin of the
intel_context is to ensure that our preallocated wakerefs are not
consumed too early (i.e. the unpin of the previous phase does not emit
the idle barriers for this phase before we even submit). All of the
other operations within the context pin/unpin are supposed to be
atomic...  Therefore, we can reduce the serialisation to being just on
the i915_active.preallocated_barriers itself and drop the nested
pin_mutex from intel_context_unpin().

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c | 18 +++++-------------
 drivers/gpu/drm/i915/i915_active.c      | 20 ++++++++++++++++----
 2 files changed, 21 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index c25d2be2ae0f..63b19d7a3c0f 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -122,22 +122,14 @@ int __intel_context_do_pin(struct intel_context *ce)
 
 void intel_context_unpin(struct intel_context *ce)
 {
-	if (likely(atomic_add_unless(&ce->pin_count, -1, 1)))
+	if (!atomic_dec_and_test(&ce->pin_count))
 		return;
 
-	/* We may be called from inside intel_context_pin() to evict another */
-	intel_context_get(ce);
-	mutex_lock_nested(&ce->pin_mutex, SINGLE_DEPTH_NESTING);
-
-	if (likely(atomic_dec_and_test(&ce->pin_count))) {
-		CE_TRACE(ce, "retire\n");
+	CE_TRACE(ce, "unpin\n");
+	ce->ops->unpin(ce);
 
-		ce->ops->unpin(ce);
-
-		intel_context_active_release(ce);
-	}
-
-	mutex_unlock(&ce->pin_mutex);
+	intel_context_get(ce);
+	intel_context_active_release(ce);
 	intel_context_put(ce);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index cfe09964622b..dc317b5171f0 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -605,12 +605,15 @@ int i915_active_acquire_preallocate_barrier(struct i915_active *ref,
 					    struct intel_engine_cs *engine)
 {
 	intel_engine_mask_t tmp, mask = engine->mask;
+	struct llist_node *pos = NULL, *next;
 	struct intel_gt *gt = engine->gt;
-	struct llist_node *pos, *next;
 	int err;
 
 	GEM_BUG_ON(i915_active_is_idle(ref));
-	GEM_BUG_ON(!llist_empty(&ref->preallocated_barriers));
+
+	/* Wait until the previous preallocation is completed */
+	while (!llist_empty(&ref->preallocated_barriers))
+		cond_resched();
 
 	/*
 	 * Preallocate a node for each physical engine supporting the target
@@ -653,16 +656,25 @@ int i915_active_acquire_preallocate_barrier(struct i915_active *ref,
 		GEM_BUG_ON(rcu_access_pointer(node->base.fence) != ERR_PTR(-EAGAIN));
 
 		GEM_BUG_ON(barrier_to_engine(node) != engine);
-		llist_add(barrier_to_ll(node), &ref->preallocated_barriers);
+		next = barrier_to_ll(node);
+		next->next = pos;
+		if (!pos)
+			pos = next;
 		intel_engine_pm_get(engine);
 	}
 
+	GEM_BUG_ON(!llist_empty(&ref->preallocated_barriers));
+	llist_add_batch(next, pos, &ref->preallocated_barriers);
+
 	return 0;
 
 unwind:
-	llist_for_each_safe(pos, next, take_preallocated_barriers(ref)) {
+	while (pos) {
 		struct active_node *node = barrier_from_ll(pos);
 
+		next = pos->next;
+		pos = next;
+
 		atomic_dec(&ref->count);
 		intel_engine_pm_put(barrier_to_engine(node));
 
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
