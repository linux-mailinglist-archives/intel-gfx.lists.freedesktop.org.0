Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C86F015D5BB
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 11:31:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B5E66EB78;
	Fri, 14 Feb 2020 10:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DFB06EB74
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 10:31:01 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Feb 2020 11:30:47 +0100
Message-Id: <20200214103055.2117836-12-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.0.24.g3f081b084b0
In-Reply-To: <20200214103055.2117836-1-maarten.lankhorst@linux.intel.com>
References: <20200214103055.2117836-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/19] drm/i915: Pin engine before pinning all
 objects, v2.
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

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 154 ++++++++++++------
 1 file changed, 103 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d96e7649314c..72bad053c6b5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -57,7 +57,8 @@ enum {
 #define __EXEC_OBJECT_RESERVED (__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_FENCE)
 
 #define __EXEC_HAS_RELOC	BIT(31)
-#define __EXEC_INTERNAL_FLAGS	(~0u << 31)
+#define __EXEC_ENGINE_PINNED	BIT(30)
+#define __EXEC_INTERNAL_FLAGS	(~0u << 30)
 #define UPDATE			PIN_OFFSET_FIXED
 
 #define BATCH_OFFSET_BIAS (256*1024)
@@ -290,6 +291,9 @@ struct i915_execbuffer {
 };
 
 static int eb_parse(struct i915_execbuffer *eb);
+static struct i915_request *eb_pin_engine(struct i915_execbuffer *eb,
+					  bool throttle);
+static void eb_unpin_engine(struct i915_execbuffer *eb);
 
 static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
 {
@@ -862,7 +866,7 @@ eb_get_vma(const struct i915_execbuffer *eb, unsigned long handle)
 	}
 }
 
-static void eb_release_vmas(const struct i915_execbuffer *eb)
+static void eb_release_vmas(struct i915_execbuffer *eb)
 {
 	const unsigned int count = eb->buffer_count;
 	unsigned int i;
@@ -878,8 +882,9 @@ static void eb_release_vmas(const struct i915_execbuffer *eb)
 
 		if (ev->flags & __EXEC_OBJECT_HAS_REF)
 			i915_vma_put(vma);
-
 	}
+
+	eb_unpin_engine(eb);
 }
 
 static void eb_destroy(const struct i915_execbuffer *eb)
@@ -1680,7 +1685,8 @@ static int eb_prefault_relocations(const struct i915_execbuffer *eb)
 	return 0;
 }
 
-static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
+static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb,
+					   struct i915_request *rq)
 {
 	struct drm_device *dev = &eb->i915->drm;
 	bool have_copy = false;
@@ -1698,6 +1704,20 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 	i915_gem_ww_ctx_fini(&eb->ww);
 	mutex_unlock(&dev->struct_mutex);
 
+	if (rq) {
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
@@ -1727,6 +1747,8 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 
 		err = mutex_lock_interruptible(&dev->struct_mutex);
 	}
+
+err_relock:
 	if (err) {
 		mutex_lock(&dev->struct_mutex);
 		i915_gem_ww_ctx_init(&eb->ww, true);
@@ -1736,6 +1758,15 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 
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
@@ -1799,18 +1830,41 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
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
 
 	err = eb_lookup_vmas(eb);
 	if (err)
 		return err;
 
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
+		/* Need to drop all locks now for throttling, take slowpath */
+		goto slow;
+	}
+
+	/* only throttle once, even if we didn't need to throttle */
+	throttle = false;
+
 	err = eb_validate_vmas(eb);
 	if (err)
 		goto err;
@@ -1835,14 +1889,14 @@ static int eb_relocate_parse(struct i915_execbuffer *eb)
 			return err;
 
 		goto retry;
-	}
-	else if (err)
+	} else if (err) {
 		goto slow;
+	}
 
 	return 0;
 
 slow:
-	err = eb_relocate_parse_slow(eb);
+	err = eb_relocate_parse_slow(eb, rq);
 	if (err)
 		/*
 		 * If the user expects the execobject.offset and
@@ -2276,7 +2330,7 @@ static const enum intel_engine_id user_ring_map[] = {
 	[I915_EXEC_VEBOX]	= VECS0
 };
 
-static struct i915_request *eb_throttle(struct intel_context *ce)
+static struct i915_request *eb_throttle(struct i915_execbuffer *eb, struct intel_context *ce)
 {
 	struct intel_ring *ring = ce->ring;
 	struct intel_timeline *tl = ce->timeline;
@@ -2310,22 +2364,17 @@ static struct i915_request *eb_throttle(struct intel_context *ce)
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
@@ -2334,7 +2383,7 @@ static int __eb_pin_engine(struct i915_execbuffer *eb, struct intel_context *ce)
 	 */
 	err = intel_context_pin(ce);
 	if (err)
-		return err;
+		return ERR_PTR(err);
 
 	/*
 	 * Take a local wakeref for preparing to dispatch the execbuf as
@@ -2346,38 +2395,17 @@ static int __eb_pin_engine(struct i915_execbuffer *eb, struct intel_context *ce)
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
-		if (i915_request_wait(rq,
-				      I915_WAIT_INTERRUPTIBLE,
-				      MAX_SCHEDULE_TIMEOUT) < 0) {
-			i915_request_put(rq);
-			err = -EINTR;
-			goto err_exit;
-		}
-
-		i915_request_put(rq);
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
@@ -2385,6 +2413,11 @@ static void eb_unpin_engine(struct i915_execbuffer *eb)
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
@@ -2436,7 +2469,7 @@ eb_select_legacy_ring(struct i915_execbuffer *eb)
 }
 
 static int
-eb_pin_engine(struct i915_execbuffer *eb)
+eb_select_engine(struct i915_execbuffer *eb)
 {
 	struct intel_context *ce;
 	unsigned int idx;
@@ -2451,12 +2484,28 @@ eb_pin_engine(struct i915_execbuffer *eb)
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
 
-	err = __eb_pin_engine(eb, ce);
-	intel_context_put(ce);
+	/*
+	 * ABI: Before userspace accesses the GPU (e.g. execbuffer), report
+	 * EIO if the GPU is already wedged.
+	 */
+	err = intel_gt_terminally_wedged(ce->engine->gt);
+	if (err) {
+		intel_context_put(ce);
+		return err;
+	}
+
+	eb->context = ce;
+	eb->engine = ce->engine;
 
 	return err;
 }
 
+static void
+eb_put_engine(struct i915_execbuffer *eb)
+{
+	intel_context_put(eb->context);
+}
+
 static void
 __free_fence_array(struct drm_syncobj **fences, unsigned int n)
 {
@@ -2678,7 +2727,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (unlikely(err))
 		goto err_destroy;
 
-	err = eb_pin_engine(&eb);
+	err = eb_select_engine(&eb);
 	if (unlikely(err))
 		goto err_context;
 
@@ -2808,13 +2857,16 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 err_vma:
 	if (eb.exec)
 		eb_release_vmas(&eb);
+	else
+		eb_unpin_engine(&eb);
+
 	if (eb.trampoline)
 		i915_vma_unpin(eb.trampoline);
 	WARN_ON(err == -EDEADLK);
 	i915_gem_ww_ctx_fini(&eb.ww);
 	mutex_unlock(&dev->struct_mutex);
 err_engine:
-	eb_unpin_engine(&eb);
+	eb_put_engine(&eb);
 err_context:
 	i915_gem_context_put(eb.gem_context);
 err_destroy:
-- 
2.25.0.24.g3f081b084b0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
