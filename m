Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9E0178554
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 23:12:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1091C6E964;
	Tue,  3 Mar 2020 22:12:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B67C6E968
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 22:12:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20434424-1500050 
 for multiple; Tue, 03 Mar 2020 22:12:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Mar 2020 22:12:35 +0000
Message-Id: <20200303221235.1930678-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Apply a heavy handed flush
 to i915_active
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

Due to the ordering of cmpxchg()/dma_fence_signal() inside node_retire(),
we must also use the xchg() as our primary memory barrier to flush the
outstanding callbacks after expected completion of the i915_active.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/selftests/i915_active.c | 29 ++++++++++++++------
 1 file changed, 21 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_active.c b/drivers/gpu/drm/i915/selftests/i915_active.c
index 3a37c67ab6c4..68bbb1580162 100644
--- a/drivers/gpu/drm/i915/selftests/i915_active.c
+++ b/drivers/gpu/drm/i915/selftests/i915_active.c
@@ -311,20 +311,33 @@ static void spin_unlock_wait(spinlock_t *lock)
 	spin_unlock_irq(lock);
 }
 
+static void active_flush(struct i915_active *ref,
+			 struct i915_active_fence *active)
+{
+	struct dma_fence *fence;
+
+	fence = xchg(__active_fence_slot(active), NULL);
+	if (!fence)
+		return;
+
+	spin_lock_irq(fence->lock);
+	__list_del_entry(&active->cb.node);
+	spin_unlock_irq(fence->lock); /* serialise with fence->cb_list */
+	atomic_dec(&ref->count);
+
+	GEM_BUG_ON(!test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags));
+}
+
 void i915_active_unlock_wait(struct i915_active *ref)
 {
 	if (i915_active_acquire_if_busy(ref)) {
 		struct active_node *it, *n;
 
+		/* Wait for all active callbacks */
 		rcu_read_lock();
-		rbtree_postorder_for_each_entry_safe(it, n, &ref->tree, node) {
-			struct dma_fence *f;
-
-			/* Wait for all active callbacks */
-			f = rcu_dereference(it->base.fence);
-			if (f)
-				spin_unlock_wait(f->lock);
-		}
+		active_flush(ref, &ref->excl);
+		rbtree_postorder_for_each_entry_safe(it, n, &ref->tree, node)
+			active_flush(ref, &it->base);
 		rcu_read_unlock();
 
 		i915_active_release(ref);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
