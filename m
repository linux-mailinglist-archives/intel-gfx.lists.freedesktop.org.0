Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BB03933C4
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 18:27:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 308386F448;
	Thu, 27 May 2021 16:27:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 585C46F43E
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 16:27:02 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id z4so215689plg.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 09:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TbKRwu6J4DGStQJbS7Vw6tmAcKRRj+KMlzLdxGm/VCk=;
 b=ACBoenBSzwhD7C58N07ZEdaSnu7iFpT6m2virmlHGwFH1mB2jaUFSvf3WL2LJApQ72
 nLbN/N2roYues7MFvJjlsT4iYeM4VE0S0kdvUgIlgMlD7Wv1AGWTyq1GHWw9zpQ9znH7
 8ZQu+v/LA/DMkJv1qECB+b/sBUYUjLRCoy095StcE7uN19fVqB2kWDs+v+UxcLX8B6yf
 2uPfdguW/cgl4AH9mR6lvtIw2XTqwBNmPlGD+FgJV245NYTJ06c+paimS9/bWbHnWn0A
 +B0RLcM06u+QSU1EEcwe5PGr7ftcB9Y2BjbXksrbbvQSuvsAipQCy9JO1lZdgFdfUpmn
 IPnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TbKRwu6J4DGStQJbS7Vw6tmAcKRRj+KMlzLdxGm/VCk=;
 b=T+Quk4ZjZB0zZtsjhe7mi2c2VeP+gWuT3C/ullAIUOMysEOb529HBUZU2Jj+uMZwi4
 2+xp3KFEcJRc8xeaH066VnU9MZFKHwU0kdA//+eeIiDPGlPcdZnpkeS9xhCg8XEkQOzT
 oNik9pG5ukPb5HxhiZGfodsLZtZJy0UEye6YNHj7fOa2T0Lm40hjw2ShG3LKkbuh2+2E
 o+ZIEEiYpdIriXMUSkNax1q9eF08JSNXX7jLtPM/xBlQ1tGtb8F9DeGA00YlINaqrJh9
 geiL/G/sTRhknI5GwKzHdVPl3/sray6sJTnGDeArRPotqR+9Jb2NCx7Pj6QUmrSYIdZ3
 /oog==
X-Gm-Message-State: AOAM5310wGN5rdPHoOrr7CBfQYjBkPF6lEZ3ST+nrgVRlbejjmpiWIqS
 d+KOmJeE0P8JdtavGqm3o003pl6X2yeDNw==
X-Google-Smtp-Source: ABdhPJyEicC2YRlPQydwqE7cXMjTxLwhFKCdRQCN9XhQQyH5b2xxJUZvmf6gUuCYVNpB/PbDWg41iw==
X-Received: by 2002:a17:90a:de0c:: with SMTP id
 m12mr4783489pjv.54.1622132821563; 
 Thu, 27 May 2021 09:27:01 -0700 (PDT)
Received: from omlet.com ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id h9sm2298711pja.42.2021.05.27.09.27.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 09:27:01 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 27 May 2021 11:26:25 -0500
Message-Id: <20210527162650.1182544-5-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210527162650.1182544-1-jason@jlekstrand.net>
References: <20210527162650.1182544-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/29] drm/i915/gem: Set the watchdog timeout
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
index 868c18c08a0b1..9a8a96e4346e4 100644
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
