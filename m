Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8572E21D694
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 15:17:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64746E4EA;
	Mon, 13 Jul 2020 13:17:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA47F6E4EA
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 13:17:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21803854-1500050 
 for multiple; Mon, 13 Jul 2020 14:17:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jul 2020 14:17:38 +0100
Message-Id: <20200713131738.21319-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200713131617.21175-1-chris@chris-wilson.co.uk>
References: <20200713131617.21175-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Skip signaling a signaled request
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
Cc: "Nayana, Venkata Ramana" <venkata.ramana.nayana@intel.com>,
 stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Preempt-to-busy introduces various fascinating complications in that the
requests may complete as we are unsubmitting them from HW. As they may
then signal after unsubmission, we may find ourselves having to cleanup
the signaling request from within the signaling callback. This causes us
to recurse onto the same i915_request.lock.

However, if the request is already signaled (as it will be before we
enter the signal callbacks), we know we can skip the signaling of that
request during submission, neatly evading the spinlock recursion.

unsubmit(ve.rq0) # timeslice expiration or other preemption
 -> virtual_submit_request(ve.rq0)
dma_fence_signal(ve.rq0) # request completed before preemption ack
 -> submit_notify(ve.rq1)
   -> virtual_submit_request(ve.rq1) # sees that we have completed ve.rq0
      -> __i915_request_submit(ve.rq0)

[  264.210142] BUG: spinlock recursion on CPU#2, sample_multi_tr/2093
[  264.210150]  lock: 0xffff9efd6ac55080, .magic: dead4ead, .owner: sample_multi_tr/2093, .owner_cpu: 2
[  264.210155] CPU: 2 PID: 2093 Comm: sample_multi_tr Tainted: G     U
[  264.210158] Hardware name: Intel Corporation CoffeeLake Client Platform/CoffeeLake S UDIMM RVP, BIOS CNLSFWR1.R00.X212.B01.1909060036 09/06/2019
[  264.210160] Call Trace:
[  264.210167]  dump_stack+0x98/0xda
[  264.210174]  spin_dump.cold+0x24/0x3c
[  264.210178]  do_raw_spin_lock+0x9a/0xd0
[  264.210184]  _raw_spin_lock_nested+0x6a/0x70
[  264.210314]  __i915_request_submit+0x10a/0x3c0 [i915]
[  264.210415]  virtual_submit_request+0x9b/0x380 [i915]
[  264.210516]  submit_notify+0xaf/0x14c [i915]
[  264.210602]  __i915_sw_fence_complete+0x8a/0x230 [i915]
[  264.210692]  i915_sw_fence_complete+0x2d/0x40 [i915]
[  264.210762]  __dma_i915_sw_fence_wake+0x19/0x30 [i915]
[  264.210767]  dma_fence_signal_locked+0xb1/0x1c0
[  264.210772]  dma_fence_signal+0x29/0x50
[  264.210871]  i915_request_wait+0x5cb/0x830 [i915]
[  264.210876]  ? dma_resv_get_fences_rcu+0x294/0x5d0
[  264.210974]  i915_gem_object_wait_fence+0x2f/0x40 [i915]
[  264.211084]  i915_gem_object_wait+0xce/0x400 [i915]
[  264.211178]  i915_gem_wait_ioctl+0xff/0x290 [i915]

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Fixes: 22b7a426bbe1 ("drm/i915/execlists: Preempt-to-busy")
References: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: "Nayana, Venkata Ramana" <venkata.ramana.nayana@intel.com>
Cc: <stable@vger.kernel.org> # v5.4+
---
 drivers/gpu/drm/i915/i915_request.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 3bb7320249ae..9b74a1bea5db 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -560,9 +560,7 @@ bool __i915_request_submit(struct i915_request *request)
 	engine->serial++;
 	result = true;
 
-xfer:	/* We may be recursing from the signal callback of another i915 fence */
-	spin_lock_nested(&request->lock, SINGLE_DEPTH_NESTING);
-
+xfer:
 	if (!test_and_set_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags)) {
 		list_move_tail(&request->sched.link, &engine->active.requests);
 		clear_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
@@ -570,12 +568,19 @@ bool __i915_request_submit(struct i915_request *request)
 	}
 	GEM_BUG_ON(!llist_empty(&request->execute_cb));
 
-	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags) &&
-	    !test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &request->fence.flags) &&
-	    !i915_request_enable_breadcrumb(request))
-		intel_engine_signal_breadcrumbs(engine);
+	/* We may be recursing from the signal callback of another i915 fence */
+	if (!i915_request_signaled(request)) {
+		spin_lock_nested(&request->lock, SINGLE_DEPTH_NESTING);
+
+		if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
+			     &request->fence.flags) &&
+		    !test_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
+			      &request->fence.flags) &&
+		    !i915_request_enable_breadcrumb(request))
+			intel_engine_signal_breadcrumbs(engine);
 
-	spin_unlock(&request->lock);
+		spin_unlock(&request->lock);
+	}
 
 	return result;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
