Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FD52EA84B
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 11:13:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4878F89EB4;
	Tue,  5 Jan 2021 10:13:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 028E389565
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 10:13:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23505091-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Jan 2021 10:13:08 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 10:13:09 +0000
Message-Id: <20210105101309.10881-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Restore ce->signal flush before
 releasing virtual engine
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

Before we mark the virtual engine as no longer inflight, flush any
ongoing signaling that may be using the ce->signal_link along the
previous breadcrumbs. On switch to a new physical engine, that link will
be inserted into the new set of breadcrumbs, causing confusion to an
ongoing iterator.

This patch undoes a last minute mistake introduced into commit
bab0557c8dca ("drm/i915/gt: Remove virtual breadcrumb before transfer"),
whereby instead of unconditionally applying the flush, it was only
applied if the request itself was going to be reused.

v2: Cancel all remaining ce->signals

Fixes: bab0557c8dca ("drm/i915/gt: Remove virtual breadcrumb before transfer")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   | 30 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.h   | 11 +++++++
 .../drm/i915/gt/intel_execlists_submission.c  | 29 +++++++++---------
 3 files changed, 55 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 2eabb9ab5d47..19d34c559e22 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -472,6 +472,36 @@ void i915_request_cancel_breadcrumb(struct i915_request *rq)
 	i915_request_put(rq);
 }
 
+bool intel_context_remove_breadcrumbs(struct intel_context *ce,
+				      struct intel_breadcrumbs *b)
+{
+       struct i915_request *rq, *rn;
+       unsigned long flags;
+       bool release;
+
+       if (list_empty(&ce->signals))
+               return false;
+
+       spin_lock_irqsave(&ce->signal_lock, flags);
+       list_for_each_entry_safe(rq, rn, &ce->signals, signal_link) {
+               GEM_BUG_ON(!__i915_request_is_complete(rq));
+               if (!test_and_clear_bit(I915_FENCE_FLAG_SIGNAL,
+                                       &rq->fence.flags))
+                       continue;
+
+               list_del_rcu(&rq->signal_link);
+               irq_signal_request(rq, b);
+               i915_request_put(rq);
+       }
+
+       release = remove_signaling_context(b, ce);
+       spin_unlock_irqrestore(&ce->signal_lock, flags);
+       if (release)
+               intel_context_put(ce);
+
+       return true;
+}
+
 static void print_signals(struct intel_breadcrumbs *b, struct drm_printer *p)
 {
 	struct intel_context *ce;
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h
index 75cc9cff3ae3..5a44a56529bc 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h
@@ -6,6 +6,7 @@
 #ifndef __INTEL_BREADCRUMBS__
 #define __INTEL_BREADCRUMBS__
 
+#include <linux/atomic.h>
 #include <linux/irq_work.h>
 
 #include "intel_engine_types.h"
@@ -44,4 +45,14 @@ void intel_engine_print_breadcrumbs(struct intel_engine_cs *engine,
 bool i915_request_enable_breadcrumb(struct i915_request *request);
 void i915_request_cancel_breadcrumb(struct i915_request *request);
 
+bool intel_context_remove_breadcrumbs(struct intel_context *ce,
+				      struct intel_breadcrumbs *b);
+
+static inline void
+intel_breadcrumbs_flush_signals(struct intel_breadcrumbs *b)
+{
+	while (atomic_read(&b->signaler_active))
+		cpu_relax();
+}
+
 #endif /* __INTEL_BREADCRUMBS__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index a5b442683c18..b8fe96957691 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -581,21 +581,6 @@ resubmit_virtual_request(struct i915_request *rq, struct virtual_engine *ve)
 {
 	struct intel_engine_cs *engine = rq->engine;
 
-	/* Flush concurrent rcu iterators in signal_irq_work */
-	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags)) {
-		/*
-		 * After this point, the rq may be transferred to a new
-		 * sibling, so before we clear ce->inflight make sure that
-		 * the context has been removed from the b->signalers and
-		 * furthermore we need to make sure that the concurrent
-		 * iterator in signal_irq_work is no longer following
-		 * ce->signal_link.
-		 */
-		i915_request_cancel_breadcrumb(rq);
-		while (atomic_read(&engine->breadcrumbs->signaler_active))
-			cpu_relax();
-	}
-
 	spin_lock_irq(&engine->active.lock);
 
 	clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
@@ -609,6 +594,16 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
 {
 	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
 	struct intel_engine_cs *engine = rq->engine;
+	bool signals;
+
+	/*
+	 * After this point, the rq may be transferred to a new sibling, so
+	 * before we clear ce->inflight make sure that the context has been
+	 * removed from the b->signalers and furthermore we need to make sure
+	 * that the concurrent iterator in signal_irq_work is no longer
+	 * following ce->signal_link.
+	 */
+	signals = intel_context_remove_breadcrumbs(ce, engine->breadcrumbs);
 
 	/*
 	 * This engine is now too busy to run this virtual request, so
@@ -622,6 +617,10 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
 
 	if (READ_ONCE(ve->request))
 		tasklet_hi_schedule(&ve->base.execlists.tasklet);
+
+	/* Flush concurrent signal_irq_work before we reuse the link */
+	if (signals)
+		intel_breadcrumbs_flush_signals(engine->breadcrumbs);
 }
 
 static inline void __execlists_schedule_out(struct i915_request *rq)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
