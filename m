Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 257B83428C8
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 23:39:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E1856EB09;
	Fri, 19 Mar 2021 22:39:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B53EE6EB09
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 22:39:08 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id x26so6865130pfn.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 15:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LdyMF5N6UJz9l9B3/pTkjnqnnrVns0ze+/0LiNxxf7E=;
 b=xx4ADo5FQSF0tRcHy3kvUvQ16KxpU1qnYXlm9TyeMrjyGdkwia56eCHKguRQkk7j7n
 BGKjP8RKVgjsukNDJ3abE2mseV2kmB2JQHD9CNCf4WkRcDxa0n0vOWcf9SrTi01A+nvd
 Y6uRfZyhJzoVCLnuWC++WQ/YYEG1WOnjHcuToDOSeWO9g7s75iqENdVX0JM+SSHOeNS0
 dZjRRqF687H93AG/u8LnkNJTJvKZFDZ7uRZO1mNuP76qcbzn5yptiFM4QbU/5J0yj45a
 prq9dEE552h9Yr7va4pou8tz/VskEQMXtjmNEzH93ySmhVDghacuzOBHV6hodsD31Nfe
 Spkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LdyMF5N6UJz9l9B3/pTkjnqnnrVns0ze+/0LiNxxf7E=;
 b=E27hB30zwfpLntJk+tNOV4YyoiLJDdU/SJuU+30PxJ6U9ZEN95RAtiD5xw8h7MthLF
 t3VRkJtojMANadszG2dAf7mIRaChJWlOmDp+j4Doocz51xr2n72s3EMkOcHAauptZGS2
 Irye5VuXvUGC6WgnZMCquZiuT0yMoJNOxggErwRQIAQRH0o1ntaMRigN4TNhckF9vTje
 vT4dh9Rhi49onioWEFlzkKYFKWgP/ou7xhEtiKiaxQnJJ7+/VDW2LN33p6uyL67FD9ow
 SCe+JuvAE8A7MEIOH9fiEg8h4J0GMZyjAY83Q5KOh7yRxAOfRGZ9s/Kn4dFJjPXBstQ/
 KVTg==
X-Gm-Message-State: AOAM530D+kBXv874gkw7OJkw4KbexvIv1wvW3WGS/zRXwlFre+UXLBDv
 j1hy7pfXc24nc9wf/1EAHjnIxA==
X-Google-Smtp-Source: ABdhPJyuxZ0aEjZB/sQ/q0ZnYxiS8q5X/OS01zTkSYefkuntX3FbHgOmkgJiUdwXyokPsAZK0S7fzQ==
X-Received: by 2002:a65:62d9:: with SMTP id m25mr5429983pgv.6.1616193548293;
 Fri, 19 Mar 2021 15:39:08 -0700 (PDT)
Received: from omlet.com ([134.134.137.77])
 by smtp.gmail.com with ESMTPSA id a20sm6809206pfl.97.2021.03.19.15.39.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Mar 2021 15:39:07 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Fri, 19 Mar 2021 17:38:56 -0500
Message-Id: <20210319223856.2983244-5-jason@jlekstrand.net>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210319223856.2983244-1-jason@jlekstrand.net>
References: <20210319223856.2983244-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Implement SINGLE_TIMELINE with a
 syncobj
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

I'd love to delete the SINGLE_TIMELINE API because it leaks an
implementation detail of contexts through to the API and is something
that userspace can do itself, trivially.  Unfortunately, it's used by
the media driver so we can't do that.  We can, however, do the next-best
thing which is to embed a syncobj in the context and do exactly what
we'd expect from userspace internally.

This has a couple of advantages.  One is that we're no longer leaking a
detail of the current execlist scheduler which will be problematic when
we try to add GuC scheduling.  Second is that, together with deleting
the CLONE_CONTEXT API, we should now have a 1:1 mapping between
intel_context and intel_timeline which should make some of our locking
mess a bit easier.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 47 ++++---------------
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  8 +++-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 15 ++++++
 3 files changed, 32 insertions(+), 38 deletions(-)

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
index 676592e27e7d2..8a5fdd163b79d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -83,7 +83,13 @@ struct i915_gem_context {
 	struct i915_gem_engines __rcu *engines;
 	struct mutex engines_mutex; /* guards writes to engines */
 
-	struct intel_timeline *timeline;
+	/**
+	 * @syncobj: Shared timeline syncobj
+	 *
+	 * When the SHARED_TIMELINE flag is set on context creation, this
+	 * provides automatic implicit synchronization across all engines.
+	 */
+	struct drm_syncobj *syncobj;
 
 	/**
 	 * @vm: unique address space (GTT)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 96403130a373d..2c56796f6a71b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -3295,6 +3295,15 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		goto err_vma;
 	}
 
+	if (eb.gem_context->syncobj) {
+		struct dma_fence *fence;
+
+		fence = drm_syncobj_fence_get(eb.gem_context->syncobj);
+		err = i915_request_await_dma_fence(eb.request, fence);
+		if (err)
+			goto err_ext;
+	}
+
 	if (in_fence) {
 		if (args->flags & I915_EXEC_FENCE_SUBMIT)
 			err = i915_request_await_execution(eb.request,
@@ -3351,6 +3360,12 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 			fput(out_fence->file);
 		}
 	}
+
+	if (eb.gem_context->syncobj) {
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
