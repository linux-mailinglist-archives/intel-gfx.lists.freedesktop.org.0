Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB3F3C167A
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 17:49:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2760B6E920;
	Thu,  8 Jul 2021 15:49:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com
 [IPv6:2607:f8b0:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33ACD6E917
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 15:49:06 +0000 (UTC)
Received: by mail-ot1-x329.google.com with SMTP id
 j10-20020a05683015cab02904b568e08dccso88476otr.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jul 2021 08:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NDzQ/cGtu4ulqlBzmdcEp05bD3W8GaEjptIfeznJodk=;
 b=cHLEqykMupr1iTnBv7RgZK3JGObjYRmKy4VUFgsNhMtuDZGNF1fjcf+LAcQRJy7mh+
 h+zA0k619PPpO8DEcQZ0V8pYNBlmBSjTgS0N7ONmN/bCwRDTOpqOTyEhVOPPIDjcoPNv
 x7mhIq3EoMdf1bWQrccdPWI9xd19mrjQZN1uLHqjhK1PbOpjbfX1/QEQw5ueGUiUwCQe
 6qJKjHXfeWvInkVwtLd07xoMfpvZ/JLjnKmoWIfSlnldSGApyMgQfgxPaAdnVQj4ov8S
 /NNKlF6MkHAGOHs6uq7Fb2MeFv8Eg3/oHMSVerfK3HBTGjHLVynB2D5XlMnToND1KyUL
 Slhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NDzQ/cGtu4ulqlBzmdcEp05bD3W8GaEjptIfeznJodk=;
 b=JIT+iRwlX5d321HQV33mK2VO7IyjYyYiPHcesjDaqZtoB7iDK3vfJMtnakK/xI8ouf
 NVNo/7dkW+48lTfTtpzIaV33rhT+rMNM8b1WYTcpnJ8x5wHFC8J6JfE9584MUF1tvzYz
 FCflgbkix4arxYNNTTWLj33QtmaEkBQJriAZVeHhn4yURe4+IsF+q5QYnb57/v+JDu+a
 DCwXcOmwRsZ16Jzavh3p9yN7ur0kZJjznse6GWVyVD74x8UQNZ7Dts3DbyJGl6Y4yONy
 eoLnLK2HjvPNGm89DjsDIpECpv+dst9ee3EN6xOpXTJz5XufOpVou1HTZ9s3fe6ti5mN
 LLkQ==
X-Gm-Message-State: AOAM533wZrvKvXecKXaDCac/C+uHyovE2Jf7jv5g3BBxdw9flukcGijj
 FJQic6OYLk4oHYbnWlD939wfZi75reMoqA==
X-Google-Smtp-Source: ABdhPJxr24xHQRn8vwy6VkjHkFXtC8+N7PporYWhz7jAW/IdS94Xg+7AwCH0xV18EgFXvnOxsDOpGw==
X-Received: by 2002:a9d:6358:: with SMTP id y24mr2066990otk.101.1625759345066; 
 Thu, 08 Jul 2021 08:49:05 -0700 (PDT)
Received: from omlet.lan ([68.203.99.148])
 by smtp.gmail.com with ESMTPSA id d20sm548356otq.62.2021.07.08.08.49.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 08:49:04 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  8 Jul 2021 10:48:27 -0500
Message-Id: <20210708154835.528166-23-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210708154835.528166-1-jason@jlekstrand.net>
References: <20210708154835.528166-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 22/30] drm/i915/gem: Return an error ptr from
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We're about to start doing lazy context creation which means contexts
get created in i915_gem_context_lookup and we may start having more
errors than -ENOENT.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c    | 12 ++++++------
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c |  4 ++--
 drivers/gpu/drm/i915/i915_drv.h                |  2 +-
 drivers/gpu/drm/i915/i915_perf.c               |  4 ++--
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 4972b8c91d942..7045e3afa7113 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -2636,8 +2636,8 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
 	int ret = 0;
 
 	ctx = i915_gem_context_lookup(file_priv, args->ctx_id);
-	if (!ctx)
-		return -ENOENT;
+	if (IS_ERR(ctx))
+		return PTR_ERR(ctx);
 
 	switch (args->param) {
 	case I915_CONTEXT_PARAM_GTT_SIZE:
@@ -2705,8 +2705,8 @@ int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
 	int ret;
 
 	ctx = i915_gem_context_lookup(file_priv, args->ctx_id);
-	if (!ctx)
-		return -ENOENT;
+	if (IS_ERR(ctx))
+		return PTR_ERR(ctx);
 
 	ret = ctx_setparam(file_priv, ctx, args);
 
@@ -2725,8 +2725,8 @@ int i915_gem_context_reset_stats_ioctl(struct drm_device *dev,
 		return -EINVAL;
 
 	ctx = i915_gem_context_lookup(file->driver_priv, args->ctx_id);
-	if (!ctx)
-		return -ENOENT;
+	if (IS_ERR(ctx))
+		return PTR_ERR(ctx);
 
 	/*
 	 * We opt for unserialised reads here. This may result in tearing
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 9aa7e10d16308..5ea8b4e23e428 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -750,8 +750,8 @@ static int eb_select_context(struct i915_execbuffer *eb)
 	struct i915_gem_context *ctx;
 
 	ctx = i915_gem_context_lookup(eb->file->driver_priv, eb->args->rsvd1);
-	if (unlikely(!ctx))
-		return -ENOENT;
+	if (unlikely(IS_ERR(ctx)))
+		return PTR_ERR(ctx);
 
 	eb->gem_context = ctx;
 	if (rcu_access_pointer(ctx->vm))
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 8c1994c16b920..d9278c973a734 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1864,7 +1864,7 @@ i915_gem_context_lookup(struct drm_i915_file_private *file_priv, u32 id)
 		ctx = NULL;
 	rcu_read_unlock();
 
-	return ctx;
+	return ctx ? ctx : ERR_PTR(-ENOENT);
 }
 
 static inline struct i915_address_space *
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 9f94914958c39..b4ec114a4698b 100644
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
