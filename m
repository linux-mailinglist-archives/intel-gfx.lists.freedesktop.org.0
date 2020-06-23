Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 474DB2054AE
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 16:29:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 697E36E9C5;
	Tue, 23 Jun 2020 14:28:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EAA76E9A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 14:28:48 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jun 2020 16:28:27 +0200
Message-Id: <20200623142843.423594-10-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/26] drm/i915: Use ww locking in
 intel_renderstate.
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

We want to start using ww locking in intel_context_pin, for this
we need to lock multiple objects, and the single i915_gem_object_lock
is not enough.

Convert to using ww-waiting, and make sure we always pin intel_context_state,
even if we don't have a renderstate object.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c          | 21 +++---
 drivers/gpu/drm/i915/gt/intel_renderstate.c | 73 +++++++++++++++------
 drivers/gpu/drm/i915/gt/intel_renderstate.h |  9 ++-
 3 files changed, 71 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index ebc29b6ee86c..24a0e47a2477 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -398,21 +398,20 @@ static int __engines_record_defaults(struct intel_gt *gt)
 		/* We must be able to switch to something! */
 		GEM_BUG_ON(!engine->kernel_context);
 
-		err = intel_renderstate_init(&so, engine);
-		if (err)
-			goto out;
-
 		ce = intel_context_create(engine);
 		if (IS_ERR(ce)) {
 			err = PTR_ERR(ce);
 			goto out;
 		}
 
-		rq = intel_context_create_request(ce);
+		err = intel_renderstate_init(&so, ce);
+		if (err)
+			goto err;
+
+		rq = i915_request_create(ce);
 		if (IS_ERR(rq)) {
 			err = PTR_ERR(rq);
-			intel_context_put(ce);
-			goto out;
+			goto err_fini;
 		}
 
 		err = intel_engine_emit_ctx_wa(rq);
@@ -426,9 +425,13 @@ static int __engines_record_defaults(struct intel_gt *gt)
 err_rq:
 		requests[id] = i915_request_get(rq);
 		i915_request_add(rq);
-		intel_renderstate_fini(&so);
-		if (err)
+err_fini:
+		intel_renderstate_fini(&so, ce);
+err:
+		if (err) {
+			intel_context_put(ce);
 			goto out;
+		}
 	}
 
 	/* Flush the default context image to memory, and enable powersaving. */
diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
index 6db23389e427..3f7881de6a3c 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -27,6 +27,7 @@
 
 #include "i915_drv.h"
 #include "intel_renderstate.h"
+#include "gt/intel_context.h"
 #include "intel_ring.h"
 
 static const struct intel_renderstate_rodata *
@@ -157,33 +158,47 @@ static int render_state_setup(struct intel_renderstate *so,
 #undef OUT_BATCH
 
 int intel_renderstate_init(struct intel_renderstate *so,
-			   struct intel_engine_cs *engine)
+			   struct intel_context *ce)
 {
-	struct drm_i915_gem_object *obj;
+	struct intel_engine_cs *engine = ce->engine;
+	struct drm_i915_gem_object *obj = NULL;
 	int err;
 
 	memset(so, 0, sizeof(*so));
 
 	so->rodata = render_state_get_rodata(engine);
-	if (!so->rodata)
-		return 0;
+	if (so->rodata) {
+		if (so->rodata->batch_items * 4 > PAGE_SIZE)
+			return -EINVAL;
+
+		obj = i915_gem_object_create_internal(engine->i915, PAGE_SIZE);
+		if (IS_ERR(obj))
+			return PTR_ERR(obj);
+
+		so->vma = i915_vma_instance(obj, &engine->gt->ggtt->vm, NULL);
+		if (IS_ERR(so->vma)) {
+			err = PTR_ERR(so->vma);
+			goto err_obj;
+		}
+	}
 
-	if (so->rodata->batch_items * 4 > PAGE_SIZE)
-		return -EINVAL;
+	i915_gem_ww_ctx_init(&so->ww, true);
+retry:
+	err = intel_context_pin(ce);
+	if (err)
+		goto err_fini;
 
-	obj = i915_gem_object_create_internal(engine->i915, PAGE_SIZE);
-	if (IS_ERR(obj))
-		return PTR_ERR(obj);
+	/* return early if there's nothing to setup */
+	if (!err && !so->rodata)
+		return 0;
 
-	so->vma = i915_vma_instance(obj, &engine->gt->ggtt->vm, NULL);
-	if (IS_ERR(so->vma)) {
-		err = PTR_ERR(so->vma);
-		goto err_obj;
-	}
+	err = i915_gem_object_lock(so->vma->obj, &so->ww);
+	if (err)
+		goto err_context;
 
 	err = i915_vma_pin(so->vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
 	if (err)
-		goto err_obj;
+		goto err_context;
 
 	err = render_state_setup(so, engine->i915);
 	if (err)
@@ -193,8 +208,18 @@ int intel_renderstate_init(struct intel_renderstate *so,
 
 err_unpin:
 	i915_vma_unpin(so->vma);
+err_context:
+	intel_context_unpin(ce);
+err_fini:
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&so->ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&so->ww);
 err_obj:
-	i915_gem_object_put(obj);
+	if (obj)
+		i915_gem_object_put(obj);
 	so->vma = NULL;
 	return err;
 }
@@ -208,11 +233,9 @@ int intel_renderstate_emit(struct intel_renderstate *so,
 	if (!so->vma)
 		return 0;
 
-	i915_vma_lock(so->vma);
 	err = i915_request_await_object(rq, so->vma->obj, false);
 	if (err == 0)
 		err = i915_vma_move_to_active(so->vma, rq, 0);
-	i915_vma_unlock(so->vma);
 	if (err)
 		return err;
 
@@ -233,7 +256,17 @@ int intel_renderstate_emit(struct intel_renderstate *so,
 	return 0;
 }
 
-void intel_renderstate_fini(struct intel_renderstate *so)
+void intel_renderstate_fini(struct intel_renderstate *so,
+			    struct intel_context *ce)
 {
-	i915_vma_unpin_and_release(&so->vma, 0);
+	if (so->vma) {
+		i915_vma_unpin(so->vma);
+		i915_vma_close(so->vma);
+	}
+
+	intel_context_unpin(ce);
+	i915_gem_ww_ctx_fini(&so->ww);
+
+	if (so->vma)
+		i915_gem_object_put(so->vma->obj);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.h b/drivers/gpu/drm/i915/gt/intel_renderstate.h
index 5700be69a05a..713aa1e86c80 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.h
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.h
@@ -25,9 +25,10 @@
 #define _INTEL_RENDERSTATE_H_
 
 #include <linux/types.h>
+#include "i915_gem.h"
 
 struct i915_request;
-struct intel_engine_cs;
+struct intel_context;
 struct i915_vma;
 
 struct intel_renderstate_rodata {
@@ -49,6 +50,7 @@ extern const struct intel_renderstate_rodata gen8_null_state;
 extern const struct intel_renderstate_rodata gen9_null_state;
 
 struct intel_renderstate {
+	struct i915_gem_ww_ctx ww;
 	const struct intel_renderstate_rodata *rodata;
 	struct i915_vma *vma;
 	u32 batch_offset;
@@ -58,9 +60,10 @@ struct intel_renderstate {
 };
 
 int intel_renderstate_init(struct intel_renderstate *so,
-			   struct intel_engine_cs *engine);
+			   struct intel_context *ce);
 int intel_renderstate_emit(struct intel_renderstate *so,
 			   struct i915_request *rq);
-void intel_renderstate_fini(struct intel_renderstate *so);
+void intel_renderstate_fini(struct intel_renderstate *so,
+			    struct intel_context *ce);
 
 #endif /* _INTEL_RENDERSTATE_H_ */
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
