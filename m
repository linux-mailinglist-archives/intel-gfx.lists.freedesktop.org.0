Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6927B192914
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 14:01:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2272891E2;
	Wed, 25 Mar 2020 13:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8F1189CD8
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 13:01:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20687225-1500050 
 for multiple; Wed, 25 Mar 2020 13:00:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Mar 2020 13:00:59 +0000
Message-Id: <20200325130059.30600-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Stage the transfer of the virtual
 breadcrumb
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

We move the virtual breadcrumb from one physical engine to the next, if
the next virtual request is scheduled on a new physical engine. Since
the virtual context can only be in one signal queue, we need it to track
the current physical engine for the new breadcrumbs. However, to move
the list we need both breadcrumb locks -- and since we cannot take both
at the same time (unless we are careful and always ensure consistent
ordering) stage the movement of the signaler via the current virtual
request.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1510
Fixes: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index f88d3b95c4e1..2b0923cb0483 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1663,7 +1663,7 @@ static bool virtual_matches(const struct virtual_engine *ve,
 }
 
 static void virtual_xfer_breadcrumbs(struct virtual_engine *ve,
-				     struct intel_engine_cs *engine)
+				     struct i915_request *rq)
 {
 	struct intel_engine_cs *old = ve->siblings[0];
 
@@ -1671,9 +1671,17 @@ static void virtual_xfer_breadcrumbs(struct virtual_engine *ve,
 
 	spin_lock(&old->breadcrumbs.irq_lock);
 	if (!list_empty(&ve->context.signal_link)) {
-		list_move_tail(&ve->context.signal_link,
-			       &engine->breadcrumbs.signalers);
-		intel_engine_signal_breadcrumbs(engine);
+		list_del_init(&ve->context.signal_link);
+
+		/*
+		 * We cannot acquire the new engine->breadcrumbs.irq_lock
+		 * (as we are holding a breadcrumbs.irq_lock already),
+		 * so attach this request to the signaler on submission.
+		 * The queued irq_work will occur when we finally drop
+		 * the engine->active.lock after dequeue.
+		 */
+		set_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags);
+		intel_engine_signal_breadcrumbs(rq->engine);
 	}
 	spin_unlock(&old->breadcrumbs.irq_lock);
 }
@@ -2045,7 +2053,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 									engine);
 
 				if (!list_empty(&ve->context.signals))
-					virtual_xfer_breadcrumbs(ve, engine);
+					virtual_xfer_breadcrumbs(ve, rq);
 
 				/*
 				 * Move the bound engine to the top of the list
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
