Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E95B1CD372
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 09:58:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66E1F6E29E;
	Mon, 11 May 2020 07:58:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B3FD6E27C
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 07:58:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21160792-1500050 
 for multiple; Mon, 11 May 2020 08:57:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 May 2020 08:57:10 +0100
Message-Id: <20200511075722.13483-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200511075722.13483-1-chris@chris-wilson.co.uk>
References: <20200511075722.13483-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/20] drm/i915/gem: Teach execbuf how to wait
 on future syncobj
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

If a syncobj has not yet been assigned, treat it as a future fence and
install and wait upon a dma-fence-proxy. The proxy will be replace by
the real fence later, and that fence will be responsible for signaling
our waiter.

Link: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/4854
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  21 ++-
 drivers/gpu/drm/i915/i915_request.c           | 153 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_scheduler.c         |  41 +++++
 drivers/gpu/drm/i915/i915_scheduler.h         |   3 +
 4 files changed, 216 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d54a4933cc05..199131db200f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/intel-iommu.h>
+#include <linux/dma-fence-proxy.h>
 #include <linux/dma-resv.h>
 #include <linux/sync_file.h>
 #include <linux/uaccess.h>
@@ -2524,8 +2525,24 @@ await_fence_array(struct i915_execbuffer *eb,
 			continue;
 
 		fence = drm_syncobj_fence_get(syncobj);
-		if (!fence)
-			return -EINVAL;
+		if (!fence) {
+			struct dma_fence *old;
+
+			fence = dma_fence_create_proxy();
+			if (!fence)
+				return -ENOMEM;
+
+			spin_lock(&syncobj->lock);
+			old = rcu_dereference_protected(syncobj->fence, true);
+			if (unlikely(old)) {
+				dma_fence_put(fence);
+				fence = dma_fence_get(old);
+			} else {
+				rcu_assign_pointer(syncobj->fence,
+						   dma_fence_get(fence));
+			}
+			spin_unlock(&syncobj->lock);
+		}
 
 		err = i915_request_await_dma_fence(eb->request, fence);
 		dma_fence_put(fence);
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 00b7c4eb3f32..945494b06bce 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -24,6 +24,7 @@
 
 #include <linux/dma-fence-array.h>
 #include <linux/dma-fence-chain.h>
+#include <linux/dma-fence-proxy.h>
 #include <linux/irq_work.h>
 #include <linux/prefetch.h>
 #include <linux/sched.h>
@@ -379,6 +380,7 @@ static bool fatal_error(int error)
 	case 0: /* not an error! */
 	case -EAGAIN: /* innocent victim of a GT reset (__i915_request_reset) */
 	case -ETIMEDOUT: /* waiting for Godot (timer_i915_sw_fence_wake) */
+	case -EDEADLK: /* cyclic fence lockup (await_proxy)  */
 		return false;
 	default:
 		return true;
@@ -1133,6 +1135,155 @@ i915_request_await_external(struct i915_request *rq, struct dma_fence *fence)
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
+					  i915_fence_timeout(rq->i915),
+					  await_proxy, NULL);
+}
+
 int
 i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
 {
@@ -1179,6 +1330,8 @@ i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
 
 		if (dma_fence_is_i915(fence))
 			ret = i915_request_await_request(rq, to_request(fence));
+		else if (dma_fence_is_proxy(fence))
+			ret = i915_request_await_proxy(rq, fence);
 		else
 			ret = i915_request_await_external(rq, fence);
 		if (ret < 0)
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index bec2a9c25425..f8e797a7eee9 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -472,6 +472,47 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
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
