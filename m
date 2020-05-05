Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D231C5A5C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 17:02:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5E936E5CD;
	Tue,  5 May 2020 15:02:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC4176E5CD
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 15:02:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21120720-1500050 
 for multiple; Tue, 05 May 2020 16:02:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 May 2020 16:02:24 +0100
Message-Id: <20200505150224.6659-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200504135030.19210-5-chris@chris-wilson.co.uk>
References: <20200504135030.19210-5-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Teach execbuf how to wait on
 future syncobj
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
 drivers/gpu/drm/i915/i915_request.c           | 133 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_scheduler.c         |  41 ++++++
 drivers/gpu/drm/i915/i915_scheduler.h         |   3 +
 4 files changed, 196 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 966523a8503f..7abb96505a31 100644
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
index d369b25e46bb..9c5de07db47d 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -23,6 +23,7 @@
  */
 
 #include <linux/dma-fence-array.h>
+#include <linux/dma-fence-proxy.h>
 #include <linux/irq_work.h>
 #include <linux/prefetch.h>
 #include <linux/sched.h>
@@ -1065,6 +1066,136 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
 	return 0;
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
+	return __i915_request_await_proxy(rq, fence, I915_FENCE_TIMEOUT,
+					  await_proxy, NULL);
+}
+
 int
 i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
 {
@@ -1111,6 +1242,8 @@ i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
 
 		if (dma_fence_is_i915(fence))
 			ret = i915_request_await_request(rq, to_request(fence));
+		else if (dma_fence_is_proxy(fence))
+			ret = i915_request_await_proxy(rq, fence);
 		else
 			ret = i915_sw_fence_await_dma_fence(&rq->submit, fence,
 							    fence->context ? I915_FENCE_TIMEOUT : 0,
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 5f4c1e49e974..ad6c4363eaa6 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -484,6 +484,47 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
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
+	if (waiter == signaler)
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
