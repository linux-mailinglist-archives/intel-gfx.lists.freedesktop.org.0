Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEF51249B6
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 15:31:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B00789CB9;
	Wed, 18 Dec 2019 14:31:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C290289CB9
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 14:31:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19622418-1500050 
 for multiple; Wed, 18 Dec 2019 14:31:13 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2019 14:31:06 +0000
Message-Id: <20191218143111.3852266-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218143111.3852266-1-chris@chris-wilson.co.uk>
References: <20191218143111.3852266-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/8] drm/i915: Push the use-semaphore marker
 onto the intel_context
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

Instead of rummaging through the intel_context to peek at the GEM
context in the middle of request submission to decide whether to use
semaphores, store that information on the intel_context itself.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 52 +++++++++++++------
 drivers/gpu/drm/i915/gt/intel_context.c       |  3 ++
 drivers/gpu/drm/i915/gt/intel_context.h       | 15 ++++++
 drivers/gpu/drm/i915/gt/intel_context_types.h |  7 +--
 drivers/gpu/drm/i915/i915_request.c           |  8 ++-
 5 files changed, 60 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 42585a20a9ae..bc6349321b2c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1852,6 +1852,40 @@ set_persistence(struct i915_gem_context *ctx,
 	return __context_set_persistence(ctx, args->value);
 }
 
+static void __apply_priority(struct intel_context *ce, void *arg)
+{
+	struct i915_gem_context *ctx = arg;
+
+	if (intel_context_use_semaphores(ce) &&
+	    ctx->sched.priority < I915_PRIORITY_NORMAL)
+		intel_context_clear_use_semaphores(ce);
+}
+
+static int set_priority(struct i915_gem_context *ctx,
+			const struct drm_i915_gem_context_param *args)
+{
+	s64 priority = args->value;
+
+	if (args->size)
+		return -EINVAL;
+
+	if (!(ctx->i915->caps.scheduler & I915_SCHEDULER_CAP_PRIORITY))
+		return -ENODEV;
+
+	if (priority > I915_CONTEXT_MAX_USER_PRIORITY ||
+	    priority < I915_CONTEXT_MIN_USER_PRIORITY)
+		return -EINVAL;
+
+	if (priority > I915_CONTEXT_DEFAULT_PRIORITY &&
+	    !capable(CAP_SYS_NICE))
+		return -EPERM;
+
+	ctx->sched.priority = I915_USER_PRIORITY(priority);
+	context_apply_all(ctx, __apply_priority, ctx);
+
+	return 0;
+}
+
 static int ctx_setparam(struct drm_i915_file_private *fpriv,
 			struct i915_gem_context *ctx,
 			struct drm_i915_gem_context_param *args)
@@ -1898,23 +1932,7 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
 		break;
 
 	case I915_CONTEXT_PARAM_PRIORITY:
-		{
-			s64 priority = args->value;
-
-			if (args->size)
-				ret = -EINVAL;
-			else if (!(ctx->i915->caps.scheduler & I915_SCHEDULER_CAP_PRIORITY))
-				ret = -ENODEV;
-			else if (priority > I915_CONTEXT_MAX_USER_PRIORITY ||
-				 priority < I915_CONTEXT_MIN_USER_PRIORITY)
-				ret = -EINVAL;
-			else if (priority > I915_CONTEXT_DEFAULT_PRIORITY &&
-				 !capable(CAP_SYS_NICE))
-				ret = -EPERM;
-			else
-				ctx->sched.priority =
-					I915_USER_PRIORITY(priority);
-		}
+		ret = set_priority(ctx, args);
 		break;
 
 	case I915_CONTEXT_PARAM_SSEU:
diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index ae0dc40031df..e73e976e5ecd 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -233,6 +233,9 @@ intel_context_init(struct intel_context *ce,
 	rcu_read_unlock();
 	if (ctx->timeline)
 		ce->timeline = intel_timeline_get(ctx->timeline);
+	if (ctx->sched.priority >= I915_PRIORITY_NORMAL &&
+	    intel_engine_has_semaphores(engine))
+		__set_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
 
 	ce->engine = engine;
 	ce->ops = engine->cops;
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 65389cb8a565..e7ac7027969f 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -162,6 +162,21 @@ static inline struct intel_ring *__intel_context_ring_size(u64 sz)
 	return u64_to_ptr(struct intel_ring, sz);
 }
 
+static inline bool intel_context_use_semaphores(const struct intel_context *ce)
+{
+	return test_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
+}
+
+static inline void intel_context_set_use_semaphores(struct intel_context *ce)
+{
+	set_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
+}
+
+static inline void intel_context_clear_use_semaphores(struct intel_context *ce)
+{
+	clear_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
+}
+
 static inline bool intel_context_is_banned(const struct intel_context *ce)
 {
 	return test_bit(CONTEXT_BANNED, &ce->flags);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 597448f6e98b..af0d55b111f5 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -56,9 +56,10 @@ struct intel_context {
 	unsigned long flags;
 #define CONTEXT_ALLOC_BIT		0
 #define CONTEXT_VALID_BIT		1
-#define CONTEXT_BANNED			2
-#define CONTEXT_FORCE_SINGLE_SUBMISSION	3
-#define CONTEXT_NOPREEMPT		4
+#define CONTEXT_USE_SEMAPHORES		2
+#define CONTEXT_BANNED			3
+#define CONTEXT_FORCE_SINGLE_SUBMISSION	4
+#define CONTEXT_NOPREEMPT		5
 
 	u32 *lrc_reg_state;
 	u64 lrc_desc;
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index fdb7cb60d08f..e8290bcbc185 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -917,18 +917,16 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
 			return ret;
 	}
 
-	if (to->engine == from->engine) {
+	if (to->engine == from->engine)
 		ret = i915_sw_fence_await_sw_fence_gfp(&to->submit,
 						       &from->submit,
 						       I915_FENCE_GFP);
-	} else if (intel_engine_has_semaphores(to->engine) &&
-		   to->context->gem_context->sched.priority >= I915_PRIORITY_NORMAL) {
+	else if (intel_context_use_semaphores(to->context))
 		ret = emit_semaphore_wait(to, from, I915_FENCE_GFP);
-	} else {
+	else
 		ret = i915_sw_fence_await_dma_fence(&to->submit,
 						    &from->fence, 0,
 						    I915_FENCE_GFP);
-	}
 	if (ret < 0)
 		return ret;
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
