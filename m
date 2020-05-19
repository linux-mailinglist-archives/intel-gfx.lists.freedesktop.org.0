Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6361A1D9787
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 15:20:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE3386E339;
	Tue, 19 May 2020 13:20:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4B8D6E357
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 13:20:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21228635-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 14:20:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 May 2020 14:20:45 +0100
Message-Id: <20200519132046.22443-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519132046.22443-1-chris@chris-wilson.co.uk>
References: <20200519132046.22443-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/3] drm/i915/gt: Kick virtual siblings on
 timeslice out
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

If we decide to timeslice out the current virtual request, we will
unsubmit it while it is still busy (ve->context.inflight == sibling[0]).
If the virtual tasklet and then the other sibling tasklets run before we
completely schedule out the active virtual request for the preemption,
those other tasklets will see that the virtul request is still inflight
on sibling[0] and leave it be. Therefore when we finally schedule-out
the virtual request and if we see that we have passed it back to the
virtual engine, reschedule the virtual tasklet so that it may be
resubmitted on any of the siblings.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index d7ef3f8640d2..7ee89d58258a 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1402,7 +1402,7 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
 	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
 	struct i915_request *next = READ_ONCE(ve->request);
 
-	if (next && next->execution_mask & ~rq->execution_mask)
+	if (next == rq || (next && next->execution_mask & ~rq->execution_mask))
 		tasklet_hi_schedule(&ve->base.execlists.tasklet);
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
