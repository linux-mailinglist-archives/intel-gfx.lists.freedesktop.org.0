Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDD226A1D8
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 11:14:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43A046E216;
	Tue, 15 Sep 2020 09:14:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A7936E212
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 09:14:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22431500-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 10:14:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Sep 2020 10:14:17 +0100
Message-Id: <20200915091417.4086-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200915091417.4086-1-chris@chris-wilson.co.uk>
References: <20200915091417.4086-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/gt: Clear the buffer pool age before
 use
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

If we create a new node, it is possible for the slab allocator to return
us a recently freed node. If that node was just retired, it will retain
the current jiffy as its node->age. There is then a miniscule window,
where as that node is retired, it will appear on the free list with an
incorrect age and be eligible for reuse by one thread, and then by a
second thread as the correct node->age is written.

Fixes: 8080ffd81600 ("drm/i915/gt: Delay taking the spinlock for grabbing from the buffer pool")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
index 4b7671ac5dca..104cb30e8c13 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
@@ -134,6 +134,7 @@ static void pool_retire(struct i915_active *ref)
 	/* Return this object to the shrinker pool */
 	i915_gem_object_make_purgeable(node->obj);
 
+	GEM_BUG_ON(node->age);
 	spin_lock_irqsave(&pool->lock, flags);
 	list_add_rcu(&node->link, list);
 	WRITE_ONCE(node->age, jiffies ?: 1); /* 0 reserved for active nodes */
@@ -155,6 +156,7 @@ node_create(struct intel_gt_buffer_pool *pool, size_t sz)
 	if (!node)
 		return ERR_PTR(-ENOMEM);
 
+	node->age = 0;
 	node->pool = pool;
 	i915_active_init(&node->active, pool_active, pool_retire);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
