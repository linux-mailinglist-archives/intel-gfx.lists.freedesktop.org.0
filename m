Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4195814F75F
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Feb 2020 10:31:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B81916EA19;
	Sat,  1 Feb 2020 09:31:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C68F26EA1A
 for <intel-gfx@lists.freedesktop.org>; Sat,  1 Feb 2020 09:31:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20081122-1500050 
 for multiple; Sat, 01 Feb 2020 09:31:23 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  1 Feb 2020 09:31:19 +0000
Message-Id: <20200201093121.3548244-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Initialise basic fence before
 acquiring seqno
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Inside the intel_timeline_get_seqno(), we currently track the retirement
of the old cachelines by listening to the new request. This requires
that the new request is ready to be used and so requires a minimum bit
of initialisation prior to getting the new seqno.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 78a5f5d3c070..f56b046a32de 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -595,6 +595,8 @@ static void __i915_request_ctor(void *arg)
 	i915_sw_fence_init(&rq->submit, submit_notify);
 	i915_sw_fence_init(&rq->semaphore, semaphore_notify);
 
+	dma_fence_init(&rq->fence, &i915_fence_ops, &rq->lock, 0, 0);
+
 	rq->file_priv = NULL;
 	rq->capture_list = NULL;
 
@@ -653,25 +655,30 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 		}
 	}
 
-	ret = intel_timeline_get_seqno(tl, rq, &seqno);
-	if (ret)
-		goto err_free;
-
 	rq->i915 = ce->engine->i915;
 	rq->context = ce;
 	rq->engine = ce->engine;
 	rq->ring = ce->ring;
 	rq->execution_mask = ce->engine->mask;
 
+	kref_init(&rq->fence.refcount);
+	rq->fence.flags = 0;
+	rq->fence.error = 0;
+	INIT_LIST_HEAD(&rq->fence.cb_list);
+
+	ret = intel_timeline_get_seqno(tl, rq, &seqno);
+	if (ret)
+		goto err_free;
+
+	rq->fence.context = tl->fence_context;
+	rq->fence.seqno = seqno;
+
 	RCU_INIT_POINTER(rq->timeline, tl);
 	RCU_INIT_POINTER(rq->hwsp_cacheline, tl->hwsp_cacheline);
 	rq->hwsp_seqno = tl->hwsp_seqno;
 
 	rq->rcustate = get_state_synchronize_rcu(); /* acts as smp_mb() */
 
-	dma_fence_init(&rq->fence, &i915_fence_ops, &rq->lock,
-		       tl->fence_context, seqno);
-
 	/* We bump the ref for the fence chain */
 	i915_sw_fence_reinit(&i915_request_get(rq)->submit);
 	i915_sw_fence_reinit(&i915_request_get(rq)->semaphore);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
