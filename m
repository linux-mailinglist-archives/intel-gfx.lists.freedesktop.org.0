Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6834F222183
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 13:34:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A605A6E1BB;
	Thu, 16 Jul 2020 11:34:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25EAA6E196
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 11:34:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21837458-1500050 
 for multiple; Thu, 16 Jul 2020 12:33:58 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 12:33:56 +0100
Message-Id: <20200716113357.7644-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200716113357.7644-1-chris@chris-wilson.co.uk>
References: <20200716113357.7644-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/gt: Drop
 intel_engine_transfer_stale_breadcrumbs
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

Now that we have serialised the request retirement's decoupling of the
breadcrumb from the engine with the request signaling, we know that
there should never be a stale breadcrumb attached to an unbound virtual
engine. We can now remove the fixup code that had to migrate the
breadcrumbs along with the virtual engine, from one sibling to the next.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c  | 29 --------------------
 drivers/gpu/drm/i915/gt/intel_engine.h       |  3 --
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  2 --
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 15 ----------
 4 files changed, 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index a0f52417238c..164662ae130b 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -167,8 +167,6 @@ static void signal_irq_work(struct irq_work *work)
 	if (b->irq_armed && list_empty(&b->signalers))
 		__intel_breadcrumbs_disarm_irq(b);
 
-	list_splice_init(&b->signaled_requests, &signal);
-
 	list_for_each_entry_safe(ce, cn, &b->signalers, signal_link) {
 		GEM_BUG_ON(list_empty(&ce->signals));
 
@@ -258,7 +256,6 @@ void intel_engine_init_breadcrumbs(struct intel_engine_cs *engine)
 
 	spin_lock_init(&b->irq_lock);
 	INIT_LIST_HEAD(&b->signalers);
-	INIT_LIST_HEAD(&b->signaled_requests);
 
 	init_irq_work(&b->irq_work, signal_irq_work);
 }
@@ -278,32 +275,6 @@ void intel_engine_reset_breadcrumbs(struct intel_engine_cs *engine)
 	spin_unlock_irqrestore(&b->irq_lock, flags);
 }
 
-void intel_engine_transfer_stale_breadcrumbs(struct intel_engine_cs *engine,
-					     struct intel_context *ce)
-{
-	struct intel_breadcrumbs *b = &engine->breadcrumbs;
-	unsigned long flags;
-
-	spin_lock_irqsave(&b->irq_lock, flags);
-	if (!list_empty(&ce->signals)) {
-		struct i915_request *rq, *next;
-
-		/* Queue for executing the signal callbacks in the irq_work */
-		list_for_each_entry_safe(rq, next, &ce->signals, signal_link) {
-			GEM_BUG_ON(rq->engine != engine);
-			GEM_BUG_ON(!__request_completed(rq));
-
-			__signal_request(rq, &b->signaled_requests);
-		}
-
-		INIT_LIST_HEAD(&ce->signals);
-		list_del_init(&ce->signal_link);
-
-		irq_work_queue(&b->irq_work);
-	}
-	spin_unlock_irqrestore(&b->irq_lock, flags);
-}
-
 void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine)
 {
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index a9249a23903a..faf00a353e25 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -237,9 +237,6 @@ intel_engine_signal_breadcrumbs(struct intel_engine_cs *engine)
 void intel_engine_reset_breadcrumbs(struct intel_engine_cs *engine);
 void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine);
 
-void intel_engine_transfer_stale_breadcrumbs(struct intel_engine_cs *engine,
-					     struct intel_context *ce);
-
 void intel_engine_print_breadcrumbs(struct intel_engine_cs *engine,
 				    struct drm_printer *p);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 8de92fd7d392..e0a2ceac729f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -393,8 +393,6 @@ struct intel_engine_cs {
 		spinlock_t irq_lock;
 		struct list_head signalers;
 
-		struct list_head signaled_requests;
-
 		struct irq_work irq_work; /* for use from inside irq_lock */
 
 		unsigned int irq_enabled;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 21c16e31c4fe..88a5c155154d 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1805,18 +1805,6 @@ static bool virtual_matches(const struct virtual_engine *ve,
 	return true;
 }
 
-static void virtual_xfer_breadcrumbs(struct virtual_engine *ve)
-{
-	/*
-	 * All the outstanding signals on ve->siblings[0] must have
-	 * been completed, just pending the interrupt handler. As those
-	 * signals still refer to the old sibling (via rq->engine), we must
-	 * transfer those to the old irq_worker to keep our locking
-	 * consistent.
-	 */
-	intel_engine_transfer_stale_breadcrumbs(ve->siblings[0], &ve->context);
-}
-
 #define for_each_waiter(p__, rq__) \
 	list_for_each_entry_lockless(p__, \
 				     &(rq__)->sched.waiters_list, \
@@ -2275,9 +2263,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 					virtual_update_register_offsets(regs,
 									engine);
 
-				if (!list_empty(&ve->context.signals))
-					virtual_xfer_breadcrumbs(ve);
-
 				/*
 				 * Move the bound engine to the top of the list
 				 * for future execution. We then kick this
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
