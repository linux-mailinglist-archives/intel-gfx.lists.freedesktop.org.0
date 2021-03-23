Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3C83466C7
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 18:51:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCACB6EC5B;
	Tue, 23 Mar 2021 17:51:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DD976EB86
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 17:51:56 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id
 il9-20020a17090b1649b0290114bcb0d6c2so5227905pjb.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 10:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=md110hNLxE8dbTqk7pIPHacyxGQ+PjvjwqEzWKcViW0=;
 b=ZIZxRRzTvWobeJN1g4EdyhAYuTS/LLtnx74+m+0T0Sby8Jt+eK3xc8TlY1kjjGatC2
 7bCxopZB5h1OB1Yd1cOcuzFy3/hY4X26AoPktioiKibE6Dt5L32W/LT2gAxNiJ3xAAqk
 T3jPeY/ZPKnhl3JNMDfno3NV3tDrp/C068KPtMrz2RxHb/rF6o1iJUtYL/WuRKtioahN
 UchCcK97bP8LWvHAJq2/6h9WsezkRX2nj/ki5+t4lbS41NAJHtrYhHQFWKTi9cPRIZO1
 U/k0i0PEOPeokMRX9wjAfcBXzTyZk+W905ItbaLecugrRQd14eCAaVFHePRcPtQOv8Si
 aOdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=md110hNLxE8dbTqk7pIPHacyxGQ+PjvjwqEzWKcViW0=;
 b=ndAM7RPDOY95/pBti23q3Kt2ayUdO7+8v3NAY0m2X4agM2J6SaOSWCtxHrGu8a18Rn
 WsPL/2+auRTOPXIStP9WMMyeGfOlZU48QV2n6330bcat9SjTcFEt2jqdFc2sJTlcp6fw
 dB1LDfLfa3V00X3A4iNKq3pvWJ0+ZWsL5A03IeDS3M/YSFdJgMj71I8uYOGsjzu3mkz4
 WWyFJfNXjsel9YeHqePGaTNfiQsXc25IU9pvNQuwfAvWb1d9egQbhMenPP0MH21URIop
 +BdbOUpIs6Rh3WY7SHs+JVALCW1/qwb7Wct52IT0mSfANGTcb0n4loQxMAZYJNk3BrYJ
 Aj7g==
X-Gm-Message-State: AOAM532mWfjYGXF8oRJeUjCmr8CCJdeUPDtzDg9UmxkzU9/OP53nGwjn
 CbOKkSaH43EjEahZEjhAMYBb4g==
X-Google-Smtp-Source: ABdhPJzfu7Eqm9p860pc0s5n7+TyisD3h8Nuyx/7kpmSN6zmLrjx0Ej2JQb2SimMVHwJp6BLZQBvhA==
X-Received: by 2002:a17:90a:c096:: with SMTP id
 o22mr5581792pjs.119.1616521916082; 
 Tue, 23 Mar 2021 10:51:56 -0700 (PDT)
Received: from omlet.com ([134.134.137.77])
 by smtp.gmail.com with ESMTPSA id l25sm7977682pgu.72.2021.03.23.10.51.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 10:51:55 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 23 Mar 2021 12:51:49 -0500
Message-Id: <20210323175149.3390801-1-jason@jlekstrand.net>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210319223856.2983244-5-jason@jlekstrand.net>
References: <20210319223856.2983244-5-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Implement SINGLE_TIMELINE with a
 syncobj (v2)
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

This API is entirely unnecessary and I'd love to get rid of it.  If
userspace wants a single timeline across multiple contexts, they can
either use implicit synchronization or a syncobj, both of which existed
at the time this feature landed.  The justification given at the time
was that it would help GL drivers which are inherently single-timeline.
However, neither of our GL drivers actually wanted the feature.  i965
was already in maintenance mode at the time and iris uses syncobj for
everything.

Unfortunately, as much as I'd love to get rid of it, it is used by the
media driver so we can't do that.  We can, however, do the next-best
thing which is to embed a syncobj in the context and do exactly what
we'd expect from userspace internally.  This isn't an entirely identical
implementation because it's no longer atomic if userspace races with
itself by calling execbuffer2 twice simultaneously from different
threads.  It won't crash in that case; it just doesn't guarantee any
ordering between those two submits.

Moving SINGLE_TIMELINE to a syncobj emulation has a couple of technical
advantages beyond mere annoyance.  One is that intel_timeline is no
longer an api-visible object and can remain entirely an implementation
detail.  This may be advantageous as we make scheduler changes going
forward.  Second is that, together with deleting the CLONE_CONTEXT API,
we should now have a 1:1 mapping between intel_context and
intel_timeline which may help us reduce locking.

v2 (Jason Ekstrand):
 - Update the comment on i915_gem_context::syncobj to mention that it's
   an emulation and the possible race if userspace calls execbuffer2
   twice on the same context concurrently.
 - Wrap the checks for eb.gem_context->syncobj in unlikely()
 - Drop the dma_fence reference
 - Improved commit message

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 47 ++++---------------
 .../gpu/drm/i915/gem/i915_gem_context_types.h | 14 +++++-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 16 +++++++
 3 files changed, 39 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index f88bac19333ec..e094f4a1ca4cd 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -67,6 +67,8 @@
 #include <linux/log2.h>
 #include <linux/nospec.h>
 
+#include <drm/drm_syncobj.h>
+
 #include "gt/gen6_ppgtt.h"
 #include "gt/intel_context.h"
 #include "gt/intel_engine_heartbeat.h"
@@ -224,10 +226,6 @@ static void intel_context_set_gem(struct intel_context *ce,
 		ce->vm = vm;
 	}
 
-	GEM_BUG_ON(ce->timeline);
-	if (ctx->timeline)
-		ce->timeline = intel_timeline_get(ctx->timeline);
-
 	if (ctx->sched.priority >= I915_PRIORITY_NORMAL &&
 	    intel_engine_has_timeslices(ce->engine))
 		__set_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
@@ -344,8 +342,8 @@ void i915_gem_context_release(struct kref *ref)
 	mutex_destroy(&ctx->engines_mutex);
 	mutex_destroy(&ctx->lut_mutex);
 
-	if (ctx->timeline)
-		intel_timeline_put(ctx->timeline);
+	if (ctx->syncobj)
+		drm_syncobj_put(ctx->syncobj);
 
 	put_pid(ctx->pid);
 	mutex_destroy(&ctx->mutex);
@@ -790,33 +788,11 @@ static void __assign_ppgtt(struct i915_gem_context *ctx,
 		i915_vm_close(vm);
 }
 
-static void __set_timeline(struct intel_timeline **dst,
-			   struct intel_timeline *src)
-{
-	struct intel_timeline *old = *dst;
-
-	*dst = src ? intel_timeline_get(src) : NULL;
-
-	if (old)
-		intel_timeline_put(old);
-}
-
-static void __apply_timeline(struct intel_context *ce, void *timeline)
-{
-	__set_timeline(&ce->timeline, timeline);
-}
-
-static void __assign_timeline(struct i915_gem_context *ctx,
-			      struct intel_timeline *timeline)
-{
-	__set_timeline(&ctx->timeline, timeline);
-	context_apply_all(ctx, __apply_timeline, timeline);
-}
-
 static struct i915_gem_context *
 i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
 {
 	struct i915_gem_context *ctx;
+	int ret;
 
 	if (flags & I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE &&
 	    !HAS_EXECLISTS(i915))
@@ -845,16 +821,13 @@ i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
 	}
 
 	if (flags & I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE) {
-		struct intel_timeline *timeline;
-
-		timeline = intel_timeline_create(&i915->gt);
-		if (IS_ERR(timeline)) {
+		ret = drm_syncobj_create(&ctx->syncobj,
+					 DRM_SYNCOBJ_CREATE_SIGNALED,
+					 NULL);
+		if (ret) {
 			context_close(ctx);
-			return ERR_CAST(timeline);
+			return ERR_PTR(ret);
 		}
-
-		__assign_timeline(ctx, timeline);
-		intel_timeline_put(timeline);
 	}
 
 	trace_i915_context_create(ctx);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 676592e27e7d2..df76767f0c41b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -83,7 +83,19 @@ struct i915_gem_context {
 	struct i915_gem_engines __rcu *engines;
 	struct mutex engines_mutex; /* guards writes to engines */
 
-	struct intel_timeline *timeline;
+	/**
+	 * @syncobj: Shared timeline syncobj
+	 *
+	 * When the SHARED_TIMELINE flag is set on context creation, we
+	 * emulate a single timeline across all engines using this syncobj.
+	 * For every execbuffer2 call, this syncobj is used as both an in-
+	 * and out-fence.  Unlike the real intel_timeline, this doesn't
+	 * provide perfect atomic in-order guarantees if the client races
+	 * with itself by calling execbuffer2 twice concurrently.  However,
+	 * if userspace races with itself, that's not likely to yield well-
+	 * defined results anyway so we choose to not care.
+	 */
+	struct drm_syncobj *syncobj;
 
 	/**
 	 * @vm: unique address space (GTT)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 96403130a373d..2e9748c1edddf 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -3295,6 +3295,16 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		goto err_vma;
 	}
 
+	if (unlikely(eb.gem_context->syncobj)) {
+		struct dma_fence *fence;
+
+		fence = drm_syncobj_fence_get(eb.gem_context->syncobj);
+		err = i915_request_await_dma_fence(eb.request, fence);
+		if (err)
+			goto err_ext;
+		dma_fence_put(fence);
+	}
+
 	if (in_fence) {
 		if (args->flags & I915_EXEC_FENCE_SUBMIT)
 			err = i915_request_await_execution(eb.request,
@@ -3351,6 +3361,12 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 			fput(out_fence->file);
 		}
 	}
+
+	if (unlikely(eb.gem_context->syncobj)) {
+		drm_syncobj_replace_fence(eb.gem_context->syncobj,
+					  &eb.request->fence);
+	}
+
 	i915_request_put(eb.request);
 
 err_vma:
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
