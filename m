Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B882231D31
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jul 2020 13:08:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F6F58979F;
	Wed, 29 Jul 2020 11:08:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D9868979F
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 11:07:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21967811-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 12:07:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jul 2020 12:07:56 +0100
Message-Id: <20200729110756.2344-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Fix termination condition for freeing
 all buffer objects
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

A last minute change, that unfortunately broke CI so badly it declared
SUCCESS, was to refactor the debug free all buffer pool code to reuse
the normal worker, inverted the termination condition so that it instead
of discarding the nodes, they were all declared young enough and
eligible for reuse.

Fixes: 03cc6e2cb6da ("drm/i915/gt: Delay taking the spinlock for grabbing from the buffer pool")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
index 16dbf5436179..9e938d4f6bfe 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
@@ -38,8 +38,7 @@ static void node_free(struct intel_gt_buffer_pool_node *node)
 	kfree_rcu(node, rcu);
 }
 
-static bool
-pool_free_older_than(struct intel_gt_buffer_pool *pool, unsigned long old)
+static bool pool_free_older_than(struct intel_gt_buffer_pool *pool, long keep)
 {
 	struct intel_gt_buffer_pool_node *node, *stale = NULL;
 	bool active = false;
@@ -57,8 +56,12 @@ pool_free_older_than(struct intel_gt_buffer_pool *pool, unsigned long old)
 
 			/* Most recent at head; oldest at tail */
 			list_for_each_prev(pos, list) {
+				unsigned long age;
+
 				node = list_entry(pos, typeof(*node), link);
-				if (time_before(node->age, old))
+
+				age = READ_ONCE(node->age);
+				if (!age || jiffies - age < keep)
 					break;
 
 				/* Check we are the first to claim this node */
@@ -90,7 +93,7 @@ static void pool_free_work(struct work_struct *wrk)
 	struct intel_gt_buffer_pool *pool =
 		container_of(wrk, typeof(*pool), work.work);
 
-	if (pool_free_older_than(pool, jiffies - HZ))
+	if (pool_free_older_than(pool, HZ))
 		schedule_delayed_work(&pool->work,
 				      round_jiffies_up_relative(HZ));
 }
@@ -230,7 +233,7 @@ void intel_gt_flush_buffer_pool(struct intel_gt *gt)
 	struct intel_gt_buffer_pool *pool = &gt->buffer_pool;
 
 	do {
-		while (pool_free_older_than(pool, jiffies + 1))
+		while (pool_free_older_than(pool, 0))
 			;
 	} while (cancel_delayed_work_sync(&pool->work));
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
