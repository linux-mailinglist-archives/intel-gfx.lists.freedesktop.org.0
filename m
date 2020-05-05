Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7439C1C6372
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 23:52:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9212F6E487;
	Tue,  5 May 2020 21:52:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B5A86E43D
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 21:52:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21124367-1500050 
 for multiple; Tue, 05 May 2020 22:52:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 May 2020 22:52:05 +0100
Message-Id: <20200505215214.9690-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200505215214.9690-1-chris@chris-wilson.co.uk>
References: <20200505215214.9690-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/14] drm/i915: Prevent using semaphores to
 chain up to external fences
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

The downside of using semaphores is that we lose metadata passing
along the signaling chain. This is particularly nasty when we
need to pass along a fatal error such as EFAULT or EDEADLK. For
fatal errors we want to scrub the request before it is executed,
which means that we cannot preload the request onto HW and have
it wait upon a semaphore.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_request.c         | 26 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_scheduler_types.h |  1 +
 2 files changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index dfb1e86ffc7f..e3c691bf082f 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1002,6 +1002,15 @@ emit_semaphore_wait(struct i915_request *to,
 	if (!rcu_access_pointer(from->hwsp_cacheline))
 		goto await_fence;
 
+	/*
+	 * If this or its dependents are waiting on an external fence
+	 * that may fail catastrophically, then we want to avoid using
+	 * sempahores as they bypass the fence signaling metadata, and we
+	 * lose the fence->error propagation.
+	 */
+	if (from->sched.flags & I915_SCHED_HAS_EXTERNAL_CHAIN)
+		goto await_fence;
+
 	/* Just emit the first semaphore we see as request space is limited. */
 	if (already_busywaiting(to) & mask)
 		goto await_fence;
@@ -1064,12 +1073,29 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
 			return ret;
 	}
 
+	if (from->sched.flags & I915_SCHED_HAS_EXTERNAL_CHAIN)
+		to->sched.flags |= I915_SCHED_HAS_EXTERNAL_CHAIN;
+
 	return 0;
 }
 
+static void mark_external(struct i915_request *rq)
+{
+	/*
+	 * The downside of using semaphores is that we lose metadata passing
+	 * along the signaling chain. This is particularly nasty when we
+	 * need to pass along a fatal error such as EFAULT or EDEADLK. For
+	 * fatal errors we want to scrub the request before it is executed,
+	 * which means that we cannot preload the request onto HW and have
+	 * it wait upon a semaphore.
+	 */
+	rq->sched.flags |= I915_SCHED_HAS_EXTERNAL_CHAIN;
+}
+
 static int
 i915_request_await_external(struct i915_request *rq, struct dma_fence *fence)
 {
+	mark_external(rq);
 	return i915_sw_fence_await_dma_fence(&rq->submit, fence,
 					     fence->context ? I915_FENCE_TIMEOUT : 0,
 					     I915_FENCE_GFP);
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 7186875088a0..6ab2c5289bed 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -66,6 +66,7 @@ struct i915_sched_node {
 	struct i915_sched_attr attr;
 	unsigned int flags;
 #define I915_SCHED_HAS_SEMAPHORE_CHAIN	BIT(0)
+#define I915_SCHED_HAS_EXTERNAL_CHAIN	BIT(1)
 	intel_engine_mask_t semaphores;
 };
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
