Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FB91CD367
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 09:58:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CEC96E279;
	Mon, 11 May 2020 07:58:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B3256E279
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 07:58:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21160786-1500050 
 for multiple; Mon, 11 May 2020 08:57:24 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 May 2020 08:57:04 +0100
Message-Id: <20200511075722.13483-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200511075722.13483-1-chris@chris-wilson.co.uk>
References: <20200511075722.13483-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/20] drm/i915/gt: Couple up old virtual
 breadcrumb on new sibling
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

The second try at staging the transfer of the breadcrumb. In part one,
we realised we could not simply move to the second engine as we were
only holding the breadcrumb lock on the first. So in commit 6c81e21a4742
("drm/i915/gt: Stage the transfer of the virtual breadcrumb"), we
removed it from the first engine and marked up this request to reattach
the signaling on the new engine. However, this failed to take into
account that we only attach the breadcrumb if the new request is added
at the start of the queue, which if we are transferring, it is because
we know there to be a request to be signaled (and hence we would not be
attached). In this second try, we remove from the first list under its
lock, take ownership of the link, and then take the second lock to
complete the transfer.

Fixes: 6c81e21a4742 ("drm/i915/gt: Stage the transfer of the virtual breadcrumb")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index ed45fc40f884..c5591248dafb 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1825,13 +1825,12 @@ static void virtual_xfer_breadcrumbs(struct virtual_engine *ve,
 				     struct i915_request *rq)
 {
 	struct intel_engine_cs *old = ve->siblings[0];
+	bool xfer = false;
 
 	/* All unattached (rq->engine == old) must already be completed */
 
 	spin_lock(&old->breadcrumbs.irq_lock);
 	if (!list_empty(&ve->context.signal_link)) {
-		list_del_init(&ve->context.signal_link);
-
 		/*
 		 * We cannot acquire the new engine->breadcrumbs.irq_lock
 		 * (as we are holding a breadcrumbs.irq_lock already),
@@ -1839,12 +1838,21 @@ static void virtual_xfer_breadcrumbs(struct virtual_engine *ve,
 		 * The queued irq_work will occur when we finally drop
 		 * the engine->active.lock after dequeue.
 		 */
-		set_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags);
+		__list_del_entry(&ve->context.signal_link);
+		xfer = true;
+	}
+	spin_unlock(&old->breadcrumbs.irq_lock);
+
+	if (xfer) {
+		struct intel_breadcrumbs *b = &rq->engine->breadcrumbs;
+
+		spin_lock(&b->irq_lock);
+		list_add_tail(&ve->context.signal_link, &b->signalers);
+		spin_unlock(&b->irq_lock);
 
 		/* Also transfer the pending irq_work for the old breadcrumb. */
 		intel_engine_signal_breadcrumbs(rq->engine);
 	}
-	spin_unlock(&old->breadcrumbs.irq_lock);
 }
 
 #define for_each_waiter(p__, rq__) \
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
