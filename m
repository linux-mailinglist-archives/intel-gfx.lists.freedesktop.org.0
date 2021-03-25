Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16082349C2D
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 23:21:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 345D26E0E7;
	Thu, 25 Mar 2021 22:21:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com
 [IPv6:2607:f8b0:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 161756E0E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 22:21:39 +0000 (UTC)
Received: by mail-pf1-x434.google.com with SMTP id 11so3482448pfn.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 15:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ye9zP+9J8d/hTkgyYlaBFZOd/c/Bs5psguXLONXinxI=;
 b=IlxDoQhMQZhQW/cpdgrjsVCvXS+T579WEHSDPRJuHuXbt0X39huHczMWfbviicJqZr
 1lkIzrqsePgdWpx8gb37AQlISCFQ2VBAXGNANJRKp9C1fbGaIxzgP14jWyCuUnK/ggBJ
 MwEKsyCvS80SaCrsNuN0irsuDRzuUbsL+H6i3svdAa0/77JW6956+vMU+eI9cLDeN+gF
 bwfozq9AKAfuVAnUo01BgBcNJmfFCZ2/pyVHZg+hkgGUejXN/0BxXdeFxYbT2V2+K7uw
 sFBFoZySXMYqQfH/t18ibHnbxSrAspvvzDbzIshlMXuyRJqyQ1nCBqKdCg5Y6YEdkqEw
 U6mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ye9zP+9J8d/hTkgyYlaBFZOd/c/Bs5psguXLONXinxI=;
 b=ZcyFxESZcWjOhgTWaFBFm/B5AhuGp89pTVCiiRIEQVnuUve4EoaqfiKjKm8ShkU859
 bJaf5ARWaaj4o4E/gfCQ4GFrnSBSpXdZ0/HYaME8porAZdX/GFGyLuzqYkiYQsTB0wgZ
 ETIBmq/2DBlSEuPTlgLdgJP54VcrS2uMTPa5wZ6T4YZBJkf5LwgORgsj/RZqEooP8S9o
 ePLkO4rOhnd0Wz654DHxxYXEZi/WbZqZS9VbXh8MNReXcvhkMG+59ywLA/kB6ZpHLwZV
 MHYyiT9rYEcny6iR7K7ZtW28TYNTuPiwkoC77k84Lhw6QGZ4KI9u7sC4L/5+kTv7brJT
 nzpw==
X-Gm-Message-State: AOAM530PXOfe2aBBx7MHoC/TnCqm/2crmZR/yBPRgYMh4aSOsF/z+1ES
 DSCyEteyVoUROTS8cnMg4kyk+dD4fBsyUA==
X-Google-Smtp-Source: ABdhPJzljXQ7J8a+LBl7X2bvCxyJjXtV+tT0SQjuCsqcnZRImSDxmKbTtS432yyu75tzwerDCCNYOA==
X-Received: by 2002:a17:902:a404:b029:e6:23d:44ac with SMTP id
 p4-20020a170902a404b02900e6023d44acmr11878508plq.50.1616710898533; 
 Thu, 25 Mar 2021 15:21:38 -0700 (PDT)
Received: from omlet.com ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id d21sm2819744pgj.62.2021.03.25.15.21.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Mar 2021 15:21:38 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 17:21:32 -0500
Message-Id: <20210325222132.3774499-1-jason@jlekstrand.net>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210323175149.3390801-1-jason@jlekstrand.net>
References: <20210323175149.3390801-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Implement SINGLE_TIMELINE with a
 syncobj (v3)
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

v3 (Jason Ekstrand):
 - Move the dma_fence_put() to before the error exit

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 47 ++++---------------
 .../gpu/drm/i915/gem/i915_gem_context_types.h | 14 +++++-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 16 +++++++
 3 files changed, 39 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index ea449be2672c2..87d1715e354fe 100644
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
@@ -225,10 +227,6 @@ static void intel_context_set_gem(struct intel_context *ce,
 		ce->vm = vm;
 	}
 
-	GEM_BUG_ON(ce->timeline);
-	if (ctx->timeline)
-		ce->timeline = intel_timeline_get(ctx->timeline);
-
 	if (ctx->sched.priority >= I915_PRIORITY_NORMAL &&
 	    intel_engine_has_timeslices(ce->engine))
 		__set_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
@@ -365,8 +363,8 @@ void i915_gem_context_release(struct kref *ref)
 	if (ctx->client)
 		i915_drm_client_put(ctx->client);
 
-	if (ctx->timeline)
-		intel_timeline_put(ctx->timeline);
+	if (ctx->syncobj)
+		drm_syncobj_put(ctx->syncobj);
 
 	mutex_destroy(&ctx->engines_mutex);
 	mutex_destroy(&ctx->lut_mutex);
@@ -820,33 +818,11 @@ static void __assign_ppgtt(struct i915_gem_context *ctx,
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
@@ -875,16 +851,13 @@ i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
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
index 886515b8e7a7b..e38574525b0f2 100644
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
index 339af3aa5174e..6ff046dd19bd0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -3288,6 +3288,16 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		goto err_vma;
 	}
 
+	if (unlikely(eb.gem_context->syncobj)) {
+		struct dma_fence *fence;
+
+		fence = drm_syncobj_fence_get(eb.gem_context->syncobj);
+		err = i915_request_await_dma_fence(eb.request, fence);
+		dma_fence_put(fence);
+		if (err)
+			goto err_ext;
+	}
+
 	if (in_fence) {
 		if (args->flags & I915_EXEC_FENCE_SUBMIT)
 			err = i915_request_await_execution(eb.request,
@@ -3344,6 +3354,12 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
