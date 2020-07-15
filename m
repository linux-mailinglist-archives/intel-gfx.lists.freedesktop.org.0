Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7C9220A75
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 12:49:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30A596EA9B;
	Wed, 15 Jul 2020 10:49:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 599236EA96;
 Wed, 15 Jul 2020 10:49:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21825319-1500050 
 for multiple; Wed, 15 Jul 2020 11:49:07 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: dri-devel@lists.freedesktop.org
Date: Wed, 15 Jul 2020 11:49:04 +0100
Message-Id: <20200715104905.11006-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] dma-buf/dma-fence: Trim
 dma_fence_add_callback()
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rearrange the code to pull the operations beore the fence->lock critical
section, and remove a small amount of redundancy:

Function                                     old     new   delta
dma_fence_add_callback                       156     145     -11

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/dma-buf/dma-fence.c | 26 +++++++++++---------------
 1 file changed, 11 insertions(+), 15 deletions(-)

diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
index 656e9ac2d028..8d5bdfce638e 100644
--- a/drivers/dma-buf/dma-fence.c
+++ b/drivers/dma-buf/dma-fence.c
@@ -348,29 +348,25 @@ EXPORT_SYMBOL(dma_fence_enable_sw_signaling);
 int dma_fence_add_callback(struct dma_fence *fence, struct dma_fence_cb *cb,
 			   dma_fence_func_t func)
 {
-	unsigned long flags;
-	int ret = 0;
+	int ret = -ENOENT;
 
 	if (WARN_ON(!fence || !func))
 		return -EINVAL;
 
-	if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
-		INIT_LIST_HEAD(&cb->node);
-		return -ENOENT;
-	}
+	cb->func = func;
+	INIT_LIST_HEAD(&cb->node);
 
-	spin_lock_irqsave(fence->lock, flags);
+	if (!test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
+		unsigned long flags;
 
-	if (__dma_fence_enable_signaling(fence)) {
-		cb->func = func;
-		list_add_tail(&cb->node, &fence->cb_list);
-	} else {
-		INIT_LIST_HEAD(&cb->node);
-		ret = -ENOENT;
+		spin_lock_irqsave(fence->lock, flags);
+		if (__dma_fence_enable_signaling(fence)) {
+			list_add_tail(&cb->node, &fence->cb_list);
+			ret = 0;
+		}
+		spin_unlock_irqrestore(fence->lock, flags);
 	}
 
-	spin_unlock_irqrestore(fence->lock, flags);
-
 	return ret;
 }
 EXPORT_SYMBOL(dma_fence_add_callback);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
