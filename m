Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 044FC1459F5
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 17:37:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AD246F5E7;
	Wed, 22 Jan 2020 16:37:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B05776F5E7
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 16:37:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19973303-1500050 
 for multiple; Wed, 22 Jan 2020 16:37:21 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jan 2020 16:37:20 +0000
Message-Id: <20200122163720.526344-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Check i915_active wait status after
 flushing
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

Double check that the i915_active is finally idle after waiting, and
flushing its callback, just in case we need to re-activate it, for
example to keep the vma alive a bit longer due to last minute HW
activity (e.g. saving the context before unbinding).

Closes: https://gitlab.freedesktop.org/drm/intel/issues/530
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_active.c | 38 ++++++++++++++++++------------
 1 file changed, 23 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index ace55d5d4ca7..204564944dde 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -448,17 +448,11 @@ static void enable_signaling(struct i915_active_fence *active)
 	dma_fence_put(fence);
 }
 
-int i915_active_wait(struct i915_active *ref)
+static int flush_lazy_signals(struct i915_active *ref)
 {
 	struct active_node *it, *n;
 	int err = 0;
 
-	might_sleep();
-
-	if (!i915_active_acquire_if_busy(ref))
-		return 0;
-
-	/* Flush lazy signals */
 	enable_signaling(&ref->excl);
 	rbtree_postorder_for_each_entry_safe(it, n, &ref->tree, node) {
 		if (is_barrier(&it->base)) /* unconnected idle barrier */
@@ -466,17 +460,31 @@ int i915_active_wait(struct i915_active *ref)
 
 		enable_signaling(&it->base);
 	}
-	/* Any fence added after the wait begins will not be auto-signaled */
 
-	i915_active_release(ref);
-	if (err)
-		return err;
+	return err;
+}
 
-	if (wait_var_event_interruptible(ref, i915_active_is_idle(ref)))
-		return -EINTR;
+int i915_active_wait(struct i915_active *ref)
+{
+	might_sleep();
 
-	flush_work(&ref->work);
-	return 0;
+	do {
+		int err;
+
+		if (!i915_active_acquire_if_busy(ref))
+			return 0;
+
+		/* Any fence added late will not be auto-signaled */
+		err = flush_lazy_signals(ref);
+		i915_active_release(ref);
+		if (err)
+			return err;
+
+		if (wait_var_event_interruptible(ref, i915_active_is_idle(ref)))
+			return -EINTR;
+
+		flush_work(&ref->work);
+	} while (1);
 }
 
 int i915_request_await_active(struct i915_request *rq, struct i915_active *ref)
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
