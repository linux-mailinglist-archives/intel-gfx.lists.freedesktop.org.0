Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C50FA3A1C27
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 19:45:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FF026EAB2;
	Wed,  9 Jun 2021 17:44:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D618F6EACF
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 17:44:47 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id v13so12959646ple.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Jun 2021 10:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QOIZ7V91fLIl8fTP/re+L3I3ujQ1EjA9kvT8GvYB6UA=;
 b=LSbWp9iSqsMqf1Xy5Pt5nIHopAGs9rby5zCMWNz8TjoWLc7iE9YjnQivpBqJIXk3g2
 IktnTHBqt7hFRSGPj5MzoqDHDYGvwuJSfBgieYbqlbFSWwo5/zkuFnL3u0T7vB8q/1qY
 PC8SeRZ+URgdw5O/edLx1Jb6Zqc+aSY5qFrFSfe7rUmVxcXxMF4BiPOEWk074zAmazry
 HzzmigSr6dy1FujvDPNqqiqvqZrD75wdyEvfqY5THGF4O6LyTq6xacSHlWNciD9FOMkp
 rdAnppgOdvAT3yxAwz/LRea99VMW4iHI8llVWgohrsKZjqdei2oKyWdTPXxcUw8mLp+5
 MTFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QOIZ7V91fLIl8fTP/re+L3I3ujQ1EjA9kvT8GvYB6UA=;
 b=DjAOpzzPJ4zZ1aupNgr5CUH5xqNII91uUEnZzRK8skIaMZnp+g3p+D93tEwD7P9ne+
 VEt8+iK/PxxuFede+yxQKS2iYfE/o4sLby2ESDP+0qyl7NVHPQsFdZDPj/mzCqTSaoEk
 aiqTLXK/e+EDr6lqI/6P8vz7PRi5rsBSNLhJcM162mRTdZ1xeus6fAkSzeJ1qtAzFy6b
 fmDaV+uQ4T0DaGgHrqvY7hixfp6XmxxppqL1qLn7wzc01o+k4YWGbqOUas9kymsE+KeY
 whb55eU/9Iz0P5VTrSLnjnExXhtecmS5svdQeGccy5r0bnDjOYrSTzcPzaxNZo4W+Q31
 IxNw==
X-Gm-Message-State: AOAM532ul1R8k7TZ6t604BNHyvuOqXxqiRIo7BaCk1WSmy6W2xNV+cy3
 AotUSLeGNBqy+REg+1g6Kmveaw==
X-Google-Smtp-Source: ABdhPJyycwiJt8lWUqRW4Q+WojrihpEALSuQGNEBx8OiJMp35nsnU5tHmpbt4tufThF0wGWSF+dUYg==
X-Received: by 2002:a17:90a:bb97:: with SMTP id
 v23mr694152pjr.148.1623260687453; 
 Wed, 09 Jun 2021 10:44:47 -0700 (PDT)
Received: from omlet.lan (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id b10sm208619pfi.122.2021.06.09.10.44.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 10:44:47 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  9 Jun 2021 12:44:01 -0500
Message-Id: <20210609174418.249585-15-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609174418.249585-1-jason@jlekstrand.net>
References: <20210609174418.249585-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/31] drm/i915/gem: Add a separate
 validate_priority helper
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

With the proto-context stuff added later in this series, we end up
having to duplicate set_priority.  This lets us avoid duplicating the
validation logic.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 42 +++++++++++++--------
 1 file changed, 27 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 61fe6d18d4068..f9a6eac78c0ae 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -169,6 +169,28 @@ lookup_user_engine(struct i915_gem_context *ctx,
 	return i915_gem_context_get_engine(ctx, idx);
 }
 
+static int validate_priority(struct drm_i915_private *i915,
+			     const struct drm_i915_gem_context_param *args)
+{
+	s64 priority = args->value;
+
+	if (args->size)
+		return -EINVAL;
+
+	if (!(i915->caps.scheduler & I915_SCHEDULER_CAP_PRIORITY))
+		return -ENODEV;
+
+	if (priority > I915_CONTEXT_MAX_USER_PRIORITY ||
+	    priority < I915_CONTEXT_MIN_USER_PRIORITY)
+		return -EINVAL;
+
+	if (priority > I915_CONTEXT_DEFAULT_PRIORITY &&
+	    !capable(CAP_SYS_NICE))
+		return -EPERM;
+
+	return 0;
+}
+
 static struct i915_address_space *
 context_get_vm_rcu(struct i915_gem_context *ctx)
 {
@@ -1744,23 +1766,13 @@ static void __apply_priority(struct intel_context *ce, void *arg)
 static int set_priority(struct i915_gem_context *ctx,
 			const struct drm_i915_gem_context_param *args)
 {
-	s64 priority = args->value;
-
-	if (args->size)
-		return -EINVAL;
-
-	if (!(ctx->i915->caps.scheduler & I915_SCHEDULER_CAP_PRIORITY))
-		return -ENODEV;
-
-	if (priority > I915_CONTEXT_MAX_USER_PRIORITY ||
-	    priority < I915_CONTEXT_MIN_USER_PRIORITY)
-		return -EINVAL;
+	int err;
 
-	if (priority > I915_CONTEXT_DEFAULT_PRIORITY &&
-	    !capable(CAP_SYS_NICE))
-		return -EPERM;
+	err = validate_priority(ctx->i915, args);
+	if (err)
+		return err;
 
-	ctx->sched.priority = priority;
+	ctx->sched.priority = args->value;
 	context_apply_all(ctx, __apply_priority, ctx);
 
 	return 0;
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
