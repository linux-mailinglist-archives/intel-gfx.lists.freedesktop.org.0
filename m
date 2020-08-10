Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8791E2404C4
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 12:33:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEA636E3EF;
	Mon, 10 Aug 2020 10:33:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 470156E3DB
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Aug 2020 10:33:28 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Aug 2020 12:30:50 +0200
Message-Id: <20200810103103.303818-12-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/24] drm/i915: Add ww context handling to
 context_barrier_task
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

This is required if we want to pass a ww context in intel_context_pin
and gen6_ppgtt_pin().

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 55 ++++++++++++++-----
 .../drm/i915/gem/selftests/i915_gem_context.c | 22 +++-----
 2 files changed, 48 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index db893f6c516b..34c8b0dd85e0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1106,6 +1106,7 @@ I915_SELFTEST_DECLARE(static intel_engine_mask_t context_barrier_inject_fault);
 static int context_barrier_task(struct i915_gem_context *ctx,
 				intel_engine_mask_t engines,
 				bool (*skip)(struct intel_context *ce, void *data),
+				int (*pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void *data),
 				int (*emit)(struct i915_request *rq, void *data),
 				void (*task)(void *data),
 				void *data)
@@ -1113,6 +1114,7 @@ static int context_barrier_task(struct i915_gem_context *ctx,
 	struct context_barrier_task *cb;
 	struct i915_gem_engines_iter it;
 	struct i915_gem_engines *e;
+	struct i915_gem_ww_ctx ww;
 	struct intel_context *ce;
 	int err = 0;
 
@@ -1150,10 +1152,21 @@ static int context_barrier_task(struct i915_gem_context *ctx,
 		if (skip && skip(ce, data))
 			continue;
 
-		rq = intel_context_create_request(ce);
+		i915_gem_ww_ctx_init(&ww, true);
+retry:
+		err = intel_context_pin(ce);
+		if (err)
+			goto err;
+
+		if (pin)
+			err = pin(ce, &ww, data);
+		if (err)
+			goto err_unpin;
+
+		rq = i915_request_create(ce);
 		if (IS_ERR(rq)) {
 			err = PTR_ERR(rq);
-			break;
+			goto err_unpin;
 		}
 
 		err = 0;
@@ -1163,6 +1176,16 @@ static int context_barrier_task(struct i915_gem_context *ctx,
 			err = i915_active_add_request(&cb->base, rq);
 
 		i915_request_add(rq);
+err_unpin:
+		intel_context_unpin(ce);
+err:
+		if (err == -EDEADLK) {
+			err = i915_gem_ww_ctx_backoff(&ww);
+			if (!err)
+				goto retry;
+		}
+		i915_gem_ww_ctx_fini(&ww);
+
 		if (err)
 			break;
 	}
@@ -1218,6 +1241,17 @@ static void set_ppgtt_barrier(void *data)
 	i915_vm_close(old);
 }
 
+static int pin_ppgtt_update(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void *data)
+{
+	struct i915_address_space *vm = ce->vm;
+
+	if (!HAS_LOGICAL_RING_CONTEXTS(vm->i915))
+		/* ppGTT is not part of the legacy context image */
+		return gen6_ppgtt_pin(i915_vm_to_ppgtt(vm));
+
+	return 0;
+}
+
 static int emit_ppgtt_update(struct i915_request *rq, void *data)
 {
 	struct i915_address_space *vm = rq->context->vm;
@@ -1274,20 +1308,10 @@ static int emit_ppgtt_update(struct i915_request *rq, void *data)
 
 static bool skip_ppgtt_update(struct intel_context *ce, void *data)
 {
-	if (!test_bit(CONTEXT_ALLOC_BIT, &ce->flags))
-		return true;
-
 	if (HAS_LOGICAL_RING_CONTEXTS(ce->engine->i915))
-		return false;
-
-	if (!atomic_read(&ce->pin_count))
-		return true;
-
-	/* ppGTT is not part of the legacy context image */
-	if (gen6_ppgtt_pin(i915_vm_to_ppgtt(ce->vm)))
-		return true;
-
-	return false;
+		return !ce->state;
+	else
+		return !atomic_read(&ce->pin_count);
 }
 
 static int set_ppgtt(struct drm_i915_file_private *file_priv,
@@ -1338,6 +1362,7 @@ static int set_ppgtt(struct drm_i915_file_private *file_priv,
 	 */
 	err = context_barrier_task(ctx, ALL_ENGINES,
 				   skip_ppgtt_update,
+				   pin_ppgtt_update,
 				   emit_ppgtt_update,
 				   set_ppgtt_barrier,
 				   old);
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 9160a335c684..fa40006b453a 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1920,8 +1920,8 @@ static int mock_context_barrier(void *arg)
 		return -ENOMEM;
 
 	counter = 0;
-	err = context_barrier_task(ctx, 0,
-				   NULL, NULL, mock_barrier_task, &counter);
+	err = context_barrier_task(ctx, 0, NULL, NULL, NULL,
+				   mock_barrier_task, &counter);
 	if (err) {
 		pr_err("Failed at line %d, err=%d\n", __LINE__, err);
 		goto out;
@@ -1933,11 +1933,8 @@ static int mock_context_barrier(void *arg)
 	}
 
 	counter = 0;
-	err = context_barrier_task(ctx, ALL_ENGINES,
-				   skip_unused_engines,
-				   NULL,
-				   mock_barrier_task,
-				   &counter);
+	err = context_barrier_task(ctx, ALL_ENGINES, skip_unused_engines,
+				   NULL, NULL, mock_barrier_task, &counter);
 	if (err) {
 		pr_err("Failed at line %d, err=%d\n", __LINE__, err);
 		goto out;
@@ -1957,8 +1954,8 @@ static int mock_context_barrier(void *arg)
 
 	counter = 0;
 	context_barrier_inject_fault = BIT(RCS0);
-	err = context_barrier_task(ctx, ALL_ENGINES,
-				   NULL, NULL, mock_barrier_task, &counter);
+	err = context_barrier_task(ctx, ALL_ENGINES, NULL, NULL, NULL,
+				   mock_barrier_task, &counter);
 	context_barrier_inject_fault = 0;
 	if (err == -ENXIO)
 		err = 0;
@@ -1972,11 +1969,8 @@ static int mock_context_barrier(void *arg)
 		goto out;
 
 	counter = 0;
-	err = context_barrier_task(ctx, ALL_ENGINES,
-				   skip_unused_engines,
-				   NULL,
-				   mock_barrier_task,
-				   &counter);
+	err = context_barrier_task(ctx, ALL_ENGINES, skip_unused_engines,
+				   NULL, NULL, mock_barrier_task, &counter);
 	if (err) {
 		pr_err("Failed at line %d, err=%d\n", __LINE__, err);
 		goto out;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
