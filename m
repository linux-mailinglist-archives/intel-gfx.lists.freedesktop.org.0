Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA40228135D
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 15:00:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D4D76E96C;
	Fri,  2 Oct 2020 12:59:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68CA66E96B
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 12:59:49 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Oct 2020 14:59:02 +0200
Message-Id: <20201002125939.50817-25-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
References: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 24/61] drm/i915: Take reservation lock around
 i915_vma_pin.
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

We previously complained when ww == NULL.

This function is now only used in selftests to pin an object,
and ww locking is now fixed.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../i915/gem/selftests/i915_gem_coherency.c   | 14 +++++--------
 drivers/gpu/drm/i915/i915_gem.c               |  6 +++++-
 drivers/gpu/drm/i915/i915_vma.c               |  4 +---
 drivers/gpu/drm/i915/i915_vma.h               | 20 +++++++++++++++----
 4 files changed, 27 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index 7049a6bbc03d..2e439bb269d6 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
@@ -199,16 +199,14 @@ static int gpu_set(struct context *ctx, unsigned long offset, u32 v)
 	u32 *cs;
 	int err;
 
+	vma = i915_gem_object_ggtt_pin(ctx->obj, NULL, 0, 0, 0);
+	if (IS_ERR(vma))
+		return PTR_ERR(vma);
+
 	i915_gem_object_lock(ctx->obj, NULL);
 	err = i915_gem_object_set_to_gtt_domain(ctx->obj, true);
 	if (err)
-		goto out_unlock;
-
-	vma = i915_gem_object_ggtt_pin(ctx->obj, NULL, 0, 0, 0);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto out_unlock;
-	}
+		goto out_unpin;
 
 	rq = intel_engine_create_kernel_request(ctx->engine);
 	if (IS_ERR(rq)) {
@@ -248,9 +246,7 @@ static int gpu_set(struct context *ctx, unsigned long offset, u32 v)
 	i915_request_add(rq);
 out_unpin:
 	i915_vma_unpin(vma);
-out_unlock:
 	i915_gem_object_unlock(ctx->obj);
-
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index d349c0b796ec..929a8f20cca4 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1036,7 +1036,11 @@ i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
 			return ERR_PTR(ret);
 	}
 
-	ret = i915_vma_pin_ww(vma, ww, size, alignment, flags | PIN_GLOBAL);
+	if (ww)
+		ret = i915_vma_pin_ww(vma, ww, size, alignment, flags | PIN_GLOBAL);
+	else
+		ret = i915_vma_pin(vma, size, alignment, flags | PIN_GLOBAL);
+
 	if (ret)
 		return ERR_PTR(ret);
 
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index f50250c8685a..ed6cf4529d5d 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -861,9 +861,7 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	int err;
 
 #ifdef CONFIG_PROVE_LOCKING
-	if (debug_locks && lockdep_is_held(&vma->vm->i915->drm.struct_mutex))
-		WARN_ON(!ww);
-	if (debug_locks && ww && vma->resv)
+	if (debug_locks && !WARN_ON(!ww) && vma->resv)
 		assert_vma_held(vma);
 #endif
 
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 3c951d5428cf..cea6e7b8611b 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -246,10 +246,22 @@ i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 static inline int __must_check
 i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 {
-#ifdef CONFIG_LOCKDEP
-	WARN_ON_ONCE(vma->resv && dma_resv_held(vma->resv));
-#endif
-	return i915_vma_pin_ww(vma, NULL, size, alignment, flags);
+	struct i915_gem_ww_ctx ww;
+	int err;
+
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	err = i915_gem_object_lock(vma->obj, &ww);
+	if (!err)
+		err = i915_vma_pin_ww(vma, &ww, size, alignment, flags);
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+
+	return err;
 }
 
 int i915_ggtt_pin(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
