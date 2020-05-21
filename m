Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAC71DCEE8
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 16:06:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9942E6E221;
	Thu, 21 May 2020 14:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 752A46E21B
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 14:06:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21248853-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 15:06:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 May 2020 15:06:17 +0100
Message-Id: <20200521140617.30015-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200521140617.30015-1-chris@chris-wilson.co.uk>
References: <20200521140617.30015-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915: Avoid using rq->engine after free
 during i915_fence_release
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

In order to be valid to dereference during the i915_fence_release, after
retiring the fence and releasing its refererences, we assume that
rq->engine can only be a real engine (that stay intact until the device
is shutdown after all fences have been flushed). However, due to a quirk
of preempt-to-busy, we may retire a request that still belongs to a
virtual engine and so eventually free it with rq->engine being invalid.
To avoid dereferencing that invalid engine, we look at the
execution_mask which if it indicates it may be executed on more than one
engine, we know it originated on a virtual engine and may still be on
one.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1906
Fixes: 43acd6516ca9 ("drm/i915: Keep a per-engine request pool")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 35 +++++++++++++++++++++++++++--
 1 file changed, 33 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 526c1e9acbd5..c282719ad3ac 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -121,8 +121,39 @@ static void i915_fence_release(struct dma_fence *fence)
 	i915_sw_fence_fini(&rq->submit);
 	i915_sw_fence_fini(&rq->semaphore);
 
-	/* Keep one request on each engine for reserved use under mempressure */
-	if (!cmpxchg(&rq->engine->request_pool, NULL, rq))
+	/*
+	 * Keep one request on each engine for reserved use under mempressure
+	 *
+	 * We do not hold a reference to the engine here and so have to be
+	 * very careful in what rq->engine we poke. The virtual engine is
+	 * referenced via the rq->context and we released that ref during
+	 * i915_request_retire(), ergo we must not dereference a virtual
+	 * engine here. Not that we would want to, as the only consumer of
+	 * the reserved engine->request_pool is the power management parking,
+	 * which must-not-fail, and that is only run on the physical engines.
+	 *
+	 * Since the request must have been executed to be have completed,
+	 * we know that it will have been processed by the HW and will
+	 * not be unsubmitted again, so rq->engine and rq->execution_mask
+	 * at this point is stable. rq->execution_mask will be a single
+	 * bit if the last and _only_ engine it could execution on was a
+	 * physical engine, if it's multiple bits then it started on and
+	 * could still be on a virtual engine. Thus if the mask is not a
+	 * power-of-two we assume that rq->engine may still be a virtual
+	 * engine and so a dangling invalid pointer that we cannot dereference
+	 *
+	 * For example, consider the flow of a bonded request through a virtual
+	 * engine. The request is created with a wide engine mask (all engines
+	 * that we might execute on). On processing the bond, the request mask
+	 * is reduced to one or more engines. If the request is subsequently
+	 * bound to a single engine, it will then be constrained to only
+	 * execute on that engine and never returned to the virtual engine
+	 * after timeslicing away, see __unwind_incomplete_requests(). Thus we
+	 * know that if the rq->execution_mask is a single bit, rq->engine
+	 * can be a physical engine with the exact corresponding mask.
+	 */
+	if (is_power_of_2(rq->execution_mask) &&
+	    !cmpxchg(&rq->engine->request_pool, NULL, rq))
 		return;
 
 	kmem_cache_free(global.slab_requests, rq);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
