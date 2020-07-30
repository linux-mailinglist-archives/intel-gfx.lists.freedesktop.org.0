Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 427B0232FA8
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 11:38:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32EE56E8AB;
	Thu, 30 Jul 2020 09:38:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA49E6E091
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 09:38:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21979054-1500050 
 for multiple; Thu, 30 Jul 2020 10:38:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jul 2020 10:37:41 +0100
Message-Id: <20200730093756.16737-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200730093756.16737-1-chris@chris-wilson.co.uk>
References: <20200730093756.16737-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/21] drm/i915: Reduce locking around
 i915_active_acquire_preallocate_barrier()
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
Cc: thomas.hellstrom@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As the conversion between idle-barrier and full i915_active_fence is
already serialised by explicit memory barriers, we can reduce the
spinlock in i915_active_acquire_preallocate_barrier() for finding an
idle-barrier to reuse to an RCU read lock to ensure the fence remains
valid, only taking the spinlock for the update of the rbtree itself.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_active.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 7b51045c8461..5dd52bb6d38c 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -807,7 +807,6 @@ static struct active_node *reuse_idle_barrier(struct i915_active *ref, u64 idx)
 	if (RB_EMPTY_ROOT(&ref->tree))
 		return NULL;
 
-	spin_lock_irq(&ref->tree_lock);
 	GEM_BUG_ON(i915_active_is_idle(ref));
 
 	/*
@@ -872,11 +871,10 @@ static struct active_node *reuse_idle_barrier(struct i915_active *ref, u64 idx)
 			goto match;
 	}
 
-	spin_unlock_irq(&ref->tree_lock);
-
 	return NULL;
 
 match:
+	spin_lock_irq(&ref->tree_lock);
 	rb_erase(p, &ref->tree); /* Hide from waits and sibling allocations */
 	if (p == &ref->cache->node)
 		WRITE_ONCE(ref->cache, NULL);
@@ -911,7 +909,9 @@ int i915_active_acquire_preallocate_barrier(struct i915_active *ref,
 		struct llist_node *prev = first;
 		struct active_node *node;
 
+		rcu_read_lock();
 		node = reuse_idle_barrier(ref, idx);
+		rcu_read_unlock();
 		if (!node) {
 			node = kmem_cache_alloc(global.slab_cache, GFP_KERNEL);
 			if (!node) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
