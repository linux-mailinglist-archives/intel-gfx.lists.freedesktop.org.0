Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C99E1DACA3
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 09:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CC6C89FAD;
	Wed, 20 May 2020 07:55:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7560789FAC
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 07:55:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21236580-1500050 
 for multiple; Wed, 20 May 2020 08:55:06 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 08:54:49 +0100
Message-Id: <20200520075503.10388-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200520075503.10388-1-chris@chris-wilson.co.uk>
References: <20200520075503.10388-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/22] drm/i915: Improve execute_cb struct
 packing
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

Reduce the irq_work llist for attaching the callbacks to the signal for
both smaller structs (two fewer pointers!) and simpler [debug] code:

Function                                     old     new   delta
irq_execute_cb                                35      34      -1
__igt_breadcrumbs_smoketest                 1684    1682      -2
i915_request_retire                         2003    1996      -7
__i915_request_create                       1047    1040      -7
__notify_execute_cb                          135     126      -9
__i915_request_ctor                          188     178     -10
__await_execution.part.constprop             451     440     -11
igt_wait_request                             924     714    -210

One minor artifact is that the order of cb exection is reversed. No
current use cases are affected by that change.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_request.c | 18 +++++++++---------
 drivers/gpu/drm/i915/i915_request.h |  2 +-
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 8e5511bc0f22..6f8b5794b73c 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -42,7 +42,6 @@
 #include "intel_pm.h"
 
 struct execute_cb {
-	struct list_head link;
 	struct irq_work work;
 	struct i915_sw_fence *fence;
 	void (*hook)(struct i915_request *rq, struct dma_fence *signal);
@@ -179,14 +178,14 @@ static void irq_execute_cb_hook(struct irq_work *wrk)
 
 static void __notify_execute_cb(struct i915_request *rq)
 {
-	struct execute_cb *cb;
+	struct execute_cb *cb, *cn;
 
 	lockdep_assert_held(&rq->lock);
 
-	if (list_empty(&rq->execute_cb))
+	if (llist_empty(&rq->execute_cb))
 		return;
 
-	list_for_each_entry(cb, &rq->execute_cb, link)
+	llist_for_each_entry_safe(cb, cn, rq->execute_cb.first, work.llnode)
 		irq_work_queue(&cb->work);
 
 	/*
@@ -199,7 +198,7 @@ static void __notify_execute_cb(struct i915_request *rq)
 	 * preempt-to-idle cycle on the target engine, all the while the
 	 * master execute_cb may refire.
 	 */
-	INIT_LIST_HEAD(&rq->execute_cb);
+	rq->execute_cb.first = NULL;
 }
 
 static inline void
@@ -317,7 +316,7 @@ bool i915_request_retire(struct i915_request *rq)
 		set_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags);
 		__notify_execute_cb(rq);
 	}
-	GEM_BUG_ON(!list_empty(&rq->execute_cb));
+	GEM_BUG_ON(!llist_empty(&rq->execute_cb));
 	spin_unlock_irq(&rq->lock);
 
 	remove_from_client(rq);
@@ -385,7 +384,8 @@ __await_execution(struct i915_request *rq,
 		i915_sw_fence_complete(cb->fence);
 		kmem_cache_free(global.slab_execute_cbs, cb);
 	} else {
-		list_add_tail(&cb->link, &signal->execute_cb);
+		cb->work.llnode.next = signal->execute_cb.first;
+		signal->execute_cb.first = &cb->work.llnode;
 	}
 	spin_unlock_irq(&signal->lock);
 
@@ -694,7 +694,7 @@ static void __i915_request_ctor(void *arg)
 	rq->file_priv = NULL;
 	rq->capture_list = NULL;
 
-	INIT_LIST_HEAD(&rq->execute_cb);
+	init_llist_head(&rq->execute_cb);
 }
 
 struct i915_request *
@@ -784,7 +784,7 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 	rq->batch = NULL;
 	GEM_BUG_ON(rq->file_priv);
 	GEM_BUG_ON(rq->capture_list);
-	GEM_BUG_ON(!list_empty(&rq->execute_cb));
+	GEM_BUG_ON(!llist_empty(&rq->execute_cb));
 
 	/*
 	 * Reserve space in the ring buffer for all the commands required to
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 8ec7ee4dbadc..5d4709a3dace 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -214,7 +214,7 @@ struct i915_request {
 			ktime_t emitted;
 		} duration;
 	};
-	struct list_head execute_cb;
+	struct llist_head execute_cb;
 	struct i915_sw_fence semaphore;
 
 	/*
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
