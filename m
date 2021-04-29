Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EDF36F007
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 21:04:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0EE96F47B;
	Thu, 29 Apr 2021 19:04:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com
 [IPv6:2607:f8b0:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9591A6F471
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 19:04:16 +0000 (UTC)
Received: by mail-pg1-x52d.google.com with SMTP id t22so12570767pgu.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 12:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=m0tp/u8T1gtN56APW0DMIVZWSBstuFUBuOMBraT7194=;
 b=1+md4rEvCFzTFcaLdNlpl9y0yA3+nCSvUNwdG1PFA8so5V76IWSVI9/3nx78DJ7hQ6
 DMMAMaYqBVkEc1Ao+1Em218UHKVbuuUIIDKcmJBwjsKR/zMnUzaqsbOWm0GI+7PIX59l
 QhT+t209QMnRdqhXs947/xnCz9IG6USAvlHlvmv/5D1iqNJAtkzUGRVMrpMIA7pzz5u8
 L9P1x9X9eesSXB2VZPrT8hs4KJwx0QLOSrJJH1sL8ytWNem0/jf/BhvMT7vQwgUCJszx
 L2KIMfeWN7d+UjwQmij0WLiEqlut0oAhQIX1Stp8Sn1wLdwvj4CyDDKBLvdvP8L3Nq3N
 yWwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=m0tp/u8T1gtN56APW0DMIVZWSBstuFUBuOMBraT7194=;
 b=p9Y0ZBJhmXi5/rtJmBITaQhAzvy46XEzfFPSgCrjop/Pyjtllmd+NHVhUXCmKgW1AU
 NpPQ7Zj2Qt/fz/nCezqlEdaAHbhq8MQz1kenVTmnE6WTeYgdAh4Q0irhFQjA86nEtOnS
 Y+HEv31HLu//s7okxzbxnM/7dym3HP1H0Kj4U3UhVwjymFSdp1FvInmE96dO7MStdiPJ
 4JnoZYzcVepL6Bd8PLQJptmGxwwHylB2XtX9fcq8sLyKdXw5tHE6sbLWKT85QlTvHyzj
 /32EiHnaZzumYyzQcADb88YR/W0Cq/XGRw2V/t6EHCn9G3FIJc/+6Le+1lVFJQko7XGL
 O7yg==
X-Gm-Message-State: AOAM5314G129+gyRw7RsFmWoPHZUQUeB079t4xUL90uBWWKqy/o1VqMR
 vEyuL7vesuO8VivZ3A2y3cy7s//VQHNRUA==
X-Google-Smtp-Source: ABdhPJzmWqXnk8X/k/jTz1ipbcA8PzsIGsUnmAnS3HWcdC2QkoSVqQk5MHullTnyPf33ef6zR/jbwQ==
X-Received: by 2002:a62:194f:0:b029:25c:37cb:2132 with SMTP id
 76-20020a62194f0000b029025c37cb2132mr1100332pfz.37.1619723055702; 
 Thu, 29 Apr 2021 12:04:15 -0700 (PDT)
Received: from omlet.lan ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id b21sm3114405pji.39.2021.04.29.12.04.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 12:04:15 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 29 Apr 2021 14:03:33 -0500
Message-Id: <20210429190340.1555632-19-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210429190340.1555632-1-jason@jlekstrand.net>
References: <20210429190340.1555632-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/25] drm/i915/gem: Return an error ptr from
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
index 189ab7e5a6fee..f1cfeab7c9346 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -2546,8 +2546,8 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
 	int ret = 0;
 
 	ctx = i915_gem_context_lookup(file_priv, args->ctx_id);
-	if (!ctx)
-		return -ENOENT;
+	if (IS_ERR(ctx))
+		return PTR_ERR(ctx);
 
 	switch (args->param) {
 	case I915_CONTEXT_PARAM_GTT_SIZE:
@@ -2615,8 +2615,8 @@ int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
 	int ret;
 
 	ctx = i915_gem_context_lookup(file_priv, args->ctx_id);
-	if (!ctx)
-		return -ENOENT;
+	if (IS_ERR(ctx))
+		return PTR_ERR(ctx);
 
 	ret = ctx_setparam(file_priv, ctx, args);
 
@@ -2635,8 +2635,8 @@ int i915_gem_context_reset_stats_ioctl(struct drm_device *dev,
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
