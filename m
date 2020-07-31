Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C64B23477E
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 16:12:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7C9B6E27C;
	Fri, 31 Jul 2020 14:12:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 203136E27C
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 14:12:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21994283-1500050 
 for multiple; Fri, 31 Jul 2020 15:12:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jul 2020 15:12:45 +0100
Message-Id: <20200731141245.11483-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Decouple obj<->fence reference
 cycles on freeing the GT pool
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make sure that the obj->base.resv does not hold a reference to a fence
that itself has an active reference on the object. There is no automatic
pruning, so we must decouple such reference cycles (just in case they
exist) before discarding the pool->obj.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
index 4b7671ac5dca..6411ebdf9468 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
@@ -31,9 +31,18 @@ bucket_for_size(struct intel_gt_buffer_pool *pool, size_t sz)
 	return &pool->cache_list[n];
 }
 
+static void dma_resv_prune(struct dma_resv *resv)
+{
+	dma_resv_lock(resv, NULL);
+	dma_resv_add_excl_fence(resv, NULL);
+	dma_resv_unlock(resv);
+}
+
 static void node_free(struct intel_gt_buffer_pool_node *node)
 {
+	dma_resv_prune(node->obj->base.resv);
 	i915_gem_object_put(node->obj);
+
 	i915_active_fini(&node->active);
 	kfree_rcu(node, rcu);
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
