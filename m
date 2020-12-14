Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5CC2D95E6
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:10:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D269A6E2C8;
	Mon, 14 Dec 2020 10:10:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 250446E161
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 10:10:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23317776-1500050 
 for multiple; Mon, 14 Dec 2020 10:09:50 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 10:08:48 +0000
Message-Id: <20201214100949.11387-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214100949.11387-1-chris@chris-wilson.co.uk>
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/69] drm/i915/gt: Remove virtual breadcrumb
 before transfer
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

The issue with stale virtual breadcrumbs remain. Now we have the problem
that if the irq-signaler is still referencing the stale breadcrumb as we
transfer it to a new sibling, the list becomes spaghetti. This is a very
small window, but that doesn't stop it being hit infrequently. To
prevent the lists being tangled (the iterator starting on one engine's
b->signalers but walking onto another list), always decouple the virtual
breadcrumb on schedule-out and make sure that the walker has stepped out
of the lists.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c       |  5 +++--
 .../gpu/drm/i915/gt/intel_execlists_submission.c  | 15 +++++++++++++++
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 00918300f53f..63900edbde88 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -454,15 +454,16 @@ void i915_request_cancel_breadcrumb(struct i915_request *rq)
 {
 	struct intel_breadcrumbs *b = READ_ONCE(rq->engine)->breadcrumbs;
 	struct intel_context *ce = rq->context;
+	unsigned long flags;
 	bool release;
 
 	if (!test_and_clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
 		return;
 
-	spin_lock(&ce->signal_lock);
+	spin_lock_irqsave(&ce->signal_lock, flags);
 	list_del_rcu(&rq->signal_link);
 	release = remove_signaling_context(b, ce);
-	spin_unlock(&ce->signal_lock);
+	spin_unlock_irqrestore(&ce->signal_lock, flags);
 	if (release)
 		intel_context_put(ce);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index d278c4445496..192ec4041d7a 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -1359,6 +1359,21 @@ static inline void execlists_schedule_in(struct i915_request *rq, int idx)
 static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
 {
 	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
+	struct intel_engine_cs *engine = rq->engine;
+
+	/* Flush concurrent rcu iterators in signal_irq_work */
+	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags)) {
+		/*
+		 * After this point, the rq may be transferred to a new
+		 * sibling, so before we clear ce->inflight make sure that
+		 * the context has been removed from the b->signalers and
+		 * furthermore we need to make sure that the concurrent
+		 * iterator in signal_irq_work is no longer following
+		 * ce->signal_link.
+		 */
+		i915_request_cancel_breadcrumb(rq);
+		irq_work_sync(&engine->breadcrumbs->irq_work);
+	}
 
 	if (READ_ONCE(ve->request))
 		tasklet_hi_schedule(&ve->base.execlists.tasklet);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
