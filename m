Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F11DD2EB773
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 02:09:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76B9789C1B;
	Wed,  6 Jan 2021 01:09:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BA9089C1B
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 01:09:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23513049-1500050 
 for multiple; Wed, 06 Jan 2021 01:09:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Jan 2021 01:09:40 +0000
Message-Id: <20210106010940.12070-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Restore ce->signal flush before
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
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

v2: Generalise and cancel all remaining ce->signals

Fixes: bab0557c8dca ("drm/i915/gt: Remove virtual breadcrumb before transfer")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   | 33 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.h   |  4 +++
 .../drm/i915/gt/intel_execlists_submission.c  | 25 ++++++--------
 3 files changed, 47 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 2eabb9ab5d47..7137b6f24f55 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -472,6 +472,39 @@ void i915_request_cancel_breadcrumb(struct i915_request *rq)
 	i915_request_put(rq);
 }
 
+void intel_context_remove_breadcrumbs(struct intel_context *ce,
+				      struct intel_breadcrumbs *b)
+{
+	struct i915_request *rq, *rn;
+	bool release = false;
+	unsigned long flags;
+
+	spin_lock_irqsave(&ce->signal_lock, flags);
+
+	if (list_empty(&ce->signals))
+		goto unlock;
+
+	list_for_each_entry_safe(rq, rn, &ce->signals, signal_link) {
+		GEM_BUG_ON(!__i915_request_is_complete(rq));
+		if (!test_and_clear_bit(I915_FENCE_FLAG_SIGNAL,
+					&rq->fence.flags))
+			continue;
+
+		list_del_rcu(&rq->signal_link);
+		irq_signal_request(rq, b);
+		i915_request_put(rq);
+	}
+	release = remove_signaling_context(b, ce);
+
+unlock:
+	spin_unlock_irqrestore(&ce->signal_lock, flags);
+	if (release)
+		intel_context_put(ce);
+
+	while (atomic_read(&b->signaler_active))
+		cpu_relax();
+}
+
 static void print_signals(struct intel_breadcrumbs *b, struct drm_printer *p)
 {
 	struct intel_context *ce;
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h
index 75cc9cff3ae3..3ce5ce270b04 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h
@@ -6,6 +6,7 @@
 #ifndef __INTEL_BREADCRUMBS__
 #define __INTEL_BREADCRUMBS__
 
+#include <linux/atomic.h>
 #include <linux/irq_work.h>
 
 #include "intel_engine_types.h"
@@ -44,4 +45,7 @@ void intel_engine_print_breadcrumbs(struct intel_engine_cs *engine,
 bool i915_request_enable_breadcrumb(struct i915_request *request);
 void i915_request_cancel_breadcrumb(struct i915_request *request);
 
+void intel_context_remove_breadcrumbs(struct intel_context *ce,
+				      struct intel_breadcrumbs *b);
+
 #endif /* __INTEL_BREADCRUMBS__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index a5b442683c18..ba3114fd4389 100644
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
@@ -610,6 +595,16 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
 	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
 	struct intel_engine_cs *engine = rq->engine;
 
+	/*
+	 * After this point, the rq may be transferred to a new sibling, so
+	 * before we clear ce->inflight make sure that the context has been
+	 * removed from the b->signalers and furthermore we need to make sure
+	 * that the concurrent iterator in signal_irq_work is no longer
+	 * following ce->signal_link.
+	 */
+	if (!list_empty(&ce->signals))
+		intel_context_remove_breadcrumbs(ce, engine->breadcrumbs);
+
 	/*
 	 * This engine is now too busy to run this virtual request, so
 	 * see if we can find an alternative engine for it to execute on.
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
