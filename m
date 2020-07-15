Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6CE220A80
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 12:50:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE71A6EAA1;
	Wed, 15 Jul 2020 10:50:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 978686EAA1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 10:50:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21825338-1500050 
 for multiple; Wed, 15 Jul 2020 11:50:05 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 11:50:04 +0100
Message-Id: <20200715105004.17973-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Reduce i915_request.lock contention
 for i915_request_wait
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently, we use i915_request_completed() directly in
i915_request_wait() and follow up with a manual invocation of
dma_fence_signal(). This appears to cause a large number of contentions
on i915_request.lock as when the process is woken up after the fence is
signaled by an interrupt, we will then try and call dma_fence_signal()
ourselves while the signaler is still holding the lock.
dma_fence_is_signaled() has the benefit of checking the
DMA_FENCE_FLAG_SIGNALED_BIT prior to calling dma_fence_signal() and so
avoids most of that contention.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 0b2fe55e6194..bb4eb1a8780e 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1640,7 +1640,7 @@ static bool busywait_stop(unsigned long timeout, unsigned int cpu)
 	return this_cpu != cpu;
 }
 
-static bool __i915_spin_request(const struct i915_request * const rq, int state)
+static bool __i915_spin_request(struct i915_request * const rq, int state)
 {
 	unsigned long timeout_ns;
 	unsigned int cpu;
@@ -1673,7 +1673,7 @@ static bool __i915_spin_request(const struct i915_request * const rq, int state)
 	timeout_ns = READ_ONCE(rq->engine->props.max_busywait_duration_ns);
 	timeout_ns += local_clock_ns(&cpu);
 	do {
-		if (i915_request_completed(rq))
+		if (dma_fence_is_signaled(&rq->fence))
 			return true;
 
 		if (signal_pending_state(state, current))
@@ -1766,10 +1766,8 @@ long i915_request_wait(struct i915_request *rq,
 	 * duration, which we currently lack.
 	 */
 	if (IS_ACTIVE(CONFIG_DRM_I915_MAX_REQUEST_BUSYWAIT) &&
-	    __i915_spin_request(rq, state)) {
-		dma_fence_signal(&rq->fence);
+	    __i915_spin_request(rq, state))
 		goto out;
-	}
 
 	/*
 	 * This client is about to stall waiting for the GPU. In many cases
@@ -1796,10 +1794,8 @@ long i915_request_wait(struct i915_request *rq,
 	for (;;) {
 		set_current_state(state);
 
-		if (i915_request_completed(rq)) {
-			dma_fence_signal(&rq->fence);
+		if (dma_fence_is_signaled(&rq->fence))
 			break;
-		}
 
 		intel_engine_flush_submission(rq->engine);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
