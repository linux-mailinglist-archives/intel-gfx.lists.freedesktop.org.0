Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D538B1CB787
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 20:44:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C27D36E282;
	Fri,  8 May 2020 18:44:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F3A86E286
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2020 18:44:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21154782-1500050 
 for multiple; Fri, 08 May 2020 19:43:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 May 2020 19:43:34 +0100
Message-Id: <20200508184334.16015-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Peel dma-fence-chains for await
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

From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

To allow faster engine to engine synchronization, peel the layer of
dma-fence-chain to expose potential i915 fences so that the
i915_request code can emit HW semaphore wait/signal operations in the
ring which is faster than waking up the host to submit unblocked
workloads after interrupt notification.

This is similar to the peeling we do for e.g. dma_fence_array.

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 30 ++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 94189c7d43cd..88a491078fee 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -23,6 +23,7 @@
  */
 
 #include <linux/dma-fence-array.h>
+#include <linux/dma-fence-chain.h>
 #include <linux/irq_work.h>
 #include <linux/prefetch.h>
 #include <linux/sched.h>
@@ -1068,13 +1069,40 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
 }
 
 static int
-i915_request_await_external(struct i915_request *rq, struct dma_fence *fence)
+__i915_request_await_external(struct i915_request *rq, struct dma_fence *fence)
 {
 	return i915_sw_fence_await_dma_fence(&rq->submit, fence,
 					     fence->context ? I915_FENCE_TIMEOUT : 0,
 					     I915_FENCE_GFP);
 }
 
+static int
+i915_request_await_external(struct i915_request *rq, struct dma_fence *fence)
+{
+	struct dma_fence *iter;
+	int err = 0;
+
+	if (!to_dma_fence_chain(fence))
+		return __i915_request_await_external(rq, fence);
+
+	dma_fence_chain_for_each(iter, fence) {
+		struct dma_fence_chain *chain = to_dma_fence_chain(iter);
+		GEM_BUG_ON(!chain);
+
+		if (!dma_fence_is_i915(chain->fence)) {
+			err =__i915_request_await_external(rq, chain->fence);
+			break;
+		}
+
+		err = i915_request_await_request(rq, to_request(chain->fence));
+		if (err < 0)
+			break;
+	}
+
+	dma_fence_put(iter);
+	return err;
+}
+
 int
 i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
 {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
