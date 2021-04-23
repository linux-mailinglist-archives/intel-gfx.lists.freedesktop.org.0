Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C03AF369CB7
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Apr 2021 00:32:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2D816ECE2;
	Fri, 23 Apr 2021 22:32:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B5516ECBD
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 22:31:59 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 m6-20020a17090a8586b02901507e1acf0fso2034728pjn.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 15:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qty9IEA3b/LOViVpK67Et3WcWCVH440BhoJSunI7CIU=;
 b=qm59jeuOyLQdrwTU8fPR6a4KTH1llNYt0WRzJ80TZroLn1hKW5huW25QAHkvcziEYj
 MOPxpbKrlW2P5nanxEUisJ2FJcrfQGAzPzvJspGX7AD9zwtopBs2TN7j2K9R5Ko/4C8B
 mxMxUQwlceswJono6K0OmIpflGvGI7ZGjrJKZnOBr1tRj5M9SBcUmXGHaoATDRggB8XJ
 We2lnZ8C3xKUIAZedsfIArD4tFoqng6Er8e9OPiKKUr98BSzsH/ScEevF/ZDqdNMTPEt
 cQSW7b1N9klKQQuEP9yscaB6AziNs22Uxs847kZo5cNuGhvpzi0ZcspoW0Ibrzp4hESg
 bcaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qty9IEA3b/LOViVpK67Et3WcWCVH440BhoJSunI7CIU=;
 b=DPKjsuZYdHve97gY3HvkeikDDihpti1D4Jyf/5iWkEop6s5WWkQqU3Lm94tlT+kLGg
 q9KbuIxD55nTgvjbglJVZAlhsZR2tDlFFL50BXOLjh8BuWsg4e1Ph5Fkuu6mne9rJkf9
 FNkmGAybG7PxLXOpKZ5eAkAZ/psAQY+2TZe7TEuN5oxYCnJmv6CwFh2KfqtTA4np0jxE
 /3s8I6wM9mysDAHbMJTT9yidmGUhsrG9J7lHGntrp4XB/ED7vTiPA3HwC3klNT6Zc6+b
 J145/EWHqUkNEhhH0SJrIIxBAHlXcYg7p1gcV5dVx7e48Pgi4ArwOyF+2z3PN5BEwu3B
 6dAw==
X-Gm-Message-State: AOAM532ADD0YJeAxjzHlQVQvfsoW8Sr7JzqpgOYPeIUOdABRdadgK8T/
 tpHLPLH80VNGJ0OZEI2l5/ehNA/1xO+REA==
X-Google-Smtp-Source: ABdhPJzy+RPl3sRtzg22NdF0PuBhw3WQ1Ltadn23a+9lJ5jt6AHek/wSSsRNREJLxRQmPA6BU6VvGQ==
X-Received: by 2002:a17:90b:1a85:: with SMTP id
 ng5mr6717572pjb.116.1619217118718; 
 Fri, 23 Apr 2021 15:31:58 -0700 (PDT)
Received: from omlet.com ([134.134.139.76])
 by smtp.gmail.com with ESMTPSA id z12sm5523420pfn.195.2021.04.23.15.31.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Apr 2021 15:31:58 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 23 Apr 2021 17:31:24 -0500
Message-Id: <20210423223131.879208-15-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210423223131.879208-1-jason@jlekstrand.net>
References: <20210423223131.879208-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/21] drm/i915/gem: Return an error ptr from
 context_lookup
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

We're about to start doing lazy context creation which means contexts
get created in i915_gem_context_lookup and we may start having more
errors than -ENOENT.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c    | 12 ++++++------
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c |  4 ++--
 drivers/gpu/drm/i915/i915_drv.h                |  2 +-
 drivers/gpu/drm/i915/i915_perf.c               |  4 ++--
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 3e883daab93bf..7929d5a8be449 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -2105,8 +2105,8 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
 	int ret = 0;
 
 	ctx = i915_gem_context_lookup(file_priv, args->ctx_id);
-	if (!ctx)
-		return -ENOENT;
+	if (IS_ERR(ctx))
+		return PTR_ERR(ctx);
 
 	switch (args->param) {
 	case I915_CONTEXT_PARAM_GTT_SIZE:
@@ -2174,8 +2174,8 @@ int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
 	int ret;
 
 	ctx = i915_gem_context_lookup(file_priv, args->ctx_id);
-	if (!ctx)
-		return -ENOENT;
+	if (IS_ERR(ctx))
+		return PTR_ERR(ctx);
 
 	ret = ctx_setparam(file_priv, ctx, args);
 
@@ -2194,8 +2194,8 @@ int i915_gem_context_reset_stats_ioctl(struct drm_device *dev,
 		return -EINVAL;
 
 	ctx = i915_gem_context_lookup(file->driver_priv, args->ctx_id);
-	if (!ctx)
-		return -ENOENT;
+	if (IS_ERR(ctx))
+		return PTR_ERR(ctx);
 
 	/*
 	 * We opt for unserialised reads here. This may result in tearing
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 7024adcd5cf15..de14b26f3b2d5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -739,8 +739,8 @@ static int eb_select_context(struct i915_execbuffer *eb)
 	struct i915_gem_context *ctx;
 
 	ctx = i915_gem_context_lookup(eb->file->driver_priv, eb->args->rsvd1);
-	if (unlikely(!ctx))
-		return -ENOENT;
+	if (unlikely(IS_ERR(ctx)))
+		return PTR_ERR(ctx);
 
 	eb->gem_context = ctx;
 	if (rcu_access_pointer(ctx->vm))
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 8571c5c1509a7..004ed0e59c999 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1851,7 +1851,7 @@ i915_gem_context_lookup(struct drm_i915_file_private *file_priv, u32 id)
 		ctx = NULL;
 	rcu_read_unlock();
 
-	return ctx;
+	return ctx ? ctx : ERR_PTR(-ENOENT);
 }
 
 /* i915_gem_evict.c */
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 85ad62dbabfab..b86ed03f6a705 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3414,10 +3414,10 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 		struct drm_i915_file_private *file_priv = file->driver_priv;
 
 		specific_ctx = i915_gem_context_lookup(file_priv, ctx_handle);
-		if (!specific_ctx) {
+		if (IS_ERR(specific_ctx)) {
 			DRM_DEBUG("Failed to look up context with ID %u for opening perf stream\n",
 				  ctx_handle);
-			ret = -ENOENT;
+			ret = PTR_ERR(specific_ctx);
 			goto err;
 		}
 	}
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
