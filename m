Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8D1145321
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 11:53:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18CC26F49C;
	Wed, 22 Jan 2020 10:53:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B54A6F49C
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 10:53:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19968658-1500050 
 for multiple; Wed, 22 Jan 2020 10:53:20 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jan 2020 10:53:19 +0000
Message-Id: <20200122105319.451215-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Hold reference while on
 pqueue
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

Since the introduction of preempt-to-busy, we leave the request on the
HW as we process the preemption request. This means that the request may
complete while it is on the submission queue, and once completed it may
be retired. We assumed that a single reference for the construction to
retirement lifetime would suffice to keep the request alive while it is
on the hardware, but with preempt-to-busy that is no longer the case and
we need to explicitly hold the reference while it is being managed by
execlists.

Reported-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Closes: https://gitlab.freedesktop.org/drm/intel/issues/997
Fixes: 22b7a426bbe1 ("drm/i915/execlists: Preempt-to-busy")
References: b647c7df01b7 ("drm/i915: Fixup preempt-to-busy vs resubmission of a virtual request")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 3a30767ff0c4..f47f55228fee 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -984,6 +984,7 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
 			}
 			GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
 
+			i915_request_get(rq);
 			list_move(&rq->sched.link, pl);
 			set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
 
@@ -2066,6 +2067,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				submit = true;
 				last = rq;
 			}
+			i915_request_put(rq);
 		}
 
 		rb_erase_cached(&p->node, &execlists->queue);
@@ -2735,6 +2737,8 @@ static void execlists_submit_request(struct i915_request *request)
 	struct intel_engine_cs *engine = request->engine;
 	unsigned long flags;
 
+	i915_request_get(request); /* hold a reference for the pqueue */
+
 	/* Will be called from irq-context when using foreign fences. */
 	spin_lock_irqsave(&engine->active.lock, flags);
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
