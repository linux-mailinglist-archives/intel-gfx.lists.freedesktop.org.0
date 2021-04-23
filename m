Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2F6369CA0
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Apr 2021 00:32:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCE816ECAE;
	Fri, 23 Apr 2021 22:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D42E6ECAB
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 22:31:42 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 kb13-20020a17090ae7cdb02901503d67f0beso5172136pjb.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 15:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kYiFHow3SPGjrg7Lb9we63yQJgpDV3+ubJbvOVPJ3CI=;
 b=ISMw6czxJH/k0kfIkJjj3z8JFXfwIsrxTmSJzdkgJy6npe+6J9BKt538L3ddtBmFvQ
 JVKl2/hVbdcRYi1sh59zLo9wQ9AceDtLIGLlybVnfHCjnt3vdSDZQfL+3ZtqJcHISpbO
 J0me5GMXrPLn2H7QKFwd76+M6uszIuUBEMSEYaIOlCzhhskfvxETA/RxDfrVRvcDvnry
 QTtTtAV4l74oZqd8jDqbDG+/9Is02A5b2M3mpJJxUo8ZEeg17Kyd1NL25ArrA+QDzZf3
 q3kyA/piRCg8dasGFtzi33yTT3TCUr1yO2mZkqcnnB6HKi5WZnmOOz9BXBkeAC1uy4T5
 QTgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kYiFHow3SPGjrg7Lb9we63yQJgpDV3+ubJbvOVPJ3CI=;
 b=L4oFsavWlyMY/T9xJdQLjFG91ZgXi2tl1DSiM7LP1aVgQdxmQFtAf9m60J9O7gdHck
 PHG57/Z9ewJMZK0PFfisUwdWJkZrLai9MBXBd+TEVSx5DAE5g1I3RVvO1Hx6wwX3q/I1
 eHzhe/QOp00rgN2BaI9XMK2PAaW6iRiMuDEWO4Do3Jq5dNuaMlS6ewcdDTDPBd7D/pOY
 /dMqxPgROH4jcUs3gQCT9ggvwZ2pwbH45PFvANzNqPNXHa7c/v9j0ybbfg6uK9BUUwSp
 ZYKuspZd9Xb3Q/oBJ0rrDhnXiJjRVcceyAIsu4sd5xW9A/tm5QnI5BKW0n9UgZ5ba9Vy
 ehmg==
X-Gm-Message-State: AOAM530wcPlw1HswZlZuGNljVc/aVq+i0DkqzaV81Wyc/C8ryyncch1K
 2pkE+06SJT7WusSoyFn+3slNdSQXjQ2CRg==
X-Google-Smtp-Source: ABdhPJzz8Ql/C35dbclf2Od6TIihOVfcFn5QPmTBWHrvwuga9hVVcSAnG9l80lhYkSqDo/Cq0vLrzw==
X-Received: by 2002:a17:902:f2c1:b029:eb:7b66:9c0a with SMTP id
 h1-20020a170902f2c1b02900eb7b669c0amr6106473plc.50.1619217101312; 
 Fri, 23 Apr 2021 15:31:41 -0700 (PDT)
Received: from omlet.com ([134.134.139.76])
 by smtp.gmail.com with ESMTPSA id z12sm5523420pfn.195.2021.04.23.15.31.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Apr 2021 15:31:40 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 23 Apr 2021 17:31:13 -0500
Message-Id: <20210423223131.879208-4-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210423223131.879208-1-jason@jlekstrand.net>
References: <20210423223131.879208-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/21] drm/i915/gem: Set the watchdog timeout
 directly in intel_context_set_gem
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

Instead of handling it like a context param, unconditionally set it when
intel_contexts are created.  This doesn't fix anything but does simplify
the code a bit.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 43 +++----------------
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  4 --
 drivers/gpu/drm/i915/gt/intel_context_param.h |  3 +-
 3 files changed, 6 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 35bcdeddfbf3f..1091cc04a242a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -233,7 +233,11 @@ static void intel_context_set_gem(struct intel_context *ce,
 	    intel_engine_has_timeslices(ce->engine))
 		__set_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
 
-	intel_context_set_watchdog_us(ce, ctx->watchdog.timeout_us);
+	if (IS_ACTIVE(CONFIG_DRM_I915_REQUEST_TIMEOUT) &&
+	    ctx->i915->params.request_timeout_ms) {
+		unsigned int timeout_ms = ctx->i915->params.request_timeout_ms;
+		intel_context_set_watchdog_us(ce, (u64)timeout_ms * 1000);
+	}
 }
 
 static void __free_engines(struct i915_gem_engines *e, unsigned int count)
@@ -792,41 +796,6 @@ static void __assign_timeline(struct i915_gem_context *ctx,
 	context_apply_all(ctx, __apply_timeline, timeline);
 }
 
-static int __apply_watchdog(struct intel_context *ce, void *timeout_us)
-{
-	return intel_context_set_watchdog_us(ce, (uintptr_t)timeout_us);
-}
-
-static int
-__set_watchdog(struct i915_gem_context *ctx, unsigned long timeout_us)
-{
-	int ret;
-
-	ret = context_apply_all(ctx, __apply_watchdog,
-				(void *)(uintptr_t)timeout_us);
-	if (!ret)
-		ctx->watchdog.timeout_us = timeout_us;
-
-	return ret;
-}
-
-static void __set_default_fence_expiry(struct i915_gem_context *ctx)
-{
-	struct drm_i915_private *i915 = ctx->i915;
-	int ret;
-
-	if (!IS_ACTIVE(CONFIG_DRM_I915_REQUEST_TIMEOUT) ||
-	    !i915->params.request_timeout_ms)
-		return;
-
-	/* Default expiry for user fences. */
-	ret = __set_watchdog(ctx, i915->params.request_timeout_ms * 1000);
-	if (ret)
-		drm_notice(&i915->drm,
-			   "Failed to configure default fence expiry! (%d)",
-			   ret);
-}
-
 static struct i915_gem_context *
 i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
 {
@@ -871,8 +840,6 @@ i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
 		intel_timeline_put(timeline);
 	}
 
-	__set_default_fence_expiry(ctx);
-
 	trace_i915_context_create(ctx);
 
 	return ctx;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 5ae71ec936f7c..676592e27e7d2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -153,10 +153,6 @@ struct i915_gem_context {
 	 */
 	atomic_t active_count;
 
-	struct {
-		u64 timeout_us;
-	} watchdog;
-
 	/**
 	 * @hang_timestamp: The last time(s) this context caused a GPU hang
 	 */
diff --git a/drivers/gpu/drm/i915/gt/intel_context_param.h b/drivers/gpu/drm/i915/gt/intel_context_param.h
index dffedd983693d..0c69cb42d075c 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_param.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_param.h
@@ -10,11 +10,10 @@
 
 #include "intel_context.h"
 
-static inline int
+static inline void
 intel_context_set_watchdog_us(struct intel_context *ce, u64 timeout_us)
 {
 	ce->watchdog.timeout_us = timeout_us;
-	return 0;
 }
 
 #endif /* INTEL_CONTEXT_PARAM_H */
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
