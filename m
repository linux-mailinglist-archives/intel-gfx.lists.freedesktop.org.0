Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA9521FE2D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 22:07:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C872F6E884;
	Tue, 14 Jul 2020 20:07:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 167E76E87F;
 Tue, 14 Jul 2020 20:06:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21820072-1500050 
 for multiple; Tue, 14 Jul 2020 21:06:48 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: dri-devel@lists.freedesktop.org
Date: Tue, 14 Jul 2020 21:06:45 +0100
Message-Id: <20200714200646.14041-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200714200646.14041-1-chris@chris-wilson.co.uk>
References: <20200714200646.14041-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] dma-buf/sw_sync: Separate signal/timeline
 locks
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
Cc: intel-gfx@lists.freedesktop.org,
 Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we decouple the sync_pt from the timeline tree upon release, in
order to allow releasing the sync_pt from a signal callback we need to
separate the sync_pt signaling lock from the timeline tree lock.

Suggested-by: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
---
 drivers/dma-buf/sw_sync.c    | 18 +++++++++++-------
 drivers/dma-buf/sync_debug.h |  2 ++
 2 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/dma-buf/sw_sync.c b/drivers/dma-buf/sw_sync.c
index 807c82148062..116dad6c7905 100644
--- a/drivers/dma-buf/sw_sync.c
+++ b/drivers/dma-buf/sw_sync.c
@@ -132,14 +132,17 @@ static void timeline_fence_release(struct dma_fence *fence)
 {
 	struct sync_pt *pt = dma_fence_to_sync_pt(fence);
 	struct sync_timeline *parent = dma_fence_parent(fence);
-	unsigned long flags;
 
-	spin_lock_irqsave(fence->lock, flags);
 	if (!list_empty(&pt->link)) {
-		list_del(&pt->link);
-		rb_erase(&pt->node, &parent->pt_tree);
+		unsigned long flags;
+
+		spin_lock_irqsave(&parent->lock, flags);
+		if (!list_empty(&pt->link)) {
+			list_del(&pt->link);
+			rb_erase(&pt->node, &parent->pt_tree);
+		}
+		spin_unlock_irqrestore(&parent->lock, flags);
 	}
-	spin_unlock_irqrestore(fence->lock, flags);
 
 	sync_timeline_put(parent);
 	dma_fence_free(fence);
@@ -252,12 +255,13 @@ static struct sync_pt *sync_pt_create(struct sync_timeline *obj,
 		return NULL;
 
 	sync_timeline_get(obj);
-	dma_fence_init(&pt->base, &timeline_fence_ops, &obj->lock,
+	spin_lock_init(&pt->lock);
+	dma_fence_init(&pt->base, &timeline_fence_ops, &pt->lock,
 		       obj->context, value);
 	INIT_LIST_HEAD(&pt->link);
 
 	spin_lock_irq(&obj->lock);
-	if (!dma_fence_is_signaled_locked(&pt->base)) {
+	if (!dma_fence_is_signaled(&pt->base)) {
 		struct rb_node **p = &obj->pt_tree.rb_node;
 		struct rb_node *parent = NULL;
 
diff --git a/drivers/dma-buf/sync_debug.h b/drivers/dma-buf/sync_debug.h
index 6176e52ba2d7..fd073fc32329 100644
--- a/drivers/dma-buf/sync_debug.h
+++ b/drivers/dma-buf/sync_debug.h
@@ -55,11 +55,13 @@ static inline struct sync_timeline *dma_fence_parent(struct dma_fence *fence)
  * @base: base fence object
  * @link: link on the sync timeline's list
  * @node: node in the sync timeline's tree
+ * @lock: fence signaling lock
  */
 struct sync_pt {
 	struct dma_fence base;
 	struct list_head link;
 	struct rb_node node;
+	spinlock_t lock;
 };
 
 extern const struct file_operations sw_sync_debugfs_fops;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
