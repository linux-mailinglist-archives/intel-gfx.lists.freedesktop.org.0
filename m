Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0668423A291
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 12:11:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 735686E22B;
	Mon,  3 Aug 2020 10:11:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C5036E22C
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Aug 2020 10:11:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22015632-1500050 
 for multiple; Mon, 03 Aug 2020 11:11:33 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Aug 2020 11:11:29 +0100
Message-Id: <20200803101133.4529-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200803101133.4529-1-chris@chris-wilson.co.uk>
References: <20200803101133.4529-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/gt: Free stale request on
 destroying the virtual engine
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

Since preempt-to-busy, we may unsubmit a request while it is still on
the HW and completes asynchronously. That means it may be retired and in
the process destroy the virtual engine (as the user has closed their
context), but that engine may still be holding onto the unsubmitted
compelted request. Therefore we need to potentially cleanup the old
request on destroying the virtual engine. We also have to keep the
virtual_engine alive until after the sibling's execlists_dequeue() have
finished peeking into the virtual engines, for which we serialise with
RCU.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 22 +++++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 417f6b0c6c61..cb04bc5474be 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -180,6 +180,7 @@
 #define EXECLISTS_REQUEST_SIZE 64 /* bytes */
 
 struct virtual_engine {
+	struct rcu_head rcu;
 	struct intel_engine_cs base;
 	struct intel_context context;
 
@@ -5393,10 +5394,25 @@ static void virtual_context_destroy(struct kref *kref)
 		container_of(kref, typeof(*ve), context.ref);
 	unsigned int n;
 
-	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
-	GEM_BUG_ON(ve->request);
 	GEM_BUG_ON(ve->context.inflight);
 
+	if (unlikely(ve->request)) {
+		struct i915_request *old;
+		unsigned long flags;
+
+		spin_lock_irqsave(&ve->base.active.lock, flags);
+
+		old = fetch_and_zero(&ve->request);
+		if (old) {
+			GEM_BUG_ON(!i915_request_completed(old));
+			__i915_request_submit(old);
+			i915_request_put(old);
+		}
+
+		spin_unlock_irqrestore(&ve->base.active.lock, flags);
+	}
+	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
+
 	for (n = 0; n < ve->num_siblings; n++) {
 		struct intel_engine_cs *sibling = ve->siblings[n];
 		struct rb_node *node = &ve->nodes[sibling->id].rb;
@@ -5422,7 +5438,7 @@ static void virtual_context_destroy(struct kref *kref)
 	intel_engine_free_request_pool(&ve->base);
 
 	kfree(ve->bonds);
-	kfree(ve);
+	kfree_rcu(ve, rcu);
 }
 
 static void virtual_engine_initial_hint(struct virtual_engine *ve)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
