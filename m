Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E731E9F14
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 09:25:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57B376E158;
	Mon,  1 Jun 2020 07:25:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EFE189E63
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 07:25:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21356624-1500050 
 for multiple; Mon, 01 Jun 2020 08:24:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jun 2020 08:24:34 +0100
Message-Id: <20200601072446.19548-24-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601072446.19548-1-chris@chris-wilson.co.uk>
References: <20200601072446.19548-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 24/36] drm/i915: Unpeel awaits on a proxy fence
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

If the real target for a proxy fence is known at the time we are
attaching our awaits, use the real target in preference to hooking up to
the proxy. If use the real target instead, we can optimize the awaits,
e.g. if it along the same engine, we can order the submission and avoid
the wait-for-completion.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_request.c   | 157 ++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_scheduler.c |  41 +++++++
 drivers/gpu/drm/i915/i915_scheduler.h |   3 +
 3 files changed, 201 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 9537e30f9439..02747c171c54 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -24,6 +24,7 @@
 
 #include <linux/dma-fence-array.h>
 #include <linux/dma-fence-chain.h>
+#include <linux/dma-fence-proxy.h>
 #include <linux/irq_work.h>
 #include <linux/prefetch.h>
 #include <linux/sched.h>
@@ -461,6 +462,7 @@ static bool fatal_error(int error)
 	case 0: /* not an error! */
 	case -EAGAIN: /* innocent victim of a GT reset (__i915_request_reset) */
 	case -ETIMEDOUT: /* waiting for Godot (timer_i915_sw_fence_wake) */
+	case -EDEADLK: /* cyclic fence lockup (await_proxy)  */
 		return false;
 	default:
 		return true;
@@ -1251,6 +1253,138 @@ i915_request_await_external(struct i915_request *rq, struct dma_fence *fence)
 	return err;
 }
 
+struct await_proxy {
+	struct wait_queue_entry base;
+	struct i915_request *request;
+	struct dma_fence *fence;
+	struct timer_list timer;
+	struct work_struct work;
+	int (*attach)(struct await_proxy *ap);
+	void *data;
+};
+
+static void await_proxy_work(struct work_struct *work)
+{
+	struct await_proxy *ap = container_of(work, typeof(*ap), work);
+	struct i915_request *rq = ap->request;
+
+	del_timer_sync(&ap->timer);
+
+	if (ap->fence) {
+		int err = 0;
+
+		/*
+		 * If the fence is external, we impose a 10s timeout.
+		 * However, if the fence is internal, we skip a timeout in
+		 * the belief that all fences are in-order (DAG, no cycles)
+		 * and we can enforce forward progress by reset the GPU if
+		 * necessary. A future fence, provided userspace, can trivially
+		 * generate a cycle in the dependency graph, and so cause
+		 * that entire cycle to become deadlocked and for no forward
+		 * progress to either be made, and the driver being kept
+		 * eternally awake.
+		 */
+		if (dma_fence_is_i915(ap->fence) &&
+		    !i915_sched_node_verify_dag(&rq->sched,
+						&to_request(ap->fence)->sched))
+			err = -EDEADLK;
+
+		if (!err) {
+			mutex_lock(&rq->context->timeline->mutex);
+			err = ap->attach(ap);
+			mutex_unlock(&rq->context->timeline->mutex);
+		}
+
+		/* Don't flag an error for co-dependent scheduling */
+		if (err == -EDEADLK) {
+			struct i915_sched_node *waiter =
+				&to_request(ap->fence)->sched;
+			struct i915_dependency *p;
+
+			list_for_each_entry_lockless(p,
+						     &rq->sched.waiters_list,
+						     wait_link) {
+				if (p->waiter == waiter &&
+				    p->flags & I915_DEPENDENCY_WEAK) {
+					err = 0;
+					break;
+				}
+			}
+		}
+
+		if (err < 0)
+			i915_sw_fence_set_error_once(&rq->submit, err);
+	}
+
+	i915_sw_fence_complete(&rq->submit);
+
+	dma_fence_put(ap->fence);
+	kfree(ap);
+}
+
+static int
+await_proxy_wake(struct wait_queue_entry *entry,
+		 unsigned int mode,
+		 int flags,
+		 void *fence)
+{
+	struct await_proxy *ap = container_of(entry, typeof(*ap), base);
+
+	ap->fence = dma_fence_get(fence);
+	schedule_work(&ap->work);
+
+	return 0;
+}
+
+static void
+await_proxy_timer(struct timer_list *t)
+{
+	struct await_proxy *ap = container_of(t, typeof(*ap), timer);
+
+	if (dma_fence_remove_proxy_listener(ap->base.private, &ap->base)) {
+		struct i915_request *rq = ap->request;
+
+		pr_notice("Asynchronous wait on unset proxy fence by %s:%s:%llx timed out\n",
+			  rq->fence.ops->get_driver_name(&rq->fence),
+			  rq->fence.ops->get_timeline_name(&rq->fence),
+			  rq->fence.seqno);
+		i915_sw_fence_set_error_once(&rq->submit, -ETIMEDOUT);
+
+		schedule_work(&ap->work);
+	}
+}
+
+static int
+__i915_request_await_proxy(struct i915_request *rq,
+			   struct dma_fence *fence,
+			   unsigned long timeout,
+			   int (*attach)(struct await_proxy *ap),
+			   void *data)
+{
+	struct await_proxy *ap;
+
+	ap = kzalloc(sizeof(*ap), I915_FENCE_GFP);
+	if (!ap)
+		return -ENOMEM;
+
+	i915_sw_fence_await(&rq->submit);
+	mark_external(rq);
+
+	ap->base.private = fence;
+	ap->base.func = await_proxy_wake;
+	ap->request = rq;
+	INIT_WORK(&ap->work, await_proxy_work);
+	ap->attach = attach;
+	ap->data = data;
+
+	timer_setup(&ap->timer, await_proxy_timer, 0);
+	if (timeout)
+		mod_timer(&ap->timer, round_jiffies_up(jiffies + timeout));
+
+	dma_fence_add_proxy_listener(fence, &ap->base);
+	return 0;
+}
+
 int
 i915_request_await_execution(struct i915_request *rq,
 			     struct dma_fence *fence,
@@ -1349,6 +1483,24 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
 	return 0;
 }
 
+static int await_proxy(struct await_proxy *ap)
+{
+	return i915_request_await_dma_fence(ap->request, ap->fence);
+}
+
+static int
+i915_request_await_proxy(struct i915_request *rq, struct dma_fence *fence)
+{
+	/*
+	 * Wait until we know the real fence so that can optimise the
+	 * inter-fence synchronisation.
+	 */
+	return __i915_request_await_proxy(rq, fence,
+					  i915_fence_context_timeout(rq->i915,
+								     fence->context),
+					  await_proxy, NULL);
+}
+
 int
 i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
 {
@@ -1356,6 +1508,9 @@ i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
 	unsigned int nchild = 1;
 	int ret;
 
+	/* Unpeel the proxy fence if the real target is already known */
+	fence = dma_fence_proxy_get_real(fence);
+
 	/*
 	 * Note that if the fence-array was created in signal-on-any mode,
 	 * we should *not* decompose it into its individual fences. However,
@@ -1395,6 +1550,8 @@ i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
 
 		if (dma_fence_is_i915(fence))
 			ret = i915_request_await_request(rq, to_request(fence));
+		else if (dma_fence_is_proxy(fence))
+			ret = i915_request_await_proxy(rq, fence);
 		else
 			ret = i915_request_await_external(rq, fence);
 		if (ret < 0)
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index cbb880b10c65..250832768279 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -469,6 +469,47 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
 	return 0;
 }
 
+bool i915_sched_node_verify_dag(struct i915_sched_node *waiter,
+				struct i915_sched_node *signaler)
+{
+	struct i915_dependency *dep, *p;
+	struct i915_dependency stack;
+	bool result = false;
+	LIST_HEAD(dfs);
+
+	if (list_empty(&waiter->waiters_list))
+		return true;
+
+	spin_lock_irq(&schedule_lock);
+
+	stack.signaler = signaler;
+	list_add(&stack.dfs_link, &dfs);
+
+	list_for_each_entry(dep, &dfs, dfs_link) {
+		struct i915_sched_node *node = dep->signaler;
+
+		if (node_signaled(node))
+			continue;
+
+		list_for_each_entry(p, &node->signalers_list, signal_link) {
+			if (p->signaler == waiter)
+				goto out;
+
+			if (list_empty(&p->dfs_link))
+				list_add_tail(&p->dfs_link, &dfs);
+		}
+	}
+
+	result = true;
+out:
+	list_for_each_entry_safe(dep, p, &dfs, dfs_link)
+		INIT_LIST_HEAD(&dep->dfs_link);
+
+	spin_unlock_irq(&schedule_lock);
+
+	return result;
+}
+
 void i915_sched_node_fini(struct i915_sched_node *node)
 {
 	struct i915_dependency *dep, *tmp;
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index 6f0bf00fc569..13432add8929 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -28,6 +28,9 @@
 void i915_sched_node_init(struct i915_sched_node *node);
 void i915_sched_node_reinit(struct i915_sched_node *node);
 
+bool i915_sched_node_verify_dag(struct i915_sched_node *waiter,
+				struct i915_sched_node *signal);
+
 bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
 				      struct i915_sched_node *signal,
 				      struct i915_dependency *dep,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
