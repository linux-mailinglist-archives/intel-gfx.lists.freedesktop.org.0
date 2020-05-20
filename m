Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4119B1DACB9
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 09:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 313096E7D5;
	Wed, 20 May 2020 07:55:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 440DC6E5BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 07:55:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21236575-1500050 
 for multiple; Wed, 20 May 2020 08:55:05 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 08:54:44 +0100
Message-Id: <20200520075503.10388-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200520075503.10388-1-chris@chris-wilson.co.uk>
References: <20200520075503.10388-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/22] drm/i915: Avoid using rq->engine after
 free during i915_fence_release
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
---
 drivers/gpu/drm/i915/i915_request.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 526c1e9acbd5..6e357183bece 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -121,8 +121,29 @@ static void i915_fence_release(struct dma_fence *fence)
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
+	 * the reserved engine->request_pool is the powermanagent parking,
+	 * which must-not-fail, and that is only run on the physical engines.
+	 *
+	 * Since the request must have been executed to be have completed,
+	 * we know that it will have been processed by the HW and will
+	 * not be unsubmitted again, so rq->engine and rq->execution_mask
+	 * at this point is stable. rq->execution_mask will be a single
+	 * bit if the last and only engine it could execution on was a
+	 * physical engine, if it's multiple bits then it started on and
+	 * could still be on a virtual engine. Thus if the mask is not a
+	 * power-of-two we assume that rq->engine may still be a virtual
+	 * engien and so a dangling invalid pointer that we cannot dereference
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
