Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F20B236EFFA
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 21:04:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F2066F46C;
	Thu, 29 Apr 2021 19:04:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64ABC6F46B
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 19:04:08 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 h14-20020a17090aea8eb02901553e1cc649so395628pjz.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 12:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fsllfSQGOYUIVLhl3Co0QJ3iUTIL9mD5TCD1jQqxlak=;
 b=0JLO3oPBSl/OuSVLQUj5GL/JP083CI5pZJwwwDpJhz/es+1ZBP8/713CCxT2FXUZCR
 hkd3F6zQ2978isFiyIFZh9D3I6rT8yuDROP7rlcp94dw8ZleLCWoC1e3QhmXZfAMnkBF
 igrB4mDDzCfILKvRQMkkEx4TVSpIB7JGE/YVLQ8oOviQ96FAnqggpL5RbrPCeqbSB0s3
 YXvjBvXHq4znc7aSR8ZBa1N435f0HTIx/JuHOR8FNajkBQLnw2D9biyQRVxuwRqqVuPm
 2YMJh5hDnLIHUIp9tkbc0zzW0QMCS09lobHVlP5M13xhA8uXe66slU98Tb8R4ZV+cxMK
 PvSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fsllfSQGOYUIVLhl3Co0QJ3iUTIL9mD5TCD1jQqxlak=;
 b=klVl5lNAQDwkhZfp2+fSwBVcJkI2GCNwJyppr7XeXNrZcAUInkTIkeMbIVQQJke4vD
 rNWfgI2slnd5GdV1p1/vqC7o5Ukly6FSRBH0wXM+O0ZLcMDxCOs11ZvM7ZRKrdSghWrF
 9VS623TxHGjhfRPwbnegCU46TWaGrAUIN5i4cuxOxKhJ4ExIw4dwDNORAft8h2rWnw7u
 AG/gZXOujHG1yLukHFJEyDtt+xTgW254dpwFPOt+0GUxGNBVZD4dIZlmZ8TpjhXdkYfj
 x6y9hohpiX8a2oASJYnjDxtXpKat19Le1dEaquPTL2OG5B0jzZXyNaLpJJgvk/f0DxU6
 4jNw==
X-Gm-Message-State: AOAM5315/p9CkpIW0bnxEWZx+TNDnj5yegOXxVzD7fVkZNbqO9155Pkj
 lHPlkezbcCQ43YNYV55U6t6ASBgVuK3kRw==
X-Google-Smtp-Source: ABdhPJy/28FBfImpPfPj8rWo4O8y1RZML2f5YaBVrh25GwJkCC5AnQQ0zdduDyDk8PisY4PhIImn5g==
X-Received: by 2002:a17:90a:f009:: with SMTP id
 bt9mr1306677pjb.137.1619723047500; 
 Thu, 29 Apr 2021 12:04:07 -0700 (PDT)
Received: from omlet.lan ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id b21sm3114405pji.39.2021.04.29.12.04.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 12:04:06 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 29 Apr 2021 14:03:28 -0500
Message-Id: <20210429190340.1555632-14-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210429190340.1555632-1-jason@jlekstrand.net>
References: <20210429190340.1555632-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/25] drm/i915: Stop manually RCU banging in
 reset_stats_ioctl (v2)
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

As far as I can tell, the only real reason for this is to avoid taking a
reference to the i915_gem_context.  The cost of those two atomics
probably pales in comparison to the cost of the ioctl itself so we're
really not buying ourselves anything here.  We're about to make context
lookup a tiny bit more complicated, so let's get rid of the one hand-
rolled case.

Some usermode drivers such as our Vulkan driver call GET_RESET_STATS on
every execbuf so the perf here could theoretically be an issue.  If this
ever does become a performance issue for any such userspace drivers,
they can use set CONTEXT_PARAM_RECOVERABLE to false and look for -EIO
coming from execbuf to check for hangs instead.

v2 (Daniel Vetter):
 - Add a comment in the commit message about recoverable contexts

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 13 ++++---------
 drivers/gpu/drm/i915/i915_drv.h             |  8 +-------
 2 files changed, 5 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 8e254d83d65f2..c073d5939482b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -2091,16 +2091,13 @@ int i915_gem_context_reset_stats_ioctl(struct drm_device *dev,
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_reset_stats *args = data;
 	struct i915_gem_context *ctx;
-	int ret;
 
 	if (args->flags || args->pad)
 		return -EINVAL;
 
-	ret = -ENOENT;
-	rcu_read_lock();
-	ctx = __i915_gem_context_lookup_rcu(file->driver_priv, args->ctx_id);
+	ctx = i915_gem_context_lookup(file->driver_priv, args->ctx_id);
 	if (!ctx)
-		goto out;
+		return -ENOENT;
 
 	/*
 	 * We opt for unserialised reads here. This may result in tearing
@@ -2117,10 +2114,8 @@ int i915_gem_context_reset_stats_ioctl(struct drm_device *dev,
 	args->batch_active = atomic_read(&ctx->guilty_count);
 	args->batch_pending = atomic_read(&ctx->active_count);
 
-	ret = 0;
-out:
-	rcu_read_unlock();
-	return ret;
+	i915_gem_context_put(ctx);
+	return 0;
 }
 
 /* GEM context-engines iterator: for_each_gem_engine() */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0b44333eb7033..8571c5c1509a7 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1840,19 +1840,13 @@ struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
 
 struct dma_buf *i915_gem_prime_export(struct drm_gem_object *gem_obj, int flags);
 
-static inline struct i915_gem_context *
-__i915_gem_context_lookup_rcu(struct drm_i915_file_private *file_priv, u32 id)
-{
-	return xa_load(&file_priv->context_xa, id);
-}
-
 static inline struct i915_gem_context *
 i915_gem_context_lookup(struct drm_i915_file_private *file_priv, u32 id)
 {
 	struct i915_gem_context *ctx;
 
 	rcu_read_lock();
-	ctx = __i915_gem_context_lookup_rcu(file_priv, id);
+	ctx = xa_load(&file_priv->context_xa, id);
 	if (ctx && !kref_get_unless_zero(&ctx->ref))
 		ctx = NULL;
 	rcu_read_unlock();
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
