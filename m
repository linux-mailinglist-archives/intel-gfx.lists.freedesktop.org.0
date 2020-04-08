Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 169741A1F80
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 13:10:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50B5E6EA26;
	Wed,  8 Apr 2020 11:10:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F64C6EA26
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 11:10:38 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Apr 2020 13:10:19 +0200
Message-Id: <20200408111031.2330026-11-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408111031.2330026-1-maarten.lankhorst@linux.intel.com>
References: <20200408111031.2330026-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/23] drm/i915: Pin engine before pinning all
 objects, v3.
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

We want to lock all gem objects, including the engine context objects,
rework the throttling to ensure that we can do this. Now we only throttle
once, but can take eb_pin_engine while acquiring objects. This means we
will have to drop the lock to wait. If we don't have to throttle we can
still take the fastpath, if not we will take the slowpath and wait for
the throttle request while unlocked.

The engine has to be pinned as first step, otherwise gpu relocations
won't work.

Changes since v1:
- Only need to get a throttled request in the fastpath, no need for
  a global flag any more.
- Always free the waited request correctly.
Changes since v2:
- Use intel_engine_pm_get()/put() to keeep engine pool alive during
  EDEADLK handling.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 185 ++++++++++++------
 1 file changed, 129 insertions(+), 56 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 7fef5a85ecde..3374d968ba46 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -16,6 +16,7 @@
 #include "gem/i915_gem_ioctls.h"
 #include "gt/intel_context.h"
 #include "gt/intel_engine_pool.h"
+#include "gt/intel_engine_pm.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_ring.h"
@@ -55,7 +56,8 @@ enum {
 #define __EXEC_OBJECT_RESERVED (__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_FENCE)
 
 #define __EXEC_HAS_RELOC	BIT(31)
-#define __EXEC_INTERNAL_FLAGS	(~0u << 31)
+#define __EXEC_ENGINE_PINNED	BIT(30)
+#define __EXEC_INTERNAL_FLAGS	(~0u << 30)
 #define UPDATE			PIN_OFFSET_FIXED
 
 #define BATCH_OFFSET_BIAS (256*1024)
@@ -235,6 +237,7 @@ struct i915_execbuffer {
 	struct intel_engine_cs *engine; /** engine to queue the request to */
 	struct intel_context *context; /* logical state for the request */
 	struct i915_gem_context *gem_context; /** caller's context */
+	intel_wakeref_t wakeref; /** wakeref for runtime pm */
 
 	struct i915_request *request; /** our request to build */
 	struct eb_vma *batch; /** identity of the batch obj/vma */
@@ -288,6 +291,9 @@ struct i915_execbuffer {
 };
 
 static int eb_parse(struct i915_execbuffer *eb);
+static struct i915_request *eb_pin_engine(struct i915_execbuffer *eb,
+					  bool throttle);
+static void eb_unpin_engine(struct i915_execbuffer *eb);
 
 static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
 {
@@ -914,7 +920,7 @@ eb_get_vma(const struct i915_execbuffer *eb, unsigned long handle)
 	}
 }
 
-static void eb_release_vmas(const struct i915_execbuffer *eb, bool final)
+static void eb_release_vmas(struct i915_execbuffer *eb, bool final)
 {
 	const unsigned int count = eb->buffer_count;
 	unsigned int i;
@@ -931,6 +937,8 @@ static void eb_release_vmas(const struct i915_execbuffer *eb, bool final)
 		if (final)
 			i915_vma_put(vma);
 	}
+
+	eb_unpin_engine(eb);
 }
 
 static void eb_destroy(const struct i915_execbuffer *eb)
@@ -1729,7 +1737,8 @@ static int eb_prefault_relocations(const struct i915_execbuffer *eb)
 	return 0;
 }
 
-static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
+static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb,
+					   struct i915_request *rq)
 {
 	bool have_copy = false;
 	struct eb_vma *ev;
@@ -1745,6 +1754,21 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 	eb_release_vmas(eb, false);
 	i915_gem_ww_ctx_fini(&eb->ww);
 
+	if (rq) {
+		/* nonblocking is always false */
+		if (i915_request_wait(rq, I915_WAIT_INTERRUPTIBLE,
+				      MAX_SCHEDULE_TIMEOUT) < 0) {
+			i915_request_put(rq);
+			rq = NULL;
+
+			err = -EINTR;
+			goto err_relock;
+		}
+
+		i915_request_put(rq);
+		rq = NULL;
+	}
+
 	/*
 	 * We take 3 passes through the slowpatch.
 	 *
@@ -1768,14 +1792,25 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 		err = 0;
 	}
 
-	flush_workqueue(eb->i915->mm.userptr_wq);
+	if (!err)
+		flush_workqueue(eb->i915->mm.userptr_wq);
 
+err_relock:
 	i915_gem_ww_ctx_init(&eb->ww, true);
 	if (err)
 		goto out;
 
 	/* reacquire the objects */
 repeat_validate:
+	rq = eb_pin_engine(eb, false);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto err;
+	}
+
+	/* We didn't throttle, should be NULL */
+	GEM_WARN_ON(rq);
+
 	err = eb_validate_vmas(eb);
 	if (err)
 		goto err;
@@ -1839,14 +1874,47 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 		}
 	}
 
+	if (rq)
+		i915_request_put(rq);
+
 	return err;
 }
 
 static int eb_relocate_parse(struct i915_execbuffer *eb)
 {
 	int err;
+	struct i915_request *rq = NULL;
+	bool throttle = true;
 
 retry:
+	rq = eb_pin_engine(eb, throttle);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		rq = NULL;
+		if (err != -EDEADLK)
+			return err;
+
+		goto err;
+	}
+
+	if (rq) {
+		bool nonblock = eb->file->filp->f_flags & O_NONBLOCK;
+
+		/* Need to drop all locks now for throttling, take slowpath */
+		err = i915_request_wait(rq, I915_WAIT_INTERRUPTIBLE, 0);
+		if (err == -ETIME) {
+			if (nonblock) {
+				err = -EWOULDBLOCK;
+				i915_request_put(rq);
+				goto err;
+			}
+			goto slow;
+		}
+	}
+
+	/* only throttle once, even if we didn't need to throttle */
+	throttle = false;
+
 	err = eb_validate_vmas(eb);
 	if (err == -EAGAIN)
 		goto slow;
@@ -1879,7 +1947,7 @@ static int eb_relocate_parse(struct i915_execbuffer *eb)
 	return err;
 
 slow:
-	err = eb_relocate_parse_slow(eb);
+	err = eb_relocate_parse_slow(eb, rq);
 	if (err)
 		/*
 		 * If the user expects the execobject.offset and
@@ -2304,7 +2372,7 @@ static const enum intel_engine_id user_ring_map[] = {
 	[I915_EXEC_VEBOX]	= VECS0
 };
 
-static struct i915_request *eb_throttle(struct intel_context *ce)
+static struct i915_request *eb_throttle(struct i915_execbuffer *eb, struct intel_context *ce)
 {
 	struct intel_ring *ring = ce->ring;
 	struct intel_timeline *tl = ce->timeline;
@@ -2338,22 +2406,17 @@ static struct i915_request *eb_throttle(struct intel_context *ce)
 	return i915_request_get(rq);
 }
 
-static int __eb_pin_engine(struct i915_execbuffer *eb, struct intel_context *ce)
+static struct i915_request *eb_pin_engine(struct i915_execbuffer *eb, bool throttle)
 {
+	struct intel_context *ce = eb->context;
 	struct intel_timeline *tl;
-	struct i915_request *rq;
+	struct i915_request *rq = NULL;
 	int err;
 
-	/*
-	 * ABI: Before userspace accesses the GPU (e.g. execbuffer), report
-	 * EIO if the GPU is already wedged.
-	 */
-	err = intel_gt_terminally_wedged(ce->engine->gt);
-	if (err)
-		return err;
+	GEM_BUG_ON(eb->args->flags & __EXEC_ENGINE_PINNED);
 
 	if (unlikely(intel_context_is_banned(ce)))
-		return -EIO;
+		return ERR_PTR(-EIO);
 
 	/*
 	 * Pinning the contexts may generate requests in order to acquire
@@ -2362,7 +2425,7 @@ static int __eb_pin_engine(struct i915_execbuffer *eb, struct intel_context *ce)
 	 */
 	err = intel_context_pin(ce);
 	if (err)
-		return err;
+		return ERR_PTR(err);
 
 	/*
 	 * Take a local wakeref for preparing to dispatch the execbuf as
@@ -2374,45 +2437,17 @@ static int __eb_pin_engine(struct i915_execbuffer *eb, struct intel_context *ce)
 	 */
 	tl = intel_context_timeline_lock(ce);
 	if (IS_ERR(tl)) {
-		err = PTR_ERR(tl);
-		goto err_unpin;
+		intel_context_unpin(ce);
+		return ERR_CAST(tl);
 	}
 
 	intel_context_enter(ce);
-	rq = eb_throttle(ce);
-
+	if (throttle)
+		rq = eb_throttle(eb, ce);
 	intel_context_timeline_unlock(tl);
 
-	if (rq) {
-		bool nonblock = eb->file->filp->f_flags & O_NONBLOCK;
-		long timeout;
-
-		timeout = MAX_SCHEDULE_TIMEOUT;
-		if (nonblock)
-			timeout = 0;
-
-		timeout = i915_request_wait(rq,
-					    I915_WAIT_INTERRUPTIBLE,
-					    timeout);
-		i915_request_put(rq);
-
-		if (timeout < 0) {
-			err = nonblock ? -EWOULDBLOCK : timeout;
-			goto err_exit;
-		}
-	}
-
-	eb->engine = ce->engine;
-	eb->context = ce;
-	return 0;
-
-err_exit:
-	mutex_lock(&tl->mutex);
-	intel_context_exit(ce);
-	intel_context_timeline_unlock(tl);
-err_unpin:
-	intel_context_unpin(ce);
-	return err;
+	eb->args->flags |= __EXEC_ENGINE_PINNED;
+	return rq;
 }
 
 static void eb_unpin_engine(struct i915_execbuffer *eb)
@@ -2420,6 +2455,11 @@ static void eb_unpin_engine(struct i915_execbuffer *eb)
 	struct intel_context *ce = eb->context;
 	struct intel_timeline *tl = ce->timeline;
 
+	if (!(eb->args->flags & __EXEC_ENGINE_PINNED))
+		return;
+
+	eb->args->flags &= ~__EXEC_ENGINE_PINNED;
+
 	mutex_lock(&tl->mutex);
 	intel_context_exit(ce);
 	mutex_unlock(&tl->mutex);
@@ -2471,7 +2511,7 @@ eb_select_legacy_ring(struct i915_execbuffer *eb)
 }
 
 static int
-eb_pin_engine(struct i915_execbuffer *eb)
+eb_select_engine(struct i915_execbuffer *eb)
 {
 	struct intel_context *ce;
 	unsigned int idx;
@@ -2486,10 +2526,43 @@ eb_pin_engine(struct i915_execbuffer *eb)
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
 
-	err = __eb_pin_engine(eb, ce);
-	intel_context_put(ce);
+	eb->wakeref = intel_runtime_pm_get(&eb->i915->runtime_pm);
+
+	if (!test_bit(CONTEXT_ALLOC_BIT, &ce->flags)) {
+		err = intel_context_alloc_state(ce);
+		if (err)
+			goto err;
+	}
+
+	/*
+	 * ABI: Before userspace accesses the GPU (e.g. execbuffer), report
+	 * EIO if the GPU is already wedged.
+	 */
+	err = intel_gt_terminally_wedged(ce->engine->gt);
+	if (err)
+		goto err;
 
+	eb->context = ce;
+	eb->engine = ce->engine;
+
+	/*
+	 * Make sure engine pool stays alive even if we call intel_context_put
+	 * during ww handling. The pool is destroyed when last pm reference
+	 * is dropped, which breaks our -EDEADLK handling.
+	 */
 	return err;
+
+err:
+	intel_context_put(ce);
+	intel_runtime_pm_put(&eb->i915->runtime_pm, eb->wakeref);
+	return err;
+}
+
+static void
+eb_put_engine(struct i915_execbuffer *eb)
+{
+	intel_context_put(eb->context);
+	intel_runtime_pm_put(&eb->i915->runtime_pm, eb->wakeref);
 }
 
 static void
@@ -2778,7 +2851,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (unlikely(err))
 		goto err_destroy;
 
-	err = eb_pin_engine(&eb);
+	err = eb_select_engine(&eb);
 	if (unlikely(err))
 		goto err_context;
 
@@ -2916,7 +2989,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	WARN_ON(err == -EDEADLK);
 	i915_gem_ww_ctx_fini(&eb.ww);
 err_engine:
-	eb_unpin_engine(&eb);
+	eb_put_engine(&eb);
 err_context:
 	i915_gem_context_put(eb.gem_context);
 err_destroy:
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
