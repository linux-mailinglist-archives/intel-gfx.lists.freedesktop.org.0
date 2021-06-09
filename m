Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC523A1C12
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 19:44:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E8306EA81;
	Wed,  9 Jun 2021 17:44:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0473C6EA4D
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 17:44:31 +0000 (UTC)
Received: by mail-pf1-x42d.google.com with SMTP id d16so18955854pfn.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Jun 2021 10:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0RIIX9a/bSdC8IyjYK5e5tdZw/xYUlwB4mhrkZu68g4=;
 b=OTNN6dBI3KYCI8R+Y++J4XGZXSrLHYZBXqPnJytZvWGiQ1/G8zfzJfgdUqVWzVwtMr
 U9RGQtRX72mInF3jnDCq74cY8tVBen3ke6tcskYA2Gg73O3+JAaQ0uYQjGgHaCH6y3fE
 9x/b6akFENpQJ9dyOdcyYTPo5Hs5zfCHs2KglVYSj3M8KQ+U9J/3hUsgQ+UXMQuNl1ch
 LBGNSrdfHEcmVjADvbdXpYW5O136rf63ynZsbMHbzlpmZCx/VCdSDQKABvtjz+x3hMZR
 /eQ0AwSDHH05pElUNDabJ6leLYIuZ+0TUjoA/NzsuErY/8eFWlejyBElAUvc9q33wJ+X
 Nv2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0RIIX9a/bSdC8IyjYK5e5tdZw/xYUlwB4mhrkZu68g4=;
 b=iNCv0EibMruUKShDwdTlPFwzRSRVPApj9GaaShsQR5ogJ5KLP+86R7iFPb/tvjyzSw
 BOb3dx0y28rP1MvQfK6ga/ousI6hEF9OUnsAwOHyd3ywjxUCxrRtsSSzLKlHC4JsCNmm
 aOb0ltJ1AFh5QNqDYpB6B5l5gjoRViWp4wHb7v70Mhn5928CtJl0N2QG3s9rvuSqu9gk
 sH6lJ6f505rPBUap+CSv6N/IN8QOrGSXOpmvIBVGVm38FCKAGSeAFhdQR+36Q1E3IOVH
 v0xiOfpOk5TU7ACEF1uG3bmwMtAH3iKBNI7a/6JokY8jZeyM4CUZ/w1XMt0T8Ytl/JbR
 xqkg==
X-Gm-Message-State: AOAM533d+ntN3qyJskED+UUwFJyxEmhjTOUgirYfLzAIE7sp0k5vRcaC
 o3c2XVrmdykaS/eQ6NJdxUB0jg==
X-Google-Smtp-Source: ABdhPJyfVszJM7uLYlR5f/BoAkc2uB6ulaj6txlnnHmCTR1b4xrtYFQ3JEjeF7E5jBHtt9sG1f5KMA==
X-Received: by 2002:a65:4508:: with SMTP id n8mr842477pgq.120.1623260670557;
 Wed, 09 Jun 2021 10:44:30 -0700 (PDT)
Received: from omlet.lan (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id b10sm208619pfi.122.2021.06.09.10.44.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 10:44:30 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  9 Jun 2021 12:43:51 -0500
Message-Id: <20210609174418.249585-5-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609174418.249585-1-jason@jlekstrand.net>
References: <20210609174418.249585-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/31] drm/i915/gem: Set the watchdog timeout
 directly in intel_context_set_gem (v2)
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of handling it like a context param, unconditionally set it when
intel_contexts are created.  For years we've had the idea of a watchdog
uAPI floating about. The aim was for media, so that they could set very
tight deadlines for their transcodes jobs, so that if you have a corrupt
bitstream (especially for decoding) you don't hang your desktop too
hard.  But it's been stuck in limbo since forever, and this simplifies
things a bit in preparation for the proto-context work.  If we decide to
actually make said uAPI a reality, we can do it through the proto-
context easily enough.

This does mean that we move from reading the request_timeout_ms param
once per engine when engines are created instead of once at context
creation.  If someone changes request_timeout_ms between creating a
context and setting engines, it will mean that they get the new timeout.
If someone races setting request_timeout_ms and context creation, they
can theoretically end up with different timeouts.  However, since both
of these are fairly harmless and require changing kernel params, we
don't care.

v2 (Tvrtko Ursulin):
 - Add a comment about races with request_timeout_ms

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 44 +++----------------
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  4 --
 drivers/gpu/drm/i915/gt/intel_context_param.h |  3 +-
 3 files changed, 7 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 5fc0eb4beeeae..9750a1ac7023e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -232,7 +232,12 @@ static void intel_context_set_gem(struct intel_context *ce,
 	    intel_engine_has_timeslices(ce->engine))
 		__set_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
 
-	intel_context_set_watchdog_us(ce, ctx->watchdog.timeout_us);
+	if (IS_ACTIVE(CONFIG_DRM_I915_REQUEST_TIMEOUT) &&
+	    ctx->i915->params.request_timeout_ms) {
+		unsigned int timeout_ms = ctx->i915->params.request_timeout_ms;
+
+		intel_context_set_watchdog_us(ce, (u64)timeout_ms * 1000);
+	}
 }
 
 static void __free_engines(struct i915_gem_engines *e, unsigned int count)
@@ -791,41 +796,6 @@ static void __assign_timeline(struct i915_gem_context *ctx,
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
@@ -870,8 +840,6 @@ i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
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
