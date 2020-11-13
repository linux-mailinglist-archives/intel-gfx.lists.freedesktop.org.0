Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7042B1896
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 10:42:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0D266E4B7;
	Fri, 13 Nov 2020 09:42:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EB1E6E4AE
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 09:41:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22980356-1500050 
 for multiple; Fri, 13 Nov 2020 09:41:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 09:41:10 +0000
Message-Id: <20201113094128.8740-15-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201113094128.8740-1-chris@chris-wilson.co.uk>
References: <20201113094128.8740-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/33] drm/i915/gt: Move the breadcrumb to the
 signaler if completed upon cancel
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

If while we are cancelling the breadcrumb signaling, we find that the
request is already completed, move it to the irq signaler and let it be
signaled.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index a24cc1ff08a0..f5f6feed0fa6 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -363,6 +363,14 @@ void intel_breadcrumbs_free(struct intel_breadcrumbs *b)
 	kfree(b);
 }
 
+static void irq_signal_request(struct i915_request *rq,
+			       struct intel_breadcrumbs *b)
+{
+	if (__signal_request(rq) &&
+	    llist_add(&rq->signal_node, &b->signaled_requests))
+		irq_work_queue(&b->irq_work);
+}
+
 static void insert_breadcrumb(struct i915_request *rq)
 {
 	struct intel_breadcrumbs *b = READ_ONCE(rq->engine)->breadcrumbs;
@@ -380,9 +388,7 @@ static void insert_breadcrumb(struct i915_request *rq)
 	 * its signal completion.
 	 */
 	if (__request_completed(rq)) {
-		if (__signal_request(rq) &&
-		    llist_add(&rq->signal_node, &b->signaled_requests))
-			irq_work_queue(&b->irq_work);
+		irq_signal_request(rq, b);
 		return;
 	}
 
@@ -453,6 +459,7 @@ bool i915_request_enable_breadcrumb(struct i915_request *rq)
 
 void i915_request_cancel_breadcrumb(struct i915_request *rq)
 {
+	struct intel_breadcrumbs *b = READ_ONCE(rq->engine)->breadcrumbs;
 	struct intel_context *ce = rq->context;
 	bool release;
 
@@ -461,11 +468,16 @@ void i915_request_cancel_breadcrumb(struct i915_request *rq)
 
 	spin_lock(&ce->signal_lock);
 	list_del_rcu(&rq->signal_link);
-	release = remove_signaling_context(rq->engine->breadcrumbs, ce);
+	release = remove_signaling_context(b, ce);
 	spin_unlock(&ce->signal_lock);
 	if (release)
 		intel_context_put(ce);
 
+	if (__request_completed(rq)) {
+		irq_signal_request(rq, b);
+		return;
+	}
+
 	i915_request_put(rq);
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
