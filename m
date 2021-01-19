Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBE22FBC44
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 17:22:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14FFC6E427;
	Tue, 19 Jan 2021 16:22:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4CDA6E422
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 16:22:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23641188-1500050 
 for multiple; Tue, 19 Jan 2021 16:20:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jan 2021 16:20:57 +0000
Message-Id: <20210119162057.31097-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Close race between
 enable_breadcrumbs and cancel_breadcrumbs
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If we enable_breadcrumbs for a request while that request is being
removed from HW; we may see that the request is active as we take the
ce->signal_lock and proceed to attach the request to ce->signals.
However, during unsubmission after marking the request as inactive, we
see that the request has not yet been added to ce->signals and so skip
the removal. Pull the check during cancel_breadcrumbs under the same
spinlock as enabling so that we the two tests are consistent in
enable/cancel.

Otherwise, we may insert a request onto ce->signal that we expect should
not be there:

  intel_context_remove_breadcrumbs:488 GEM_BUG_ON(!__i915_request_is_complete(rq))

While updating, we can note that we are always called with
irqs-disabled, due to the engine->active.lock being held at the single
caller, and so remove the irqsave/restore.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2931
Fixes: c18636f76344 ("drm/i915: Remove requirement for holding i915_request.lock for breadcrumbs")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: <stable@vger.kernel.org> # v5.10+
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index d098fc0c14ec..34a645d6babd 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -453,16 +453,17 @@ void i915_request_cancel_breadcrumb(struct i915_request *rq)
 {
 	struct intel_breadcrumbs *b = READ_ONCE(rq->engine)->breadcrumbs;
 	struct intel_context *ce = rq->context;
-	unsigned long flags;
 	bool release;
 
-	if (!test_and_clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
+	spin_lock(&ce->signal_lock);
+	if (!test_and_clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags)) {
+		spin_unlock(&ce->signal_lock);
 		return;
+	}
 
-	spin_lock_irqsave(&ce->signal_lock, flags);
 	list_del_rcu(&rq->signal_link);
 	release = remove_signaling_context(b, ce);
-	spin_unlock_irqrestore(&ce->signal_lock, flags);
+	spin_unlock(&ce->signal_lock);
 	if (release)
 		intel_context_put(ce);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
