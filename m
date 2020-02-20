Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2AD165DA9
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 13:36:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59A0B6E20B;
	Thu, 20 Feb 2020 12:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CC496ED64
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 12:36:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20287808-1500050 
 for multiple; Thu, 20 Feb 2020 12:36:10 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Feb 2020 12:36:08 +0000
Message-Id: <20200220123608.1666271-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200220123608.1666271-1-chris@chris-wilson.co.uk>
References: <20200220123608.1666271-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Protect i915_request_await_start
 from early waits
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We need to be extremely careful inside i915_request_await_start() as it
needs to walk the list of requests in the foreign timeline with very
little protection. As we hold our own timeline mutex, we can not nest
inside the signaler's timeline mutex, so all that remains is our RCU
protection. However, to be safe we need to tell the compiler that we may
be traversing the list only under RCU protection, and furthermore we
need to start declaring requests as elements of the timeline from their
construction.

Fixes: 9ddc8ec027a3 ("drm/i915: Eliminate the trylock for awaiting an earlier request")
Fixes: 6a79d848403d ("drm/i915: Lock signaler timeline while navigating")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_request.c | 43 ++++++++++++++++++++---------
 1 file changed, 30 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index d53af93b919b..28f135ebeaa0 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -290,7 +290,7 @@ bool i915_request_retire(struct i915_request *rq)
 	spin_unlock_irq(&rq->lock);
 
 	remove_from_client(rq);
-	list_del(&rq->link);
+	list_del_rcu(&rq->link);
 
 	intel_context_exit(rq->context);
 	intel_context_unpin(rq->context);
@@ -736,6 +736,8 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 	rq->infix = rq->ring->emit; /* end of header; start of user payload */
 
 	intel_context_mark_active(ce);
+	list_add_tail_rcu(&rq->link, &tl->requests);
+
 	return rq;
 
 err_unwind:
@@ -792,13 +794,21 @@ i915_request_await_start(struct i915_request *rq, struct i915_request *signal)
 	GEM_BUG_ON(i915_request_timeline(rq) ==
 		   rcu_access_pointer(signal->timeline));
 
+	if (i915_request_started(signal))
+		return 0;
+
 	fence = NULL;
 	rcu_read_lock();
 	spin_lock_irq(&signal->lock);
-	if (!i915_request_started(signal) &&
-	    !list_is_first(&signal->link,
-			   &rcu_dereference(signal->timeline)->requests)) {
-		struct i915_request *prev = list_prev_entry(signal, link);
+	do {
+		struct list_head *pos = READ_ONCE(signal->link.prev);
+		struct i915_request *prev;
+
+		if (i915_request_started(signal))
+			break;
+
+		if (pos == &rcu_dereference(signal->timeline)->requests)
+			break;
 
 		/*
 		 * Peek at the request before us in the timeline. That
@@ -806,13 +816,22 @@ i915_request_await_start(struct i915_request *rq, struct i915_request *signal)
 		 * after acquiring a reference to it, confirm that it is
 		 * still part of the signaler's timeline.
 		 */
-		if (i915_request_get_rcu(prev)) {
-			if (list_next_entry(prev, link) == signal)
-				fence = &prev->fence;
-			else
-				i915_request_put(prev);
+		prev = list_entry(pos, typeof(*prev), link);
+		if (!i915_request_get_rcu(prev))
+			break;
+
+		if (i915_request_completed(prev)) {
+			i915_request_put(prev);
+			break;
 		}
-	}
+
+		if (READ_ONCE(prev->link.next) != &signal->link) {
+			i915_request_put(prev);
+			break;
+		}
+
+		fence = &prev->fence;
+	} while (0);
 	spin_unlock_irq(&signal->lock);
 	rcu_read_unlock();
 	if (!fence)
@@ -1253,8 +1272,6 @@ __i915_request_add_to_timeline(struct i915_request *rq)
 							 0);
 	}
 
-	list_add_tail(&rq->link, &timeline->requests);
-
 	/*
 	 * Make sure that no request gazumped us - if it was allocated after
 	 * our i915_request_alloc() and called __i915_request_add() before
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
