Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C32225B5F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 11:23:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BD176E2A8;
	Mon, 20 Jul 2020 09:23:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0CA06E271
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jul 2020 09:23:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21870897-1500050 
 for multiple; Mon, 20 Jul 2020 10:23:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jul 2020 10:23:03 +0100
Message-Id: <20200720092312.16975-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/10] drm/i915/gem: Remove disordered per-file
 request list for throttling
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

I915_GEM_THROTTLE dates back to the time before contexts where there was
just a single engine, and therefore a single timeline and request list
globally. That request list was in execution/retirement order, and so
walking it to find a particular aged request made sense and could be
split per file.

That is no more. We now have many timelines with a file, as many as the
user wants to construct (essentially per-engine, per-context). Each of
those run independently and so make the single list futile. Remove the
disordered list, and iterate over all the timelines to find a request to
wait on in each to satisfy the criteria that the CPU is no more than 20ms
ahead of its oldest request.

It should go without saying that the I915_GEM_THROTTLE ioctl is no
longer used as the primary means of throttling, so it makes sense to push
the complication into the ioctl where it only impacts upon its few
irregular users, rather than the execbuf/retire where everybody has to
pay the cost. Fortunately, the few users do not create vast amount of
contexts, so the loops over contexts/engines should be concise.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 13 ----
 drivers/gpu/drm/i915/gem/i915_gem_throttle.c  | 67 +++++++++++++------
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  5 +-
 drivers/gpu/drm/i915/i915_drv.c               |  1 -
 drivers/gpu/drm/i915/i915_drv.h               |  6 --
 drivers/gpu/drm/i915/i915_gem.c               | 18 -----
 drivers/gpu/drm/i915/i915_request.c           | 21 ------
 drivers/gpu/drm/i915/i915_request.h           |  4 --
 8 files changed, 50 insertions(+), 85 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 6b4ec66cb558..b7a86cdec9b5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1916,18 +1916,6 @@ static int eb_parse(struct i915_execbuffer *eb)
 	return err;
 }
 
-static void
-add_to_client(struct i915_request *rq, struct drm_file *file)
-{
-	struct drm_i915_file_private *file_priv = file->driver_priv;
-
-	rq->file_priv = file_priv;
-
-	spin_lock(&file_priv->mm.lock);
-	list_add_tail(&rq->client_link, &file_priv->mm.request_list);
-	spin_unlock(&file_priv->mm.lock);
-}
-
 static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
 {
 	int err;
@@ -2567,7 +2555,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	trace_i915_request_queue(eb.request, eb.batch_flags);
 	err = eb_submit(&eb, batch);
 err_request:
-	add_to_client(eb.request, file);
 	i915_request_get(eb.request);
 	eb_request_add(&eb);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_throttle.c b/drivers/gpu/drm/i915/gem/i915_gem_throttle.c
index 540ef0551789..1929d6cf4150 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_throttle.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_throttle.c
@@ -9,6 +9,7 @@
 #include <drm/drm_file.h>
 
 #include "i915_drv.h"
+#include "i915_gem_context.h"
 #include "i915_gem_ioctls.h"
 #include "i915_gem_object.h"
 
@@ -35,9 +36,10 @@ int
 i915_gem_throttle_ioctl(struct drm_device *dev, void *data,
 			struct drm_file *file)
 {
+	const unsigned long recent_enough = jiffies - DRM_I915_THROTTLE_JIFFIES;
 	struct drm_i915_file_private *file_priv = file->driver_priv;
-	unsigned long recent_enough = jiffies - DRM_I915_THROTTLE_JIFFIES;
-	struct i915_request *request, *target = NULL;
+	struct i915_gem_context *ctx;
+	unsigned long idx;
 	long ret;
 
 	/* ABI: return -EIO if already wedged */
@@ -45,27 +47,54 @@ i915_gem_throttle_ioctl(struct drm_device *dev, void *data,
 	if (ret)
 		return ret;
 
-	spin_lock(&file_priv->mm.lock);
-	list_for_each_entry(request, &file_priv->mm.request_list, client_link) {
-		if (time_after_eq(request->emitted_jiffies, recent_enough))
-			break;
+	rcu_read_lock();
+	xa_for_each(&file_priv->context_xa, idx, ctx) {
+		struct i915_gem_engines_iter it;
+		struct intel_context *ce;
 
-		if (target && xchg(&target->file_priv, NULL))
-			list_del(&target->client_link);
+		if (!kref_get_unless_zero(&ctx->ref))
+			continue;
+		rcu_read_unlock();
 
-		target = request;
-	}
-	if (target)
-		i915_request_get(target);
-	spin_unlock(&file_priv->mm.lock);
+		for_each_gem_engine(ce,
+				    i915_gem_context_lock_engines(ctx),
+				    it) {
+			struct i915_request *rq, *target = NULL;
+
+			if (!ce->timeline)
+				continue;
+
+			mutex_lock(&ce->timeline->mutex);
+			list_for_each_entry_reverse(rq,
+						    &ce->timeline->requests,
+						    link) {
+				if (i915_request_completed(rq))
+					break;
 
-	if (!target)
-		return 0;
+				if (time_after(rq->emitted_jiffies,
+					       recent_enough))
+					continue;
 
-	ret = i915_request_wait(target,
-				I915_WAIT_INTERRUPTIBLE,
-				MAX_SCHEDULE_TIMEOUT);
-	i915_request_put(target);
+				target = i915_request_get(rq);
+				break;
+			}
+			mutex_unlock(&ce->timeline->mutex);
+			if (!target)
+				continue;
+
+			ret = i915_request_wait(target,
+						I915_WAIT_INTERRUPTIBLE,
+						MAX_SCHEDULE_TIMEOUT);
+			i915_request_put(target);
+			if (ret < 0)
+				break;
+		}
+		i915_gem_context_unlock_engines(ctx);
+		i915_gem_context_put(ctx);
+
+		rcu_read_lock();
+	}
+	rcu_read_unlock();
 
 	return ret < 0 ? ret : 0;
 }
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 3fc5de961280..f749071f54a7 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -2729,7 +2729,7 @@ static int create_gang(struct intel_engine_cs *engine,
 	i915_gem_object_put(obj);
 	intel_context_put(ce);
 
-	rq->client_link.next = &(*prev)->client_link;
+	rq->mock.link.next = &(*prev)->mock.link;
 	*prev = rq;
 	return 0;
 
@@ -2970,8 +2970,7 @@ static int live_preempt_gang(void *arg)
 		}
 
 		while (rq) { /* wait for each rq from highest to lowest prio */
-			struct i915_request *n =
-				list_next_entry(rq, client_link);
+			struct i915_request *n = list_next_entry(rq, mock.link);
 
 			if (err == 0 && i915_request_wait(rq, 0, HZ / 5) < 0) {
 				struct drm_printer p =
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 5fd5af4bc855..a5f58ed219fe 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1119,7 +1119,6 @@ static void i915_driver_postclose(struct drm_device *dev, struct drm_file *file)
 	struct drm_i915_file_private *file_priv = file->driver_priv;
 
 	i915_gem_context_close(file);
-	i915_gem_release(dev, file);
 
 	kfree_rcu(file_priv, rcu);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 56dfc6d98caa..cb848ee6a19d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -203,11 +203,6 @@ struct drm_i915_file_private {
 		struct rcu_head rcu;
 	};
 
-	struct {
-		spinlock_t lock;
-		struct list_head request_list;
-	} mm;
-
 	struct xarray context_xa;
 	struct xarray vm_xa;
 
@@ -1839,7 +1834,6 @@ void i915_gem_suspend_late(struct drm_i915_private *dev_priv);
 void i915_gem_resume(struct drm_i915_private *dev_priv);
 
 int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
-void i915_gem_release(struct drm_device *dev, struct drm_file *file);
 
 int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
 				    enum i915_cache_level cache_level);
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 9aa3066cb75d..e1de50780ed5 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1301,21 +1301,6 @@ int i915_gem_freeze_late(struct drm_i915_private *i915)
 	return 0;
 }
 
-void i915_gem_release(struct drm_device *dev, struct drm_file *file)
-{
-	struct drm_i915_file_private *file_priv = file->driver_priv;
-	struct i915_request *request;
-
-	/* Clean up our request list when the client is going away, so that
-	 * later retire_requests won't dereference our soon-to-be-gone
-	 * file_priv.
-	 */
-	spin_lock(&file_priv->mm.lock);
-	list_for_each_entry(request, &file_priv->mm.request_list, client_link)
-		request->file_priv = NULL;
-	spin_unlock(&file_priv->mm.lock);
-}
-
 int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file)
 {
 	struct drm_i915_file_private *file_priv;
@@ -1331,9 +1316,6 @@ int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file)
 	file_priv->dev_priv = i915;
 	file_priv->file = file;
 
-	spin_lock_init(&file_priv->mm.lock);
-	INIT_LIST_HEAD(&file_priv->mm.request_list);
-
 	file_priv->bsd_engine = -1;
 	file_priv->hang_timestamp = jiffies;
 
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 679a915e9a63..050b55f0f5c0 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -216,24 +216,6 @@ static void __notify_execute_cb_imm(struct i915_request *rq)
 	__notify_execute_cb(rq, irq_work_imm);
 }
 
-static inline void
-remove_from_client(struct i915_request *request)
-{
-	struct drm_i915_file_private *file_priv;
-
-	if (!READ_ONCE(request->file_priv))
-		return;
-
-	rcu_read_lock();
-	file_priv = xchg(&request->file_priv, NULL);
-	if (file_priv) {
-		spin_lock(&file_priv->mm.lock);
-		list_del(&request->client_link);
-		spin_unlock(&file_priv->mm.lock);
-	}
-	rcu_read_unlock();
-}
-
 static void free_capture_list(struct i915_request *request)
 {
 	struct i915_capture_list *capture;
@@ -341,7 +323,6 @@ bool i915_request_retire(struct i915_request *rq)
 	remove_from_engine(rq);
 	GEM_BUG_ON(!llist_empty(&rq->execute_cb));
 
-	remove_from_client(rq);
 	__list_del_entry(&rq->link); /* poison neither prev/next (RCU walks) */
 
 	intel_context_exit(rq->context);
@@ -799,7 +780,6 @@ static void __i915_request_ctor(void *arg)
 
 	dma_fence_init(&rq->fence, &i915_fence_ops, &rq->lock, 0, 0);
 
-	rq->file_priv = NULL;
 	rq->capture_list = NULL;
 
 	init_llist_head(&rq->execute_cb);
@@ -889,7 +869,6 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 
 	/* No zalloc, everything must be cleared after use */
 	rq->batch = NULL;
-	GEM_BUG_ON(rq->file_priv);
 	GEM_BUG_ON(rq->capture_list);
 	GEM_BUG_ON(!llist_empty(&rq->execute_cb));
 
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 590762820761..fc18378c685d 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -284,10 +284,6 @@ struct i915_request {
 	/** timeline->request entry for this request */
 	struct list_head link;
 
-	struct drm_i915_file_private *file_priv;
-	/** file_priv list entry for this request */
-	struct list_head client_link;
-
 	I915_SELFTEST_DECLARE(struct {
 		struct list_head link;
 		unsigned long delay;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
