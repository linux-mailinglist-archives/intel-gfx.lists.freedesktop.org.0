Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AD73A0B76
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 06:37:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DB946ECBF;
	Wed,  9 Jun 2021 04:36:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C93E6ECBB
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 04:36:42 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id c13so11917032plz.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Jun 2021 21:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xBg7FwtpuNrM9Qka69WV71CAEgxhgNIxD+5d1vNtwIE=;
 b=LuyhoGiwxGipdfNFGfGoTTD5s1Tx5pHO09B1LbCdfqgPYJb9fjqq+ZAdwJDq2genj6
 +4U5+Ar1j1mkb5Lo/BGRaZTy6oDRoFFQiLHB6+U/mC6wGI4/yn3iEiEKr/poBGqLfDSo
 xvlG4PAHkWCWHHHML2oFxsvIXi4Vr4cOOSe+bpS4gALJ7VjdsBRaHYLQdE+NE9Hwk/1Q
 mlvn1Z7BOFn2grV1jLLNkbk9cNiidb18/Hq3TsF6x3G7Ij6ih2i1RVz6wrtdUAah6+nX
 Ja2DlUkGXLq9YjOjMPtsb5gb8uHeslowEz4Cwcs99D+VzW9g6A8MT6+oVZazIl+0zCyn
 tAog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xBg7FwtpuNrM9Qka69WV71CAEgxhgNIxD+5d1vNtwIE=;
 b=i70AT0tDaU1NQnpzmw16ayvtZXkEXxBpD49nFcb/jVuWvWqjJNfURfWzqK3ko6kDOq
 UUzM/bPWWhxlmvNZF42sFOh7p8wBoL5k77ie5vSb6qskhgkeQtYzfgwgoz4jvA/+Jp7v
 +Ewi3xP6NPH4cYqjw4MTQCHNfh4j3u+T2uEr6Ng4hXSL61b75F7Nzjbr4IqXa9sJtgGY
 BUXA6Ts7ePAzSr6zujwc5mkLdeDpakhpsH7lYn6w0YE6t9LZBTdVM61uWO4x7sQ7CRBs
 SNEpYSzlwnYqIutbJHFJ2JnknztHnsGQTHxaWs5bX1IgpgX/9fLbDpgeXwfCWTQ5ykEL
 rgnA==
X-Gm-Message-State: AOAM531DJxcoZLYsJEHnzO0q35fSC/OmRA/A8nyhDCgHKOyTq7EcbzNG
 qzx8h4+bWdVu9Re2Ts7VUuuk9g==
X-Google-Smtp-Source: ABdhPJwuHgtBNJ+Z0a+DzHFUHCSBkQ5s8o5QU/nGGls52wPlaCynTEm1PVAEmTBKK5sm7j6rxgLmhQ==
X-Received: by 2002:a17:902:9006:b029:107:394a:387 with SMTP id
 a6-20020a1709029006b0290107394a0387mr3555919plp.35.1623213402067; 
 Tue, 08 Jun 2021 21:36:42 -0700 (PDT)
Received: from omlet.com (jfdmzpr06-ext.jf.intel.com. [134.134.137.75])
 by smtp.gmail.com with ESMTPSA id t5sm11991612pfe.116.2021.06.08.21.36.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Jun 2021 21:36:41 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 23:35:55 -0500
Message-Id: <20210609043613.102962-14-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609043613.102962-1-jason@jlekstrand.net>
References: <20210609043613.102962-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/31] drm/i915: Stop manually RCU banging in
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
index 0ba8506fb966f..61fe6d18d4068 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -2090,16 +2090,13 @@ int i915_gem_context_reset_stats_ioctl(struct drm_device *dev,
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
@@ -2116,10 +2113,8 @@ int i915_gem_context_reset_stats_ioctl(struct drm_device *dev,
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
index 38ff2fb897443..fed14ffc52437 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1850,19 +1850,13 @@ struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
 
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
