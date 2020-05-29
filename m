Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F02461E7A5B
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 12:18:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 999BE6E8B6;
	Fri, 29 May 2020 10:18:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B73CD6E8B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 10:18:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21332503-1500050 
 for multiple; Fri, 29 May 2020 11:17:23 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 May 2020 11:17:23 +0100
Message-Id: <20200529101723.10691-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529085809.23691-2-chris@chris-wilson.co.uk>
References: <20200529085809.23691-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915: Check for awaits on still
 currently executing requests
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

With the advent of preempt-to-busy, a request may still be on the GPU as
we unwind. And in the case of a unpreemptible [due to HW] request, that
request will remain indefinitely on the GPU even though we have
returned it back to our submission queue, and cleared the active bit.

We only run the execution callbacks on transferring the request from our
submission queue to the execution queue, but if this is a bonded request
that the HW is waiting for, we will not submit it (as we wait for a
fresh execution) even though it is still being executed.

As we know that there are always preemption points between requests, we
know that only the currently executing request may be still active even
though we have cleared the flag.

Fixes: 22b7a426bbe1 ("drm/i915/execlists: Preempt-to-busy")
Testcase: igt/gem_exec_balancer/bonded-dual
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index e5aba6824e26..f851c7d8fc7c 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -363,6 +363,11 @@ static void __llist_add(struct llist_node *node, struct llist_head *head)
 	head->first = node;
 }
 
+static bool __request_in_flight(const struct i915_request *signal)
+{
+	return signal == execlists_active(&signal->engine->execlists);
+}
+
 static int
 __await_execution(struct i915_request *rq,
 		  struct i915_request *signal,
@@ -393,7 +398,7 @@ __await_execution(struct i915_request *rq,
 	}
 
 	spin_lock_irq(&signal->lock);
-	if (i915_request_is_active(signal)) {
+	if (i915_request_is_active(signal) || __request_in_flight(signal)) {
 		if (hook) {
 			hook(rq, &signal->fence);
 			i915_request_put(signal);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
