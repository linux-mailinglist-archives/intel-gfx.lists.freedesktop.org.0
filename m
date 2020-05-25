Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAFA1E0843
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 09:54:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B80196E03C;
	Mon, 25 May 2020 07:54:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92911899F3
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2020 07:53:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21284200-1500050 
 for multiple; Mon, 25 May 2020 08:53:46 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 May 2020 08:53:40 +0100
Message-Id: <20200525075347.582-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200525075347.582-1-chris@chris-wilson.co.uk>
References: <20200525075347.582-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/12] drm/i915: Improve execute_cb struct
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
index c282719ad3ac..22df5b229aed 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -42,7 +42,6 @@
 #include "intel_pm.h"
 
 struct execute_cb {
-	struct list_head link;
 	struct irq_work work;
 	struct i915_sw_fence *fence;
 	void (*hook)(struct i915_request *rq, struct dma_fence *signal);
@@ -189,14 +188,14 @@ static void irq_execute_cb_hook(struct irq_work *wrk)
 
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
@@ -209,7 +208,7 @@ static void __notify_execute_cb(struct i915_request *rq)
 	 * preempt-to-idle cycle on the target engine, all the while the
 	 * master execute_cb may refire.
 	 */
-	INIT_LIST_HEAD(&rq->execute_cb);
+	rq->execute_cb.first = NULL;
 }
 
 static inline void
@@ -327,7 +326,7 @@ bool i915_request_retire(struct i915_request *rq)
 		set_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags);
 		__notify_execute_cb(rq);
 	}
-	GEM_BUG_ON(!list_empty(&rq->execute_cb));
+	GEM_BUG_ON(!llist_empty(&rq->execute_cb));
 	spin_unlock_irq(&rq->lock);
 
 	remove_from_client(rq);
@@ -395,7 +394,8 @@ __await_execution(struct i915_request *rq,
 		i915_sw_fence_complete(cb->fence);
 		kmem_cache_free(global.slab_execute_cbs, cb);
 	} else {
-		list_add_tail(&cb->link, &signal->execute_cb);
+		cb->work.llnode.next = signal->execute_cb.first;
+		signal->execute_cb.first = &cb->work.llnode;
 	}
 	spin_unlock_irq(&signal->lock);
 
@@ -704,7 +704,7 @@ static void __i915_request_ctor(void *arg)
 	rq->file_priv = NULL;
 	rq->capture_list = NULL;
 
-	INIT_LIST_HEAD(&rq->execute_cb);
+	init_llist_head(&rq->execute_cb);
 }
 
 struct i915_request *
@@ -794,7 +794,7 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
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
